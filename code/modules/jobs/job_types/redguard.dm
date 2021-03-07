/datum/job/redguard //do NOT use this for anything, it's just to store faction datums
	department_flag = REDGUARD
	selection_color = "#b30000"
	exp_type = EXP_TYPE_WASTELAND
	access = list(ACCESS_REDGUARD)
	minimal_access = list(ACCESS_REDGUARD)
	forbids = "Being obsolete to the cause, disregarding orders from higher ups, usage of drugs such as jet without permission. Desertion."
	enforces = "Listening to higher ranks, building of socialism in wasteland, industrialization, innovation, production, automatization, reduction of raiders and other negative forces, be it by conversion, execution or gulag. Army standart haircuts are recommended."

/datum/outfit/job/redguard
	name = "redguarddatums"
	jobtype = /datum/job/redguard
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	uniform = /obj/item/clothing/under/f13/ps5m
	head = /obj/item/clothing/head/helmet/sov_light
	suit = /obj/item/clothing/suit/armor/vest/sov_light
	backpack = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/kitchen/knife/combat=1)
	id = null
	box = null
	ears = null

/datum/outfit/job/redguard/issledovatel/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_TECHNOPHREAK, TRAIT_GENERIC)

/datum/outfit/job/redguard/issledovatel/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_MEDICALEXPERT, TRAIT_GENERIC)

/*
Red Guard Stavka
/obj/item/clothing/suit/security/officer/russian
/obj/item/clothing/under/rank/security/navyblue/russian
*/

/*
Red Guard Komandarm
/obj/item/clothing/under/soviet
*/

/*
Red Guard Political Commissar
/obj/item/clothing/under/f13/chinese
*/

/*
Red Guard OGPU
/obj/item/melee/classic_baton
*/

/*
Kombrig
*/

/datum/job/redguard/f13kombrig
	title = "Red Guard Kombrig"
	flag = F13KOMBRIG
	faction = "Red Guard"
	total_positions = 1
	spawn_positions = 1
	supervisors = "No one. Unless politburo from siberia calls."
	description = "The leader and central political figure in the Red Guard. Ensure growth, security, agitation & overall development of group."
	selection_color = "#ff1a1a"
	exp_requirements = 1000
	outfit = /datum/outfit/job/redguard/f13kombrig
	exp_type = EXP_TYPE_WASTELAND

/datum/outfit/job/redguard/f13kombrig
	name = "Kombrig"
	jobtype = /datum/job/redguard/f13kombrig
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	uniform = /obj/item/clothing/under/f13/ps5m
	suit = /obj/item/clothing/suit/armor/vest/sov_heavy
	glasses = /obj/item/clothing/glasses/meson/engine
	head = /obj/item/clothing/head/f13/soviet_commander
	mask = /obj/item/clothing/mask/gas/syndicate
	suit_store = /obj/item/gun/ballistic/shotgun/automatic/hunting/trail
	backpack = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(
		/obj/item/ammo_box/tube/m44=3, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/radio/mech=1, \
		/obj/item/kitchen/knife/combat=1)
	id = /obj/item/card/id/dogtag/rgkombrig
	box = null
	ears = null

/datum/job/redguard/kombrig/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")
	H.add_quirk("Iron Fist")

/*
Polkovnik
*/

/datum/job/redguard/f13polkovnik
	title = "Red Guard Polkovnik"
	flag = F13POLKOVNIK
	faction = "Red Guard"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Kombrig."
	description = "Help Kombrig. If there is no Kombrig you are in charge. Slay a deathclaw or local raider idiot and help issledovatels with field tasks."
	selection_color = "#ff1a1a"
	exp_requirements = 600
	outfit = /datum/outfit/job/redguard/f13polkovnik
	exp_type = EXP_TYPE_WASTELAND

/datum/outfit/job/redguard/f13polkovnik
	name = "Polkovnik"
	jobtype = /datum/job/redguard/f13polkovnik
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/color/black
	uniform = /obj/item/clothing/under/f13/ps5m
	suit = /obj/item/clothing/suit/armor/vest/sov_heavy
	glasses = /obj/item/clothing/glasses/meson/engine
	head = /obj/item/clothing/head/helmet/sov_heavy
	mask = /obj/item/clothing/mask/gas
	suit_store = /obj/item/gun/ballistic/automatic/assault_rifle/infiltrator
	backpack = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/radio/mech=1, \
		/obj/item/ammo_box/magazine/m556/rifle=2)
	id = /obj/item/card/id/dogtag/rgpolkovnik
	box = null
	ears = null

/datum/job/redguard/f13polkovnik/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")
	H.add_quirk("Iron Fist")

/*
GRU
*/

/datum/job/redguard/f13gru
	title = "Red Guard GRU"
	flag = F13GRU
	faction = "Red Guard"
	total_positions = 3
	spawn_positions = 3
	supervisors = "Kombrig, Polkovnik."
	description = "Really well trained operative. You posess T93 rifle, with two extended magazines so rifle may function as LMG substitute."
	selection_color = "#ff7a5e"
	exp_requirements = 400
	outfit = /datum/outfit/job/redguard/f13gru
	exp_type = EXP_TYPE_WASTELAND

/datum/outfit/job/redguard/f13gru
	name = "GRU"
	jobtype = /datum/job/redguard/f13gru
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/rifleman
	uniform = /obj/item/clothing/under/f13/ps5m
	suit = /obj/item/clothing/suit/armor/vest/sov_heavy
	head = /obj/item/clothing/head/helmet/sov_heavy
	suit_store = /obj/item/gun/ballistic/automatic/type93
	backpack = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/radio/mech=1, \
		/obj/item/ammo_box/magazine/m556/rifle/extended=2)
	id = /obj/item/card/id/dogtag/rggru
	box = null
	ears = null

/datum/job/redguard/gru/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")
	H.add_quirk("Lifegiver")

/*
Issledovatel (scientist/researcher)
*/

/datum/job/redguard/f13issledovatel
	title = "Red Guard Issledovatel"
	flag = F13SCIENTIST
	faction = "Red Guard"
	total_positions = 2
	spawn_positions = 2
	supervisors = "Kombrig, Polkovnik."
	description = "Become a red version of Mary Sue. Research, check out that yank tech recovered from ruin, make chemicals, weaponize science and plants."
	selection_color = "#ff7a5e"
	exp_requirements = 340
	outfit = /datum/outfit/job/redguard/f13issledovatel
	exp_type = EXP_TYPE_WASTELAND

/datum/job/redguard/issledovatel/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Chem Whiz")

/datum/outfit/job/redguard/f13issledovatel
	name = "Issledovatel"
	jobtype = /datum/job/redguard/f13issledovatel
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/color/latex
	uniform = /obj/item/clothing/under/f13/ps5m
	suit = /obj/item/clothing/suit/armor/vest/sov_light
	head = /obj/item/clothing/head/f13/soviet_nco
	suit_store = /obj/item/gun/ballistic/automatic/pistol/type17
	backpack = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/radio/mech=1, \
		/obj/item/ammo_box/magazine/m9mm=2)
	id = /obj/item/card/id/dogtag/rgscientist
	box = null
	ears = null

/*
Strelok
*/

/datum/job/redguard/f13strelok
	title = "Red Guard Strelok"
	flag = F13STRELOK
	faction = "Red Guard"
	total_positions = 8
	spawn_positions = 8
	supervisors = "Kombrig, Polkovnik."
	description = "Basic Red Guard soldier."
	selection_color = "#ff7a5e"
	exp_requirements = 340
	outfit = /datum/outfit/job/redguard/f13strelok
	exp_type = EXP_TYPE_WASTELAND

/datum/outfit/job/redguard/f13strelok
	name = "Strelok"
	jobtype = /datum/job/redguard/f13strelok
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/fingerless
	uniform = /obj/item/clothing/under/f13/ps5m
	suit = /obj/item/clothing/suit/armor/vest/sov_light
	head = /obj/item/clothing/head/helmet/sov_light
	suit_store = /obj/item/gun/ballistic/automatic/smg10mm
	backpack = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/radio/mech=1, \
		/obj/item/ammo_box/magazine/m10mm_auto=2)
	id = /obj/item/card/id/dogtag/rgstrelok
	box = null
	ears = null