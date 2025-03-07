## player.yaml
options-tech-level =
    .one = 1
    .two = 2
    .three = 3
    .four = 4
    .five = 5
    .six = 6
    .seven = 7

checkbox-unholy-alliance =
    .label = Unholy Alliance
    .description = Allows production of all faction specific units

checkbox-redeployable-mcvs =
    .label = Redeployable MCVs
    .description = Allow undeploying Construction Yards

## world.yaml
options-starting-units =
    .mcv-only = MCV Only
    .conyard-only = Construction Yard Only
    .light-support = Light Support
    .medium-support = Medium Support
    .heavy-support = Heavy Support

faction-atreides =
   .name = Atreides
   .description = House Atreides
    The noble Atreides, from the water world of Caladan,
    rely on their Ornithopters to ensure air superiority.
    They have allied themselves with the Fremen, the fearsome
    native warriors of Dune who can move undetected in battle.

    Special Units:
        - Grenadier
        - Fremen
        - Sonic Tank

    Defensive Structures:
        - Machine Gun Tower
        - Gun Turret
        - Missile Turret

    Light Vehicles:
        - MG Trike
        - Rocket Quad

    Combat Tank Speciality: Range
    Aircraft: Ornithopter
    Speical Ability: Ornithopter AirStrike

faction-harkonnen =
   .name = Harkonnen
   .description = House Harkonnen
    The evil Harkonnen will stop at nothing to gain control of the spice.
    They rely on brute force and atomic weapons to achieve their goals:
    wealth, and the destruction of House Atreides.

    Special Units:
        - Flamethrower
        - Devastator
        - Rocketeer

    Defensive Structures:
        - Flame Tower
        - Gun Turret
        - Missile Turret

    Light Vehicles:
        - MG Quad
        - Rocket Trike

    Combat Tank Speciality: Armor
    Aircraft: Phoenix
    Speical Ability: Death Hand Missile Strike

faction-ordos =
   .name = Ordos
   .description = House Ordos
    From the icy world of Sigma Draconis IV, the insidious Ordos are known for
    their wealth, greed, and treachery. They often turn to mercenaries, sabotage,
    and forbidden Ixian technologies to gain the upper hand.

    Special Units:
        - Stealth Raider Trike
        - Deviator
        - Suicide Bomber

    Defensive Structures:
        - Artillery Platform
        - Gun Turret
        - Missile Turret

    Light Vehicles:
        - MG Quad
        - Rocket Raider

    Combat Tank Speciality: Speed
    Aircraft: Swarmer
    Speical Ability: Vehicles can self-repair

faction-corrino =
   .name = Corrino
   .description = House Corrino

    Special Units:
        - Plasma Infantry
        - Quake Tank
        - Sardaukar

    Defensive Structures:
        - Flame Tower
        - Gun Turret
        - Missile Turret

    Light Vehicles:
        - MG Trike
        - Rocket Quad

    Combat Tank Speciality: Damage
    Aircraft: Phoenix
    Speical Ability: Rocket Strike

faction-mercenary =
   .name = Mercenaries
   .description = The Mercenaries

    Special Units:
        - Light Tank
        - Bomb Buggy
        - Sniper

    Defensive Structures:
        - Artillery Platform
        - Gun Turret
        - Missile Turret

    Light Vehicles:
        - MG Raider
        - Rocket Quad

    Combat Tank Speciality: Rate of Fire
    Aircraft: Swarmer
    Speical Ability: Can buy everything they can build

faction-smuggler =
   .name = Smugglers
   .description = The Smugglers

    Special Units:
        - Attack Dog
        - IFV
        - Saboteur

    Defensive Structures:
        - Anti-Personnel Mine
        - Anti-Tank Mine
        - Missile Turret

    Light Vehicles:
        - MG Trike
        - Rocket Raider

    Combat Tank Speciality: Build Time
    Aircraft: Swarmer
    Speical Ability: Has better Refinery, Silo, Carryall and Harvester

faction-fremen =
   .name = Fremen
   .description = The Fremen

    Special Units:
        - Freman
        - Stealth Tank
        - Fedaykin

    Defensive Structures:
        - Machine Gun Tower
        - Gun Turret
        - Missile Turret

    Light Vehicles:
        - MG Trike
        - Rocket Raider

    Combat Tank Speciality: Cost
    Aircraft: Ornithopter
    Speical Ability: Stealth Device

faction-ixian =
   .name = Ixians
   .description = The Ixians

    Special Units:
        - Mechanic
        - Jammer
        - Drone

    Defensive Structures:
        - Machine Gun Tower
        - Gun Turret
        - Missile Turret

    Light Vehicles:
        - MG Raider
        - Rocket Raider

    Combat Tank Speciality: Manual Repair
    Aircraft: Ornithopter
    Speical Ability: Has better Repair Pad

## aircraft.yaml
actor-carryall-reinforce-smuggler-name = Smuggler Carryall

actor-ornithopter-controllable =
   .description = 
    Aircraft armed with dual rocket launchers.
      Strong vs Tanks.
      Weak vs Infantry.
   .encyclopedia = 
    The Ornithopther is an armored aircraft typically armed with twin missile launchers, although House Atreides also uses variants that use 500lb bombs. While missile versions are better against armored targets, the bombs do good damage against infantry and buildings.
    
    They are vulnerable to missiles and can only be hit by anti-aircraft weapons.

actor-swarmer =
   .name = Swarmer
   .description = 
    Light plane armed with dual machine guns.
      Strong vs Infantry.
      Weak vs Tanks.
   .encyclopedia = 
    The Swarmer is a small, cheap and light aircraft armed with machine guns, dealing good damage against infantry.
    
    They are vulnerable to missiles and can only be hit by anti-aircraft weapons.

actor-phoenix =
   .name = Phoenix
   .description = 
    Light plane armed with dual napalm rockets.
      Strong vs Buildings.
      Weak vs Tanks.
   .encyclopedia = 
    The Phoenix is a fast and light aircraft armed napalm missiles, dealing good damage against buildings and infantry.
    
    They are vulnerable to missiles and can only be hit by anti-aircraft weapons.

## defaults.yaml
meta-mine-generic-name = Mine

## husks.yaml
actor-harvester-smuggler-husk-name = Smuggler Spice Harvester (Destroyed)
actor-combat-tank-a-husk-name = Atreides Combat Tank (Destroyed)
actor-combat-tank-h-husk-name = Harkonnen Combat Tank (Destroyed)
actor-combat-tank-o-husk-name = Ordos Combat Tank (Destroyed)
actor-combat-tank-f-husk-name = Freman Combat Tank (Destroyed)
actor-combat-tank-m-husk-name = Mercenary Combat Tank (Destroyed)
actor-combat-tank-s-husk-name = Smuggler Combat Tank (Destroyed)
actor-combat-tank-c-husk-name = Imperial Combat Tank (Destroyed)
actor-combat-tank-i-husk-name = Ixian Combat Tank (Destroyed)
actor-stealth-tank-husk-name = Stealth Tank (Destroyed)
actor-jammer-husk-name = Jammer (Destroyed)
actor-quake-tank-husk-name = Quake Tank (Destroyed)
actor-ifv-husk-name = Infantry Fighting Vehicle (Destroyed)

actor-swarmer-husk-name = Swarmer
actor-phoenix-husk-name = Phoenix
actor-rocketeer-husk-name = Rocketeer

## infantry.yaml
actor-dog =
   .name = Attack Dog
   .generic-name = Dog
   .description = 
    Anti-infantry scout unit.
    Can detect cloaked units.
      Strong vs Infantry.
      Weak vs Vehicles.
   .encyclopedia = 
    Attack Dogs are fast scout infantry units capable of dealing with lone infantry with ease.

    Attack Dogs are resistant to missiles and large-caliber guns, but are very vulnerable to high-explosives, fire, and small arms.

actor-engineer =
   .name = Engineer
   .description = 
    Infiltrates and captures enemy structures.
    Repairs friendly ones and damaged cliffs.
      Strong vs Buildings.
      Weak vs Everything.
   .encyclopedia = 
    Can be used to capture enemy buildings and repair friendly ones.

    Engineers are resistant to anti-tank weaponry but are very vulnerable to high-explosives, fire, and small arms.

actor-thumper =
   .name = Thumper Infantry
   .description = 
    Attracts nearby worms when deployed.
      Unarmed.
   .encyclopedia = 
    Deploys a loud hammering device that draws Sandworms to the area.
    
    Thumper Infantry are resistant to missiles and large-caliber guns, but are very vulnerable to high-explosives, fire, and small arms.

actor-grenadier =
   .name = Grenadier
   .description = 
    Infantry armed with grenades. 
      Strong vs Buildings and Infantry.
      Weak vs Vehicles.
   .encyclopedia = 
    An infantry artillery unit strong against buildings. They have a chance of exploding when killed, so should not be grouped together.

    Grenadiers are resistant to missiles and large-caliber guns, but are very vulnerable to high-explosives, fire, and small arms.

actor-nsfremen =
   .description = 
    Elite infantry unit with assault rifles and rockets.
      Strong vs Infantry and Vehicles.
      Weak vs Artillery.

actor-mechanic =
   .name = Mechanic
   .description = 
    Repairs nearby vehicles and defences.
    Can enter vehicle husks to repair them.
      Unarmed.
   .encyclopedia = 
    Support infantry capable of repairing nearby vehicles, defences or vehicle husks.

    Mechanics are resistant to missiles and large-caliber guns, but are very vulnerable to high-explosives, fire, and small arms.

actor-flamethrower =
   .name = Flamethrower
   .description = 
    Advanced anti-structure infantry.
      Strong vs Buildings and Infantry.
      Weak vs Vehicles.
   .encyclopedia = 
    Infantry unit armed with short range flame weapons that can deal high damage to buildings and infantry.

    Flamethrowers are resistant to missiles and large-caliber guns, but are very vulnerable to high-explosives, fire, and small arms.

actor-plasma-infantry =
   .name = Plasma Infantry
   .description = 
    Advanced infantry armed with a plasma ball launcher.
      Strong vs Tanks.
      Weak vs Artillery.
   .encyclopedia = 
    Infantry unit armed with portable plasma launchers that can deal good damage to armored units.
    
    Plasma Infantry are resistant to missiles and large-caliber guns, but are very vulnerable to high-explosives, fire, and small arms.

actor-fedaykin =
   .name = Fedaykin
   .description = 
    Elite infantry armed with a Sonic Weapon.
      Strong vs Infantry and Vehicles.
      Weak vs Artillery.
   .encyclopedia = 
    Elite Fremen infantry armed with portable sonic weapons. They are effective against infantry and lightly armored vehicles - but weaker against armored targets.

    The Fedaykin is resistant to missiles and large-caliber guns, but are very vulnerable to high-explosives, fire, and small arms.

actor-drone =
   .name = Drone
   .generic-name = Drone
   .description = 
    Robotic vehicle that can sabotage vehicles
    and kill infantry.
    Can detect cloaked units.
      Strong vs Infantry and Vehicles.
      Weak vs Aircraft.
   .encyclopedia = 
    Small remote controlled vehicle that can slowly damage a vehicle it infects. Repairing the infected vehicles with a Repair Pad removes the drone.

    Drones are vulnerable to most types of weapons, though high caliber guns are slightly less effective.

actor-rocketeer =
   .name = Rocketeer
   .description = 
    Flying infantry unit armed with dual machine guns.
      Strong vs Infantry.
      Weak vs Vehicles.
   .encyclopedia = 
    Elite infantry using rocket backpack to fly. They are armed with machine guns, making them effective against infantry.

    Rocketeers are vulnerable to missiles and can only be hit by anti-aircraft weapons.

actor-sardaukar =
   .name = Sardaukar
   .description = 
    Elite Corrino assault infantry.
      Strong vs Infantry and Vehicles.
      Weak vs Artillery.
   .encyclopedia = 
    Powerful heavy troopers equipped with a machine gun that is effective against infantry and a rocket launcher for targeting vehicles.

    The Sardaukar is resistant to missiles and large-caliber guns, but are very vulnerable to high-explosives, fire, and small arms.

actor-saboteur =
   .name = Suicide Bomber
   .description = 
    Sneaky infantry with explosives.
    Turns invisible for a limited time.
      Strong vs Buildings and Vehicles.
      Weak vs Infantry and Aircraft.
      Special Ability: Destroys buildings and vehicles.
   .encyclopedia = 
    A specialized military unit of House Ordos, capable of demolishing enemy buildings upon entry, but dying in the resulting explosion. It can activate stealth mode to become invisible.

    The Suicide Bomber is resistant to anti-tank weaponry, but are very vulnerable to high-explosives, fire, and small arms.

actor-sniper =
   .name = Sniper
   .description = 
    Stealth infantry armed with a long range rifle.
      Strong vs Infantry.
      Weak vs Vehicles.
      Special Ability: Invisibility.
   .encyclopedia = 
    A specialized military unit used by the Mercenaries, capable of dealing with enemy infantry from a great range with ease. They are stealthed unless firing.

    The Sniper is resistant to anti-tank weaponry, but are very vulnerable to high-explosives, fire, and small arms.

actor-hijacker =
   .name = Saboteur
   .description = 
    Steals enemy vehicles and disables enemy structures.
      Unarmed.
   .encyclopedia = 
    A specialized military unit used by the Smugglers, capable of stealing enemy vehicles, or enter enemy structures to disable them for a while. They are stealthed while stationary.
    
    The Saboteur is resistant to anti-tank weaponry, but are very vulnerable to high-explosives, fire, and small arms.

## misc.yaml
actor-upgrade-barracks =
   .name = Barracks Upgrade
   .description = 
    Unlocks additional infantry:
     - Trooper
     - Engineer
     - Thumper Infantry

    Required to unlock faction specific infantry:
     - Atreides: Grenadier
     - Fremen: Fremen
     - Ixians: Mechanic
     - Harkonnen: Flamethrower
     - Corrino: Plasma Infantry

actor-upgrade-outpost =
   .name = Outpost Upgrade
   .description = Unlocks the Fremen Stealth Device support weapon.

actor-upgrade-light =
   .name = Light Factory Upgrade
   .description = 
    Unlocks additional light unit:
     - Rocket Trike/Raider/Quad
    
    Required to unlock faction specific light unit:
     - Ordos: Stealth Rocket Raider
     - Mercenaries: Light Tank

actor-upgrade-heavy =
   .name = Heavy Factory Upgrade
   .description = 
    Unlocks additional construction options:
     - Repair Pad
     - IX Research Center
    
    Unlocks additional heavy units:
     - Siege Tank
     - MCV
     - Missile Tank

actor-deathhand =
   .name = Death Hand
   .encyclopedia = The Death Hand warhead carries atomic cluster munitions. It detonates above the target, inflicting great damage over a wide area.

## structures.yaml
notification-fedaykin-ready = Fedaykin ready.
notification-drones-ready = Drones ready.
notification-rocketeer-ready = Rocketeer ready.
notification-suicide-bomber-ready = Suicide Bomber ready.
notification-sniper-ready = Sniper ready.

actor-refinery-smuggler-name = Smuggler Spice Refinery

actor-outpost =
   .name = Outpost
   .description =
    Provides a radar map of the battlefield.
    Requires power to operate.
   .encyclopedia =
    Once enough power is available, the Radar Outpost activates, providing a radar map.

    The Radar Outpost is vulnerable to most weapons.
   .grantexternalconditionpower-stealth-name = Stealth Device
   .grantexternalconditionpower-stealth-description = 
    Makes a group of units or buildings invisible
    for 30 seconds.

actor-high-tech-factory =
   .name = High Tech Factory
   .description = 
    Produces aircraft.
    Unlocks advanced technology.
   .encyclopedia = 
    Produces airborne units, and is required to build Carryalls. House Atreides can upgrade this facility to build Ornithopters for air strikes in later missions.

    The High Tech Factory is vulnerable to most weapons.
   .airstrikepower-name = Air Strike
   .airstrikepower-description = Ornithopters bomb the target.

actor-repair-pad-ixian-name = Ixian Repair Pad

actor-research-centre =
   .name = IX Research Center
   .description = Unlocks advanced tanks.
   .encyclopedia =
    Provides technology upgrades for both structures and vehicles. This facility is required to develop advanced special weapons and prototypes.

    The IX Research Center is vulnerable to most weapons.
   .grantexternalconditionpower-rocketstrike-name = Rocket Strike
   .grantexternalconditionpower-rocketstrike-description = 
    Makes a group of rocket turrets able
    to attack anywhere for 10 seconds.

actor-palace =
   .name = Palace
   .description = Unlocks elite infantry and weapons.
   .encyclopedia =
    Serves as the command center once built, offering additional options and special weapons.

    Even with heavy armor, the Palace is vulnerable to most weapons.
   .nukepower-name = Death Hand
   .nukepower-description = Launches an atomic missile at a target location.
   .produceactorpower-fremen-name = Recruit Fremen
   .produceactorpower-fedaykin-name = Recruit Fedaykin
   .produceactorpower-drone-name = Build Drones
   .produceactorpower-rocketeer-name = Recruit Rocketeer
   .produceactorpower-suicidebomber-name = Recruit Suicide Bomber
   .produceactorpower-sniper-name = Recruit Sniper
   .produceactorpower-saboteur-name = Recruit Saboteur

actor-conyard-atreides-name = Atreides Construction Yard
actor-conyard-fremen-name = Fremen Construction Yard
actor-conyard-ixian-name = Ixian Construction Yard
actor-conyard-harkonnen-name = Harkonnen Construction Yard
actor-conyard-corrino-name = Imperial Construction Yard
actor-conyard-ordos-name = Ordos Construction Yard
actor-conyard-smuggler-name = Smuggler Construction Yard
actor-conyard-mercenary-name = Mercenary Construction Yard

actor-light-or-heavy =
   .name = Light or Heavy Factory
   .description = Light or Heavy Factory

actor-hi-tech-or-ix =
   .name = High Tech Factory or Ix Research Center
   .description = High Tech Factory or Ix Research Center

actor-palace-corrino =
   .name = Imperial Palace
   .description = Imperial Palace

## support.yaml
actor-silo-smuggler-name = Smuggler Silo

actor-mine-ap =
   .name = Anti-Personnel Mine
   .description = 
    Defensive structure. Explodes when an enemy unit moves over it.
      Strong vs Infantry.
      Weak vs Tanks.

      Invisible to the enemy.
   .encyclopedia = 
    Mines are defensive measures used by the Smugglers instead of towers. They are hidden from enemy's view and explode when an enemy unit moves over them, dealing damage.
    
    The Anti-Personnel Mine is good against Infantry.
    
    While normally invisible to the enemy, if detected mines can be easily destroyed by any weapon.

actor-mine-at =
   .name = Anti-Tank Mine
   .description = 
    Defensive structure. Explodes when an enemy unit moves over it.
      Strong vs Tank.
      Weak vs Infantry.
    
      Invisible to the enemy.
   .encyclopedia = 
    Mines are defensive measures used by the Smugglers instead of towers. They are hidden from enemy's view and explode when an enemy unit moves over them, dealing damage.
    
    The Anti-Tank Mine is good against Vehicles.
    
    While normally invisible to the enemy, if detected mines can be easily destroyed by any weapon.

actor-machine-gun-tower =
   .name = Machine Gun Tower
   .description = 
    Anti-infantry defensive structure.
      Strong vs Infantry.
      Weak vs Tanks.
   .encyclopedia = 
    The Machine Gun Tower is a medium range defensive structure used by House Atreides, the Fremen and the Ixians. It is effective against infantry and light vehicles. The Machine Gun Tower will fire on any enemy unit within range.
    
    The Machine Gun Tower is resistant to bullet and explosive weapons, but vulnerable to missiles and high-caliber guns.

actor-flame-tower =
   .name = Flame Tower
   .description = 
    Anti-infantry defensive structure.
      Strong vs Infantry.
      Weak vs Tanks.
   .encyclopedia = 
    The Flame Tower is a short range defensive structure used by House Harkonnen and House Corrino. It is effective against infantry and light vehicles. The Flame Tower will fire on any enemy unit within range.
    
    The Flame Tower is resistant to bullet and explosive weapons, but vulnerable to missiles and high-caliber guns.

actor-artillery-platform =
   .name = Artillery Platform
   .description = 
    Anti-infantry defensive structure.
      Strong vs Infantry.
      Weak vs Tanks.
   .encyclopedia = 
    Long range defensive structure used by House Ordos and thier mercenaries. It is effective against infantry and light vehicles. The Artillery Platform will fire on any enemy unit within range.
    
    The Artillery Platform is resistant to bullet and explosive weapons, but vulnerable to missiles and high-caliber guns.

actor-medium-gun-turret =
   .name = Gun Turret
   .description =
    Anti-vehicle defensive structure.
    Requires power to operate.
      Strong vs Tanks.
      Weak vs Infantry and Aircraft.
   .encyclopedia =
    A medium-range weapon that is effective against all types of vehicle, particularly heavily armored ones. It automatically fires upon any enemy unit within its range and requires power to operate.

    The Gun Turret is resistant to small arms and explosive weapons, but vulnerable to missiles and high-caliber guns.

actor-large-gun-turret =
   .name = Rocket Turret
   .description = 
    Advanced defensive structure.
    Requires power to operate.
      Strong vs Infantry and Aircraft.
      Weak vs Tanks.
   .encyclopedia =
    An enhanced defensive structure with a longer range and faster rate of fire than the Gun Turret. Its advanced targeting system requires power to operate.

    The Rocket Turret is resistant to firearms and explosive weapons, but vulnerable to missiles and high-caliber guns.

## vehicles.yaml
actor-trike-mg =
   .name = Machine Gun Trike
   .description = 
    Fast scout vehicle armed with machine guns.
      Strong vs Infantry.
      Weak vs Tanks.
   .encyclopedia = 
    The Trike chasis provies a balanced amount of armor and mobility to light vehicles. This variant used by House Atreides, House Corrino and the Smugglers is equipped with heavy machine guns, effective against infantry and lightly armored vehicles.
    
    Trikes are resistant to bullets and explosives, to a lesser degree. However, they are vulnerable to missiles and high-caliber guns.

actor-raider-mg =
   .name = Machine Gun Raider
   .description = 
    Fast scout vehicle armed with machine guns.
      Strong vs Infantry.
      Weak vs Tanks.
   .encyclopedia = 
    The Raider chasis provies light vehicles great mobility, although they are behind in armor department. This variant used by the Fremen, the Ixians and the Mercenaries is equipped with heavy machine guns, effective against infantry and lightly armored vehicles.
    
    Raiders are resistant to bullets and explosives, to a lesser degree. However, they are vulnerable to missiles and high-caliber guns.

actor-quad-mg =
   .name = Machine Gun Quad
   .description = 
    Fast scout vehicle armed with machine guns.
      Strong vs Infantry.
      Weak vs Tanks.
   .encyclopedia = 
    The Quad chasis provies light vehicles with more durability than the others, although they are slower. This variant used by House Harkonnen and House Ordos is equipped with heavy machine guns, effective against infantry and lightly armored vehicles.
    
    Quads are resistant to bullets and explosives, to a lesser degree. However, they are vulnerable to missiles and high-caliber guns.

actor-trike-rocket =
   .name = Rocket Trike
   .description = 
    Fast scout vehicle armed with rockets.
      Strong vs Vehicles.
      Weak vs Infantry.
   .encyclopedia = 
    The Trike chasis provies a balanced amount of armor and mobility to light vehicles. This variant used by House Harkonnen and the Fremen is equipped with armor-piercing rockets, effective against vehicles and aircraft.
    
    Trikes are resistant to bullets and explosives, to a lesser degree. However, they are vulnerable to missiles and high-caliber guns.

actor-raider-rocket =
   .name = Rocket Raider
   .description = 
    Fast scout vehicle armed with rockets.
      Strong vs Vehicles.
      Weak vs Infantry.
   .encyclopedia = 
    The Raider chasis provies light vehicles great mobility, although they are behind in armor department. This variant used by House Ordos, the Ixians and the Smugglers is equipped with armor-piercing rockets, effective against vehicles and aircraft.
    
    Raiders are resistant to bullets and explosives, to a lesser degree. However, they are vulnerable to missiles and high-caliber guns.

actor-quad-rocket =
   .name = Rocket Quad
   .description = 
    Fast scout vehicle armed with rockets.
      Strong vs Vehicles.
      Weak vs Infantry.
   .encyclopedia = 
    The Quad chasis provies light vehicles with more durability than the others, although they are slower. This variant used by House Atreides, House Corrino and the Mercenaries is equipped with armor-piercing rockets, effective against vehicles and aircraft.
    
    Quads are resistant to bullets and explosives, to a lesser degree. However, they are vulnerable to missiles and high-caliber guns.

actor-stealth-raider =
   .name = Stealth Rocket Raider
   .description = 
    Invisible scout vehicle armed with rockets.
      Strong vs Vehicles.
      Weak vs Infantry.
   .encyclopedia = 
    The Stealth Raider is an improved version of the Rocket Raider that is invisible to the enemy unless they are engaged in combat. This variant of the vehicle is only used by the House Ordos. Their weapons are the same with the non-Stealth variant, armor-piercing rockets that are effective against vehicles and aircraft.
    
    Stealth Raiders are resistant to bullets and explosives, to a lesser degree. However, they are vulnerable to missiles and high-caliber guns.

actor-light-tank =
   .name = Light Tank
   .description = 
    Light anti-tank vehicle.
     Strong vs Tanks
     Weak vs Infantry
   .encyclopedia = 
    The Light Tank is a stripped down version of the Combat Tanks used by the Mercenaries. While they are way faster, they lack armor but this also allows their production from Light Factories instead of the Heavy ones. They are armed with armor-piercing shells that are good versus armored targets.

    Light Tanks are very resistant to bullet and heavy-explosives, but vulnerable to missiles and high-caliber guns.

actor-harvester-smuggler-name = Smuggler Spice Harvester

actor-combat-tank-a =
   .name = Atreides Combat Tank
   .description = 
    Main Battle Tank.
      Strong vs Tanks.
      Weak vs Infantry.
    
    Has longer range than its counterparts.
   .encyclopedia = 
    Effective against most vehicles but less suited against lightly armored targets. The variant used by House Atreides has extra range compared to other variants.
    
    Atreides Combat Tanks are very resistant to bullet and heavy-explosives, but vulnerable to missiles and high-caliber guns.

actor-combat-tank-h =
   .name = Harkonnen Combat Tank
   .description = 
    Main Battle Tank.
      Strong vs Tanks.
      Weak vs Infantry.
    
    Has better armor than its counterparts.
   .encyclopedia = 
    Effective against most vehicles but less suited against lightly armored targets. The variant used by House Harkonnen has extra armor compared to other variants.
    
    Harkonnen Combat Tanks are very resistant to bullet and heavy-explosives, but vulnerable to missiles and high-caliber guns.

actor-combat-tank-o =
   .name = Ordos Combat Tank
   .description = 
    Main Battle Tank.
      Strong vs Tanks.
      Weak vs Infantry.
    
    Moves quicker than its counterparts.
   .encyclopedia = 
    Effective against most vehicles but less suited against lightly armored targets. The variant used by House Ordos moves faster compared to other variants.
    
    Ordos Combat Tanks are very resistant to bullet and heavy-explosives, but vulnerable to missiles and high-caliber guns.

actor-combat-tank-m =
   .name = Mercenary Combat Tank
   .description = 
    Main Battle Tank.
      Strong vs Tanks.
      Weak vs Infantry.
    
    Fires quicker than its counterparts.
   .encyclopedia = 
    Effective against most vehicles but less suited against lightly armored targets. The variant used by the Mercenaries fires faster compared to other variants.
    
    Mercenary Combat Tanks are very resistant to bullet and heavy-explosives, but vulnerable to missiles and high-caliber guns.

actor-combat-tank-s =
   .name = Smuggler Combat Tank
   .description = 
    Main Battle Tank.
      Strong vs Tanks.
      Weak vs Infantry.
    
    Can be built quicker than its counterparts.
   .encyclopedia = 
    Effective against most vehicles but less suited against lightly armored targets. The variant used by the Smugglers is built faster compared to other variants.
    
    Smuggler Combat Tanks are very resistant to bullet and heavy-explosives, but vulnerable to missiles and high-caliber guns.

actor-combat-tank-f =
   .name = Fremen Combat Tank
   .description = 
    Main Battle Tank.
      Strong vs Tanks.
      Weak vs Infantry.
    
    Costs less than its counterparts.
   .encyclopedia = 
    Effective against most vehicles but less suited against lightly armored targets. The variant used by the Fremen costs less compared to other variants.
    
    Fremen Combat Tanks are very resistant to bullet and heavy-explosives, but vulnerable to missiles and high-caliber guns.

actor-combat-tank-c =
   .name = Imperial Combat Tank
   .description = 
    Main Battle Tank.
      Strong vs Tanks.
      Weak vs Infantry.
    
    Damages more than its counterparts.
   .encyclopedia = 
    Effective against most vehicles but less suited against lightly armored targets. The variant used by House Corrino deals more damage compared to other variants.
    
    Imperial Combat Tanks are very resistant to bullet and heavy-explosives, but vulnerable to missiles and high-caliber guns.

actor-combat-tank-i =
   .name = Ixian Combat Tank
   .description = 
    Main Battle Tank.
      Strong vs Tanks.
      Weak vs Infantry.
    
    Can be repaired with repair tool like a structure.
   .encyclopedia = 
    Effective against most vehicles but less suited against lightly armored targets. The variant used by the Ixians can be repaired on field like a building.
    
    Ixian Combat Tanks are very resistant to bullet and heavy-explosives, but vulnerable to missiles and high-caliber guns.

actor-stealth-tank =
   .name = Stealth Tank
   .description = 
    Stealth light tank armed with dual missile launchers.
      Strong. vs Tanks.
      Weak. vs Infantry.
   .encyclopedia = 
    Light and fast vehicle armed with rockets and stealth generators. They are not visible to the enemy unless they are firing.

    The Stealth Tank is resistant to bullets and explosives, to a lesser degree. However, they are vulnerable to missiles and high-caliber guns.

actor-jammer =
   .name = Jammer
   .description = 
    Jams nearby enemy outposts
    and deflects incoming missiles.
    Can detect cloaked units.
    Can disable enemy vehicles.
   .encyclopedia = 
    Support vehicle armed with several countermeasure devices. They can disable enemy Radar Outposts in a great range, jam missile targeting systems and disable enemy vehicles.

    Resistant to bullets and high explosives, but vulnerable to missiles and high-caliber guns.

actor-devastator =
   .description = 
    Super Heavy Tank
      Strong vs Tanks
      Weak vs Artillery
   .name = Devastator
   .encyclopedia = 
    As the most powerful tank on Dune, the Devastator is slow but highly effective against most units. It fires dual plasma charges.

    Resistant to bullets and high explosives, but vulnerable to missiles and high-caliber guns.

actor-quake-tank =
   .description = 
    Deals seismic damage to nearby vehicles
    and structures
      Strong vs Vehicles, Buildings
      Weak vs Infantry
   .name = Quake Tank
   .encyclopedia = 
    Heavy vehicle capable of creating seismic waves to damage vehicles and buildings in a large area.

    Resistant to bullets and high explosives, but vulnerable to missiles and high-caliber guns.

actor-bomb-buggy =
   .name = Bomb Buggy
   .description = 
    Fast remote vehicle armed with high-explosives.
    Has very weak armor.
    
     Requires a Heavy Factory in order to move.
   .encyclopedia = 
    Light vehicle armed with explosives, dealing large damage to nearby units and buildings. They are remotely controlled from Heavy Factories, as such require one standing to move around.

    The Bomb Buggy is resistant to bullets and explosives, to a lesser degree. However, they are vulnerable to missiles and high-caliber guns.

actor-ifv =
   .name = Infantry Fighting Vehicle
   .description = 
    Multi-Purpose Vehicle.
    Without passenger:
      Strong vs Vehicles.
      Weak vs Infantry.
    Special Ability: Armament depends on passenger.
   .encyclopedia = 
    The Infantry Fighting Vehicle is a tank capable of changing its armament depending on the passenger it is carrying. Without any passenger, it has a canon, slightly larger than the ones from Combat Tanks.

    Resistant to bullets and high explosives, but vulnerable to missiles and high-caliber guns.
