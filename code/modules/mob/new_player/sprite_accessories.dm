/*

	Hello and welcome to sprite_accessories: For sprite accessories, such as hair,
	facial hair, and possibly tattoos and stuff somewhere along the line. This file is
	intended to be friendly for people with little to no actual coding experience.
	The process of adding in new hairstyles has been made pain-free and easy to do.
	Enjoy! - Doohl


	Notice: This all gets automatically compiled in a list in dna.dm, so you do not
	have to define any UI values for sprite accessories manually for hair and facial
	hair. Just add in new hair types and the game will naturally adapt.

	!!WARNING!!: changing existing hair information can be VERY hazardous to savefiles,
	to the point where you may completely corrupt a server's savefiles. Please refrain
	from doing this unless you absolutely know what you are doing, and have defined a
	conversion in savefile.dm
*/
/proc/init_sprite_accessory_subtypes(prototype, list/L, list/male, list/female)
	if(!istype(L))		L = list()
	if(!istype(male))	male = list()
	if(!istype(female))	female = list()

	for(var/path in typesof(prototype))
		if(path == prototype)	continue
		var/datum/sprite_accessory/D = new path()

		if(D.icon_state)	L[D.name] = D
		else				L += D.name

		switch(D.gender)
			if(MALE)	male += D.name
			if(FEMALE)	female += D.name
			else
				male += D.name
				female += D.name
	return L

/datum/sprite_accessory
	var/icon			//the icon file the accessory is located in
	var/icon_state		//the icon_state of the accessory
	var/name			//the preview name of the accessory
	var/gender = NEUTER	//Determines if the accessory will be skipped or included in random hair generations

//////////////////////
// Hair Definitions //
//////////////////////
/datum/sprite_accessory/hair
	icon = 'icons/mob/human_face.dmi'	  // default icon for all hairs

	short
		name = "Short Hair"	  // try to capatilize the names please~
		icon_state = "hair_a" // you do not need to define _s or _l sub-states, game automatically does this for you

	cut
		name = "Cut Hair"
		icon_state = "hair_c"

	long
		name = "Shoulder-length Hair"
		icon_state = "hair_b"

	longer
		name = "Long Hair"
		icon_state = "hair_vlong"

	longest
		name = "Very Long Hair"
		icon_state = "hair_longest"

	longfringe
		name = "Long Fringe"
		icon_state = "hair_longfringe"

	longestalt
		name = "Longer Fringe"
		icon_state = "hair_vlongfringe"

	halfbang
		name = "Half-banged Hair"
		icon_state = "hair_halfbang"

	halfbangalt
		name = "Half-banged Hair Alt"
		icon_state = "hair_halfbang_alt"

	ponytail1
		name = "Ponytail 1"
		icon_state = "hair_ponytail"

	ponytail2
		name = "Ponytail 2"
		icon_state = "hair_pa"

	ponytail3
		name = "Ponytail 3"
		icon_state = "hair_ponytail3"

	parted
		name = "Parted"
		icon_state = "hair_parted"

	pompadour
		name = "Pompadour"
		icon_state = "hair_pompadour"
		gender = MALE

	quiff
		name = "Quiff"
		icon_state = "hair_quiff"
		gender = MALE

	bedhead
		name = "Bedhead"
		icon_state = "hair_bedhead"

	bedhead2
		name = "Bedhead 2"
		icon_state = "hair_bedheadv2"

	bedhead3
		name = "Bedhead 3"
		icon_state = "hair_bedheadv3"

	beehive
		name = "Beehive"
		icon_state = "hair_beehive"
		gender = FEMALE

	bobcurl
		name = "Bobcurl"
		icon_state = "hair_bobcurl"
		gender = FEMALE

	bob
		name = "Bob"
		icon_state = "hair_bobcut"
		gender = FEMALE

	bowl
		name = "Bowl"
		icon_state = "hair_bowlcut"
		gender = MALE

	buzz
		name = "Buzzcut"
		icon_state = "hair_buzzcut"
		gender = MALE

	crew
		name = "Crewcut"
		icon_state = "hair_crewcut"
		gender = MALE

	combover
		name = "Combover"
		icon_state = "hair_combover"
		gender = MALE

	devillock
		name = "Devil Lock"
		icon_state = "hair_devilock"

	dreadlocks
		name = "Dreadlocks"
		icon_state = "hair_dreads"
		gender = MALE // okay.jpg

	curls
		name = "Curls"
		icon_state = "hair_curls"

	afro
		name = "Afro"
		icon_state = "hair_afro"

	afro2
		name = "Afro 2"
		icon_state = "hair_afro2"

	afro_large
		name = "Big Afro"
		icon_state = "hair_bigafro"
		gender = MALE

	sargeant
		name = "Flat Top"
		icon_state = "hair_sargeant"
		gender = MALE

	emo
		name = "Emo"
		icon_state = "hair_emo"

	fag
		name = "Flow Hair"
		icon_state = "hair_f"

	feather
		name = "Feather"
		icon_state = "hair_feather"

	hitop
		name = "Hitop"
		icon_state = "hair_hitop"

	mohawk
		name = "Mohawk"
		icon_state = "hair_d"

	jensen
		name = "Adam Jensen Hair"
		icon_state = "hair_jensen"

	gelled
		name = "Gelled Back"
		icon_state = "hair_gelled"

	spiky
		name = "Spiky"
		icon_state = "hair_spikey"

	kusangi
		name = "Kusanagi Hair"
		icon_state = "hair_kusanagi"

	kagami
		name = "Pigtails"
		icon_state = "hair_kagami"

	himecut
		name = "Hime Cut"
		icon_state = "hair_himecut"

	braid
		name = "Floorlength Braid"
		icon_state = "hair_braid"

	odango
		name = "Odango"
		icon_state = "hair_odango"

	ombre
		name = "Ombre"
		icon_state = "hair_ombre"

	updo
		name = "Updo"
		icon_state = "hair_updo"

	skinhead
		name = "Skinhead"
		icon_state = "hair_skinhead"

	longbangs
		name = "Long Bangs"
		icon_state = "hair_lbangs"
		gender = FEMALE

	balding
		name = "Balding Hair"
		icon_state = "hair_e"

	bald
		name = "Bald"
		icon_state = null

/////////////////////////////
// Facial Hair Definitions //
/////////////////////////////
/datum/sprite_accessory/facial_hair
	icon = 'icons/mob/human_face.dmi'
	gender = NEUTER

	shaved
		name = "Shaved"
		icon_state = null

	watson
		name = "Watson Mustache"
		icon_state = "facial_watson"

	hogan
		name = "Hulk Hogan Mustache"
		icon_state = "facial_hogan" //-Neek

	vandyke
		name = "Van Dyke Mustache"
		icon_state = "facial_vandyke"

	chaplin
		name = "Square Mustache"
		icon_state = "facial_chaplin"

	selleck
		name = "Selleck Mustache"
		icon_state = "facial_selleck"

	neckbeard
		name = "Neckbeard"
		icon_state = "facial_neckbeard"

	fullbeard
		name = "Full Beard"
		icon_state = "facial_fullbeard"

	longbeard
		name = "Long Beard"
		icon_state = "facial_longbeard"

	vlongbeard
		name = "Very Long Beard"
		icon_state = "facial_wise"

	elvis
		name = "Elvis Sideburns"
		icon_state = "facial_elvis"

	abe
		name = "Abraham Lincoln Beard"
		icon_state = "facial_abe"

	chinstrap
		name = "Chinstrap"
		icon_state = "facial_chin"

	hip
		name = "Hipster Beard"
		icon_state = "facial_hip"

	gt
		name = "Goatee"
		icon_state = "facial_gt"

	jensen
		name = "Adam Jensen Beard"
		icon_state = "facial_jensen"

	dwarf
		name = "Dwarf Beard"
		icon_state = "facial_dwarf"

	fiveoclock
		name = "Five o Clock Shadow"
		icon_state = "facial_fiveoclock"

	fu
		name = "Fu Manchu"
		icon_state = "facial_fumanchu"

///////////////////////////
// Underwear Definitions //
///////////////////////////
/datum/sprite_accessory/underwear
	icon = 'icons/mob/underwear.dmi'
	gender = NEUTER

	nude
		name = "Nude"
		icon_state = null


	male_white
		name = "Mens White"
		icon_state = "male_white"

	male_grey
		name = "Mens Grey"
		icon_state = "male_grey"

	male_green
		name = "Mens Green"
		icon_state = "male_green"

	male_blue
		name = "Mens Blue"
		icon_state = "male_blue"

	male_black
		name = "Mens Black"
		icon_state = "male_black"

	male_mankini
		name = "Mankini"
		icon_state = "male_mankini"

	male_hearts
		name = "Mens Hearts Boxer"
		icon_state = "male_hearts"

	male_blackalt
		name = "Mens Black Boxer"
		icon_state = "male_blackalt"

	male_greyalt
		name = "Mens Grey Boxer"
		icon_state = "male_greyalt"

	male_stripe
		name = "Mens Striped Boxer"
		icon_state = "male_stripe"

	male_kinky
		name = "Mens Kinky"
		icon_state = "male_kinky"

	male_red
		name = "Mens Red"
		icon_state = "male_red"

	female_red
		name = "Ladies Red"
		icon_state = "female_red"

	female_white
		name = "Ladies White"
		icon_state = "female_white"

	female_yellow
		name = "Ladies Yellow"
		icon_state = "female_yellow"

	female_blue
		name = "Ladies Blue"
		icon_state = "female_blue"

	female_black
		name = "Ladies Black"
		icon_state = "female_black"

	female_thong
		name = "Ladies Thong"
		icon_state = "female_thong"

	female_babydoll
		name = "Babydoll"
		icon_state = "female_babydoll"

	female_babyblue
		name = "Ladies Baby-Blue"
		icon_state = "female_babyblue"

	female_green
		name = "Ladies Green"
		icon_state = "female_green"

	female_pink
		name = "Ladies Pink"
		icon_state = "female_pink"

	female_kinky
		name = "Ladies Kinky"
		icon_state = "female_kinky"

	female_tankini
		name = "Tankini"
		icon_state = "female_tankini"