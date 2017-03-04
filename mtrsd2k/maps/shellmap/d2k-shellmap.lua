AttackGroupSize = {8}
AttackDelay = { DateTime.Seconds(2), DateTime.Seconds(4) }

IdlingUnits =
{
	Atreides = { },
	Harkonnen = { },
	Ordos = { },
	Emperor = { }
}

HoldProduction =
{
	Atreides = false,
	Harkonnen = false,
	Ordos = false,
	Emperor = false
}

IsAttacking =
{
	Atreides = false,
	Harkonnen = false,
	Ordos = false,
	Emperor = false
}

AtreidesInfantryTypes = { "light_inf", "light_inf", "light_inf", "trooper", "trooper", "grenadier", "grenadier" }
AtreidesVehicleTypes = { "trike", "trike", "quad" }
AtreidesTankTypes = { "combat_tank_a", "combat_tank_a", "combat_tank_a", "siege_tank" }
AtreidesStarportTypes = { "trike.starport", "quad.starport", "siege_tank.starport", "missile_tank.starport", "combat_tank_a.starport" }

HarkonnenInfantryTypes = { "light_inf", "light_inf", "light_inf", "trooper", "trooper", "flamethrower", "flamethrower" }
HarkonnenVehicleTypes = { "trike", "quad", "quad" }
HarkonnenTankTypes = { "combat_tank_h", "combat_tank_h", "combat_tank_h", "siege_tank" }
HarkonnenStarportTypes = { "trike.starport", "quad.starport", "siege_tank.starport", "missile_tank.starport", "combat_tank_h.starport" }

OrdosInfantryTypes = { "light_inf", "light_inf", "light_inf", "trooper", "trooper" }
OrdosVehicleTypes = { "raider", "raider", "quad", "stealth_raider" }
OrdosTankTypes = { "combat_tank_o", "combat_tank_o", "combat_tank_o", "siege_tank" }
OrdosStarportTypes = { "trike.starport", "quad.starport", "siege_tank.starport", "missile_tank.starport", "combat_tank_o.starport" }

EmperorInfantryTypes = { "light_inf", "trooper", "plasma_infantry", "plasma_infantry", "sardaukar", "sardaukar", "sardaukar" }
EmperorVehicleTypes = { "trike", "quad", "quad" }
EmperorTankTypes = { "combat_tank_c", "combat_tank_c", "combat_tank_c", "siege_tank" }
EmperorStarportTypes = { "trike.starport", "quad.starport", "siege_tank.starport", "missile_tank.starport", "combat_tank_c.starport" }

Upgrades = { "upgrade.barracks", "upgrade.light", "upgrade.conyard", "upgrade.heavy", "upgrade.hightech" }

Harvester = { "harvester" }

AtrCarryHarvWaypoints = { atr_harvcarry_2.Location, atr_harvcarry_1.Location }
HarCarryHarvWaypoints = { har_harvcarry_2.Location, har_harvcarry_1.Location }
OrdCarryHarvWaypoints = { ord_harvcarry_2.Location, ord_harvcarry_1.Location }
EmpCarryHarvWaypoints = { emp_harvcarry_2.Location, emp_harvcarry_1.Location }
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

SendNewHarv = function(house, waypoint, count)
	local harvs = house.GetActorsByType("harvester")
	if #harvs < count then
		local harvesters = Reinforcements.ReinforceWithTransport(house, "carryall.reinforce", Harvester, waypoint, { waypoint[1] })[2]
		Utils.Do(harvesters, function(harvester)
			Trigger.OnAddedToWorld(harvester, function()
				InitializeHarvester(harvester)
				SendNewHarv(house, waypoint, count)
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

	local t = (ticks + 45) % (360 * speed) * (math.pi / 180) / speed;
	Camera.Position = viewportOrigin + WVec.New(19200 * math.sin(t), 28800 * math.cos(t), 0)
end

WorldLoaded = function()
	atreides = Player.GetPlayer("Atreides")
	harkonnen = Player.GetPlayer("Harkonnen")
	ordos = Player.GetPlayer("Ordos")
	emperor = Player.GetPlayer("Emperor")
	smugglers = Player.GetPlayer("Smugglers")

	viewportOrigin = Camera.Position

	Utils.Do(Utils.Take(4, Upgrades), function(upgrade)
		atr_cyard.Produce(upgrade)
		har_cyard.Produce(upgrade)
		ord_cyard.Produce(upgrade)
		emp_cyard.Produce(upgrade)
	end)
	atr_cyard.Produce(Upgrades[5])

	Trigger.AfterDelay(DateTime.Seconds(45), function()
		SendNewHarv(atreides, AtrCarryHarvWaypoints, 3)
		SendNewHarv(harkonnen, HarCarryHarvWaypoints, 3)
		SendNewHarv(ordos, OrdCarryHarvWaypoints, 3)
		SendNewHarv(emperor, EmpCarryHarvWaypoints, 3)
		SendNewHarv(smugglers, SmgCarryHarvWaypoints, 1)
	end)

	Trigger.AfterDelay(DateTime.Seconds(1), function()
		Produce(atreides, AtreidesInfantryTypes)
		Produce(atreides, AtreidesVehicleTypes)
		Produce(atreides, AtreidesTankTypes)
		Produce(atreides, AtreidesStarportTypes)

		Produce(harkonnen, HarkonnenInfantryTypes)
		Produce(harkonnen, HarkonnenVehicleTypes)
		Produce(harkonnen, HarkonnenTankTypes)
		Produce(harkonnen, HarkonnenStarportTypes)

		Produce(ordos, OrdosInfantryTypes)
		Produce(ordos, OrdosVehicleTypes)
		Produce(ordos, OrdosTankTypes)
		Produce(ordos, OrdosStarportTypes)

		Produce(emperor, EmperorInfantryTypes)
		Produce(emperor, EmperorVehicleTypes)
		Produce(emperor, EmperorTankTypes)
		Produce(emperor, EmperorStarportTypes)
	end)
end