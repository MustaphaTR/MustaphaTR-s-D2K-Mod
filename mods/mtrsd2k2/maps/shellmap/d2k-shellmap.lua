--[[
   Copyright 2007-2021 The OpenRA Developers (see AUTHORS)
   This file is part of OpenRA, which is free software. It is made
   available to you under the terms of the GNU General Public License
   as published by the Free Software Foundation, either version 3 of
   the License, or (at your option) any later version. For more
   information, see COPYING.
]]
AttackGroupSize = {8}
AttackDelay = { DateTime.Seconds(2), DateTime.Seconds(4) }

IdlingUnits =
{
	Atreides = { },
	Fremen = { },
	Harkonnen = { },
	Ordos = { },
	Mercenaries = { },
	Corrino = { }
}

HoldProduction =
{
	Atreides = false,
	Fremen = false,
	Harkonnen = false,
	Ordos = false,
	Mercenaries = false,
	Corrino = false
}

IsAttacking =
{
	Atreides = false,
	Fremen = false,
	Harkonnen = false,
	Ordos = false,
	Mercenaries = false,
	Corrino = false
}

AtreidesInfantryTypes = { "light_inf", "light_inf", "light_inf", "trooper", "trooper", "grenadier", "grenadier" }
AtreidesVehicleTypes = { "trike.mg", "trike.mg", "trike.rocket" }
AtreidesTankTypes = { "combat_tank_a", "combat_tank_a", "combat_tank_a", "siege_tank" }
AtreidesStarportTypes = { "trike.mg.starport", "quad.rocket.starport", "siege_tank.starport", "missile_tank.starport", "combat_tank_a.starport" }
AtreidesAirTypes = { "ornithopter.controllable" }

FremenInfantryTypes = { "light_inf", "trooper", "nsfremen", "nsfremen", "nsfremen", "nsfremen", "nsfremen", "nsfremen" }

HarkonnenInfantryTypes = { "light_inf", "light_inf", "light_inf", "trooper", "trooper", "flamethrower" }
HarkonnenVehicleTypes = { "quad.mg", "quad.rocket", "quad.rocket" }
HarkonnenTankTypes = { "combat_tank_h", "combat_tank_h", "combat_tank_h", "siege_tank" }
HarkonnenStarportTypes = { "trike.mg.starport", "quad.rocket.starport", "siege_tank.starport", "missile_tank.starport", "combat_tank_h.starport" }
HarkonnenAirTypes = { "phoenix" }

OrdosInfantryTypes = { "light_inf", "light_inf", "light_inf", "trooper", "trooper" }
OrdosVehicleTypes = { "quad.mg", "quad.rocket", "raider.rocket", "stealth_raider" }
OrdosTankTypes = { "combat_tank_o", "combat_tank_o", "combat_tank_o", "siege_tank" }
OrdosAirTypes = { "swarmer" }

MercenaryStarportTypes = { "raider.mg.starport", "quad.rocket.starport", "light_tank.starport", "siege_tank.starport", "missile_tank.starport", "combat_tank_m.starport", "light_inf.starport", "trooper.starport" }

CorrinoInfantryTypes = { "light_inf", "trooper", "plasma_infantry", "sardaukar", "sardaukar", "sardaukar" }
CorrinoVehicleTypes = { "trike.mg", "quad.rocket", "quad.rocket" }
CorrinoTankTypes = { "combat_tank_c", "combat_tank_c", "combat_tank_c", "siege_tank" }
CorrinoStarportTypes = { "trike.mg.starport", "quad.rocket.starport", "siege_tank.starport", "missile_tank.starport", "combat_tank_c.starport" }
CorrinoAirTypes = { "phoenix" }

Upgrades = { "upgrade.barracks", "upgrade.light", "upgrade.conyard", "upgrade.heavy", "upgrade.hightech" }

AtrCarryHarvWaypoints = { atr_harvcarry_2.Location, atr_harvcarry_1.Location }
HarCarryHarvWaypoints = { har_harvcarry_2.Location, har_harvcarry_1.Location }
OrdCarryHarvWaypoints = { ord_harvcarry_2.Location, ord_harvcarry_1.Location }
CorCarryHarvWaypoints = { cor_harvcarry_2.Location, cor_harvcarry_1.Location }
SmgCarryHarvWaypoints = { smg_harvcarry_2.Location, smg_harvcarry_1.Location }

IdleHunt = function(unit) if not unit.IsDead then Trigger.OnIdle(unit, unit.Hunt) end end

Produce = function(house, units)
    if HoldProduction[house.Name] then
        Trigger.AfterDelay(DateTime.Minutes(1), function() Produce(house, units) end)
        return
    end

    local delay = Utils.RandomInteger(AttackDelay[1], AttackDelay[2])
    local toBuild = { Utils.Random(units) }
    house.Build(toBuild, function(unit)
		local unitCount = 1
		if IdlingUnits[house.Name] then
			unitCount = 1 + #IdlingUnits[house.Name]
		end
		IdlingUnits[house.Name][unitCount] = unit[1]
        Trigger.AfterDelay(delay, function() Produce(house, units) end)

        if unitCount >= (AttackGroupSize[1] * 2) then
            SendAttack(house)
        end
    end)
end

SetupAttackGroup = function(house)
	local units = { }

	for i = 0, AttackGroupSize[1], 1 do
		if #IdlingUnits[house.Name] == 0 then
			return units
		end

		local number = Utils.RandomInteger(1, #IdlingUnits[house.Name])

		if IdlingUnits[house.Name][number] and not IdlingUnits[house.Name][number].IsDead then
			units[i] = IdlingUnits[house.Name][number]
			table.remove(IdlingUnits[house.Name], number)
		end
	end

	return units
end

SendAttack = function(house)
	if IsAttacking[house.Name] then
		return
	end
	IsAttacking[house.Name] = true
	HoldProduction[house.Name] = true

	local units = SetupAttackGroup(house)
	Utils.Do(units, function(unit)
		IdleHunt(unit)
	end)

	Trigger.OnAllRemovedFromWorld(units, function()
		IsAttacking[house.Name] = false
		HoldProduction[house.Name] = false
	end)
end

SendNewHarv = function(house, waypoint, harvType, carryType, count)
	local harvs = house.GetActorsByType(harvType)
	if #harvs < count then
		local harvesters = Reinforcements.ReinforceWithTransport(house, carryType, { harvType }, waypoint, { waypoint[1] })[2]
		Utils.Do(harvesters, function(harvester)
			Trigger.OnAddedToWorld(harvester, function()
				InitializeHarvester(harvester)
				SendNewHarv(house, waypoint, harvType, carryType, count)
			end)
		end)
	end
end

InitializeHarvester = function(harvester)
	harvester.FindResources()
end

ticks = 0
speed = 5

Tick = function()
	ticks = ticks + 1

	if ticks > 1 or not Map.IsPausedShellmap then
		local t = (ticks + 45) % (360 * speed) * (math.pi / 180) / speed;
		Camera.Position = viewportOrigin + WVec.New(19200 * math.sin(t), 28800 * math.cos(t), 0)
	end
end

WorldLoaded = function()
	atreides = Player.GetPlayer("Atreides")
	fremen = Player.GetPlayer("Fremen")
	harkonnen = Player.GetPlayer("Harkonnen")
	ordos = Player.GetPlayer("Ordos")
	mercenary = Player.GetPlayer("Mercenaries")
	corrino = Player.GetPlayer("Corrino")
	smugglers = Player.GetPlayer("Smugglers")

	viewportOrigin = Camera.Position

	Utils.Do(Utils.Take(4, Upgrades), function(upgrade)
		atr_cyard.Produce(upgrade)
		har_cyard.Produce(upgrade)
		ord_cyard.Produce(upgrade)
		cor_cyard.Produce(upgrade)
	end)
	atr_cyard.Produce(Upgrades[5])
	fre_sietch.Produce(Upgrades[1])

	Trigger.AfterDelay(DateTime.Seconds(45), function()
		SendNewHarv(atreides, AtrCarryHarvWaypoints, "harvester", "carryall.reinforce", 3)
		SendNewHarv(harkonnen, HarCarryHarvWaypoints, "harvester", "carryall.reinforce", 3)
		SendNewHarv(ordos, OrdCarryHarvWaypoints, "harvester", "carryall.reinforce", 3)
		SendNewHarv(corrino, CorCarryHarvWaypoints, "harvester", "carryall.reinforce", 3)
		SendNewHarv(smugglers, SmgCarryHarvWaypoints, "harvester.smuggler", "carryall.reinforce.smuggler", 1)
	end)

	Trigger.AfterDelay(DateTime.Seconds(1), function()
		Produce(atreides, AtreidesInfantryTypes)
		Produce(atreides, AtreidesVehicleTypes)
		Produce(atreides, AtreidesTankTypes)
		Produce(atreides, AtreidesStarportTypes)
		Produce(atreides, AtreidesAirTypes)

		Produce(fremen, FremenInfantryTypes)

		Produce(harkonnen, HarkonnenInfantryTypes)
		Produce(harkonnen, HarkonnenVehicleTypes)
		Produce(harkonnen, HarkonnenTankTypes)
		Produce(harkonnen, HarkonnenStarportTypes)
		Produce(harkonnen, HarkonnenAirTypes)

		Produce(ordos, OrdosInfantryTypes)
		Produce(ordos, OrdosVehicleTypes)
		Produce(ordos, OrdosTankTypes)
		Produce(ordos, OrdosAirTypes)

		Produce(mercenary, MercenaryStarportTypes)

		Produce(corrino, CorrinoInfantryTypes)
		Produce(corrino, CorrinoVehicleTypes)
		Produce(corrino, CorrinoTankTypes)
		Produce(corrino, CorrinoStarportTypes)
		Produce(corrino, CorrinoAirTypes)
	end)
end
