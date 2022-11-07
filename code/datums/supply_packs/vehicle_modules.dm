//*******************************************************************************
//Vehicle Modules
//*******************************************************************************/

//Guns and main attachments

/datum/supply_packs/ltb_cannon
	name = "LTB Cannon"
	contains = list(
					/obj/item/hardpoint/primary/cannon)
	cost = RO_PRICE_PRICY
	containertype = /obj/structure/closet/crate/ammo
	containername = "LTB Cannon crate"
	group = "Vehicle Modules and Ammo"
	buyable = FALSE //Canon is very powerful so it's only spawnable at Admin's discretion!

/datum/supply_packs/ltaaap_minigun
	name = "LTAA-AP Minigun"
	contains = list(
					/obj/item/hardpoint/primary/minigun)
	cost = RO_PRICE_PRICY
	containertype = /obj/structure/closet/crate/ammo
	containername = "LTAA Minigun crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/ace_autocannon
	name = "AC3-E Autocannon"
	contains = list(
					/obj/item/hardpoint/primary/autocannon)
	cost = RO_PRICE_PRICY
	containertype = /obj/structure/closet/crate/ammo
	containername = "AC3-E Autocannon crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/drgn_flamer
	name = "DRG-N Offensive Flamer Unit"
	contains = list(
					/obj/item/hardpoint/primary/flamer)
	cost = RO_PRICE_PRICY
	containertype = /obj/structure/closet/crate/ammo
	containername = "DRG-N Offensive Flamer Unit crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/dualcannon
	name = "PARS-159 Boyars Dualcannon"
	contains = list(
					/obj/item/hardpoint/primary/dualcannon)
	cost = RO_PRICE_PRICY
	containertype = /obj/structure/closet/crate/ammo
	containername = "PARS-159 Boyars Dualcannon crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/glauncher
	name = "M92T Grenade Launcher"
	contains = list(
					/obj/item/hardpoint/secondary/grenade_launcher)
	cost = RO_PRICE_NORMAL_PRICY
	containertype = /obj/structure/closet/crate/ammo
	containername = "M92T Grenade Launcher crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/slauncher
	name = "M34A2-A Multipurpose Turret"
	contains = list(
					/obj/item/hardpoint/holder/tank_turret)
	cost = RO_PRICE_NORMAL_PRICY
	containertype = /obj/structure/closet/crate/ammo
	containername = "M34A2-A Multipurpose Turret"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/towlauncher
	name = "TOW Launcher"
	contains = list(
					/obj/item/hardpoint/secondary/towlauncher)
	cost = RO_PRICE_NORMAL_PRICY
	containertype = /obj/structure/closet/crate/ammo
	containername = "TOW Launcher crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/m56_cupola
	name = "M56 Cupola"
	contains = list(
					/obj/item/hardpoint/secondary/m56cupola)
	cost = RO_PRICE_NORMAL_PRICY
	containertype = /obj/structure/closet/crate/ammo
	containername = "M56 Cupola crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/tank_flamer_ammo
	name = "LZR-N Flamer Unit"
	contains = list(
					/obj/item/hardpoint/secondary/small_flamer)
	cost = RO_PRICE_NORMAL_PRICY
	containertype = /obj/structure/closet/crate/ammo
	containername = "LZR-N Flamer Unit"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/frontalcannon
	name = "Bleihagel RE-RE700 Frontal Cannon"
	contains = list(
					/obj/item/hardpoint/secondary/frontalcannon)
	cost = RO_PRICE_NORMAL_PRICY
	containertype = /obj/structure/closet/crate/ammo
	containername = "Bleihagel RE-RE700 Frontal Cannon crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/flarelauncher
	name = "MM-87F Flare Launcher"
	contains = list(
					/obj/item/hardpoint/support/flare_launcher)
	cost = RO_PRICE_NORMAL_PRICY
	containertype = /obj/structure/closet/crate/ammo
	containername = "M-87F Flare Launcher crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/tank_artillery
	name = "Tank Artillery Module"
	contains = list(
					/obj/item/hardpoint/support/artillery_module)
	cost = RO_PRICE_NORMAL_PRICY
	containertype = /obj/structure/closet/crate/supply
	containername = "Artillery Module crate"
	group = "Vehicle Modules and Ammo"

//Support attachments

/datum/supply_packs/tank_iwsa
	name = "Integrated Weapons Sensor Array"
	contains = list(
					/obj/item/hardpoint/support/weapons_sensor)
	cost = RO_PRICE_NORMAL
	containertype = /obj/structure/closet/crate/supply
	containername = "XXXXXXXXXX crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/tank_overdrive_enhancer
	name = "Tank Overdrive Enhancer"
	contains = list(
					/obj/item/hardpoint/support/overdrive_enhancer)
	cost = RO_PRICE_NORMAL
	containertype = /obj/structure/closet/crate/supply
	containername = "Overdrive Enhancer crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/apc_wheels
	name = "APC Wheels"
	contains = list(
					/obj/item/hardpoint/locomotion/apc_wheels)
	cost = RO_PRICE_NORMAL
	containertype = /obj/structure/closet/crate/supply
	containername = "APC Wheels crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/tank_treads
	name = "Tank Treads"
	contains = list(
					/obj/item/hardpoint/locomotion/treads)
	cost = RO_PRICE_NORMAL
	containertype = /obj/structure/closet/crate/supply
	containername = "Treads crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/tank_reinforced_treads
	name = "Tank Reinforced Treads"
	contains = list(
					/obj/item/hardpoint/locomotion/treads/robust)
	cost = RO_PRICE_NORMAL
	containertype = /obj/structure/closet/crate/supply
	containername = "Reinforced Treads crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/tank_armor_ballistic
	name = "Tank Ballistic Armor"
	contains = list(
					/obj/item/hardpoint/armor/ballistic)
	cost = RO_PRICE_NORMAL
	containertype = /obj/structure/closet/crate/supply
	containername = "Ballistic Armor crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/tank_armor_caustic
	name = "Tank Caustic Armor"
	contains = list(
					/obj/item/hardpoint/armor/caustic)
	cost = RO_PRICE_NORMAL
	containertype = /obj/structure/closet/crate/supply
	containername = "Caustic Armor crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/tank_armor_concussive
	name = "Tank Concussive Armor"
	contains = list(
					/obj/item/hardpoint/armor/concussive)
	cost = RO_PRICE_NORMAL
	containertype = /obj/structure/closet/crate/supply
	containername = "Concussive Armor crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/tank_armor_paladin
	name = "Tank Paladin Armor"
	contains = list(
					/obj/item/hardpoint/armor/paladin)
	cost = RO_PRICE_NORMAL
	containertype = /obj/structure/closet/crate/supply
	containername = "Paladin Armor crate"
	group = "Vehicle Modules and Ammo"

/datum/supply_packs/tank_armor_snowplow
	name = "Tank Snowplow"
	contains = list(
					/obj/item/hardpoint/armor/snowplow)
	cost = RO_PRICE_NORMAL
	containertype = /obj/structure/closet/crate/supply
	containername = "Snowplow crate"
	group = "Vehicle Modules and Ammo"