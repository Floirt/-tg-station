
// Humans
/mob/living/carbon/human/UnarmedAttack(var/atom/A)
	A.attack_hand(src)
/atom/proc/attack_hand(mob/user as mob)
	return

/mob/living/carbon/human/RestrainedClickOn(var/atom/A)
	A.hand_h(src)
/atom/proc/hand_h(mob/user as mob)			//human (hand) - restrained
	return


// Animals & All Unspecified
/mob/living/UnarmedAttack(var/atom/A)
	A.attack_animal(src)
/atom/proc/attack_animal(mob/user as mob)
	return
/mob/living/RestrainedClickOn(var/atom/A)
	A.hand_a(src)
/atom/proc/hand_an(mob/user as mob)
	return


// Monkeys
/mob/living/carbon/monkey/UnarmedAttack(var/atom/A)
	A.attack_paw(src)
/atom/proc/attack_paw(mob/user as mob)
	return
/mob/living/carbon/monkey/RestrainedClickOn(var/atom/A)
	A.hand_p(src)
/atom/proc/hand_p(mob/user as mob)			//monkey (paw) - restrained
	return


//Aliens - Defaults to same as monkey in most places
/mob/living/carbon/alien/humanoid/UnarmedAttack(var/atom/A)
	A.attack_alien(src)
/atom/proc/attack_alien(mob/user as mob)
	attack_paw(user)
	return
/mob/living/carbon/alien/humanoid/RestrainedClickOn(var/atom/A)
	A.hand_al(src)
/atom/proc/hand_al(mob/user as mob)			//alien - restrained
	hand_p(user)
	return

// Babby aliens
/mob/living/carbon/alien/larva/UnarmedAttack(var/atom/A)
	A.attack_larva(src)
/atom/proc/attack_larva(mob/user as mob)
	return


// Slimes - defaults to same as animals
/mob/living/carbon/slime/UnarmedAttack(var/atom/A)
	A.attack_slime(src)
/atom/proc/attack_slime(mob/user as mob)
	attack_animal(src)
	return
/mob/living/carbon/slime/RestrainedClickOn(var/atom/A)
	A.hand_s(src)
/atom/proc/hand_s(mob/user as mob)			//slime - restrained
	hand_an(src)
	return

/mob/new_player/ClickOn()
	return
