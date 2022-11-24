/obj/structure/machinery/chem_storage
	name = "Chemical Storage System"
	desc = "Storage system for a large supply of chemicals, which slowly recharges."
	icon = 'icons/obj/structures/machinery/science_machines_64x32.dmi'
	icon_state = "chemstorage"
	active_power_usage = 1000
	layer = BELOW_OBJ_LAYER
	density = 1
	bound_x = 32

	var/network = "Ground"
	var/recharge_cooldown = 15
	var/recharge_rate = 10
	var/energy = 50
	var/max_energy = 50

	//Storage for basic chemicals for Wey-Chem Plus
	var/datum/reagents/basic_chemicals

	//Storage for all other chemicals the players can put in
	var/datum/reagents/custom_chemicals

/obj/structure/machinery/chem_storage/medbay
	name = "Chemical Storage System (Medbay)"
	network = "Medbay"

/obj/structure/machinery/chem_storage/research
	name = "Chemical Storage System (Research)"
	network = "Research"

/obj/structure/machinery/chem_storage/misc
	name = "Chemical Storage System (Misc)"
	network = "Misc"

/obj/structure/machinery/chem_storage/Initialize()
	. = ..()
	basic_chemicals = new/datum/reagents(100000)
	basic_chemicals.my_atom = src

	custom_chemicals = new/datum/reagents(100000)
	custom_chemicals.my_atom = src

	populate_product_list()

	chemical_data.add_chem_storage(src)
	start_processing()

/obj/structure/machinery/chem_storage/proc/populate_product_list(var/scale = 1)
	//Stock the machinery with basic chemicals for Wey-Chem Plus
	basic_chemicals.add_reagent("bicaridine", 300 * scale, null, TRUE)
	basic_chemicals.add_reagent("anti_toxin", 300 * scale, null, TRUE)
	basic_chemicals.add_reagent("dexalin", 300 * scale, null, TRUE)
	basic_chemicals.add_reagent("inaprovaline", 300 * scale, null, TRUE)
	basic_chemicals.add_reagent("kelotane", 300 * scale, null, TRUE)
	basic_chemicals.add_reagent("oxycodone", 300 * scale, null, TRUE)
	basic_chemicals.add_reagent("peridaxon", 300 * scale, null, TRUE)
	basic_chemicals.add_reagent("tramadol", 300 * scale, null, TRUE)

//We check how many bottles of a given chemical can we fill so we can re-stock the attached vendors appropriately
/obj/structure/machinery/chem_storage/proc/how_many_bottles_can_be_filled(var/obj/item/reagent_container/glass/bottle/bottle)
	if(!ispath(bottle))
		return 0
	if(!initial(bottle.initial_chem))
		return 0
	return round((basic_chemicals.get_reagent_amount(initial(bottle.initial_chem)) + custom_chemicals.get_reagent_amount(initial(bottle.initial_chem))) / initial(bottle.volume))

//We remove the chems for vending a given bottle
//If we don't have the chem amount, it's an edge case that would be hard to police (semaphoring chem vendors and dispensers), so we ignore it
/obj/structure/machinery/chem_storage/proc/remove_chems_for_bottle(var/obj/item/reagent_container/glass/bottle/bottle)
	if(!ispath(bottle))
		return
	if(!initial(bottle.initial_chem))
		return
	var/to_remove = initial(bottle.volume)
	var/amount = basic_chemicals.get_reagent_amount(initial(bottle.initial_chem))
	if (amount >= to_remove)
		amount = to_remove
	if(amount > 0)
		basic_chemicals.remove_reagent(initial(bottle.initial_chem), amount, TRUE)
		to_remove -= amount
	if(to_remove > 0)
		//We still need to remove some chem from the custom chems since we didn't have enough basic chems
		custom_chemicals.remove_reagent(initial(bottle.initial_chem), amount, TRUE)
		//If this isn't enough, we don't care, semaphoring this wouldn't be worth it

/obj/structure/machinery/chem_storage/get_examine_text(mob/user)
	. = ..()
	if(in_range(user, src) || istype(user, /mob/dead/observer))
		var/charge = round((energy / max_energy) * 100)
		. += SPAN_NOTICE("The charge meter reads [charge]%")

/obj/structure/machinery/chem_storage/process()
	if(recharge_cooldown <= 0)
		recharge()
		recharge_cooldown = initial(recharge_cooldown)
	else
		recharge_cooldown--

/obj/structure/machinery/chem_storage/proc/recharge()
	if(inoperable())
		return
	if(energy >= max_energy)
		return
	energy = min(energy + recharge_rate, max_energy)
	use_power(1500) // This thing uses up alot of power (this is still low as shit for creating reagents from thin air)
