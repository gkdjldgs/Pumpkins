extends Node

var stage = autoload.stage
func command(input: String):
	var words = input.split(" ", false)
	if words.size() == 0:
		return " NO commands directed"
	
	
	var first_word = words[0].to_lower()
	var second_word = ""
	if words.size() > 1:
		second_word = words[1].to_lower()
	match first_word:
			'a':
				return ment(first_word)
				print(words)
			
			'b':
				return bent(first_word)
				print(words)
			
			'c':
				return ment(first_word)
				print(words)
				
			'help':
				return help()
			_:
				return "WRONG command, one more time? "


func ment(first_word: String):
	if stage == 1:
		
		return 'Unexpectedly you roll on over and start using the street instead of the sidewalk
		As you roll forward you start to look around this spooky night, wondering what to do next?
			
		A) You are on the street
		B) You get hit by a car
		C) You get sent FLYING '
		autoload.stage = 2
	
	elif stage == 2:
		
		return 'Hold on, these options seem to be wrong...
		Anyways the impact hurls you through the sky like a rocket
		The view is honestly pretty good
		but you realize, GRAVITY oh NOO :(
		Looking below you ponder your (real) options and choose to:
		
		A) Crash an unwilling particpants random house
		B) Cushion your body in a Stinky Garbage Dump
		    (The stench reaches to the heavens)
		C) Who needs gravity? '
		autoload.stage = 3

	elif stage == 3:
		stage = 4
		return "As gravity takes hold you choose to drift towards the perfectly, fine looking pastel grey house, with a cozy and clean looking design that you can't help but notice..
		ESPECIALLY SINCE YOUR BARRELING INTO IT'S DELICATELY CRAFTED SHINGLES.
		WOOD SPLINTERS AND AMAZINGLY YOU BOUNCE OFF A COUCH AND LAND ON THE FLOOR, UNHARMED.
		You feel a bit shaken, and your leaves sink a bit in relief as you take a moment to relax
		cut short by the abrupt opening of the bedroom door, 
		followed by the entrance of the angriest man you have seen in your life.
		YOU:
			"
		stage = 4
func bent(first_word: String):
		
	if stage == 0:
		return "You start to move your little body forwards, but realize you have to make an important decision.
		Do you choose to:
					
		A) Use the street
		B) Roll on the sidewalk"
		autoload.stage = 1
	elif stage == 1:
		return "You walk on the sidewalk"
	elif stage == 3:
		return "Hold on, these options seem to be wrong...
		Anyways the impact hurls you through the sky like a rocket
		The view is honestly pretty good
		but you realize, GRAVITY oh NOO :(
		Looking below you ponder your (real) options and choose to:
		
		A) Crash an unwilling particpants random house
		B) Cushion your body in a Stinky Garbage Dump
		    (The stench reaches to the heavens)
		C) Who needs gravity?"
		

		
func help() -> String:
	return "You can use: go [direction], help"
