extends Node

func command(input: String) -> String:
	var words = input.split(" ", false)
	if words.size() == 0:
		return " NO commands directed"
	
	#ALL A PATH OPTIONS
	var first_word = words[0].to_lower()
	match first_word:
		'a':
			if autoload.stage == 1:
				autoload.stage = 2
				return 'Unexpectedly you roll on over and start using the street instead of the sidewalk
				As you roll forward you start to look around this spooky night, wondering what to do next?
					
				A) You are on the street
				B) You get hit by a car
				C) You get sent FLYING '
				
			
			elif autoload.stage == 2:
				autoload.stage = 3
				return 'Hold on, these options seem to be wrong...
				Anyways the impact hurls you through the sky like a rocket
				The view is honestly pretty good
				but you realize, GRAVITY oh NOO :(
				Looking below you ponder your (real) options and choose to:
				
				A) Crash an unwilling particpants random house
				B) Cushion your body in a Stinky Garbage Dump
				    (The stench reaches to the heavens)
				C) Who needs gravity? '
				

			elif autoload.stage == 3:
				autoload.stage = 4
				return "As gravity takes hold you choose to drift towards the perfectly,
				fine looking pastel grey house, with a cozy and clean looking design that you can't help but notice..
				ESPECIALLY SINCE YOUR BARRELING INTO IT'S DELICATELY CRAFTED SHINGLES.
				WOOD SPLINTERS AND AMAZINGLY YOU BOUNCE OFF A COUCH AND LAND ON THE FLOOR, UNHARMED.
				You feel a bit shaken, and your leaves sink a bit in relief as you take a moment to relax
				cut short by the abrupt opening of the bedroom door, 
				followed by the entrance of the angriest man you have seen in your life.
				YOU:
				
				A) Stay still
				B) Hide (Under the bed)
				C) Attack (The Guy)
			
					"
			
			elif autoload.stage == 4:
				autoload.stage = 5
				return 'He IS very angry, are you sure? He surveys his room, 
				the exquisite walls shattered by your pumpkin girth
				and fails to notice use, as he faints out of shock. 
				So now what?
				
				A) Stay still
				B) ESCAPE
				C) PREEEMPTIVE STRIKE'
			
			elif autoload.stage == 5:
				autoload.stage = 6
				return 'Hours pass, his snoring drones into your nonexistent ears as you stay ever so
				carefully still. Your mind stops thinking, you do not even notice when he picks your
				body up and carries you over to the compost bin.
				
				What can you do now?
				
				A) STAY STILL
				B) NOT STAY STILL'
				
			elif autoload.stage == 6:
				
				autoload.stage = -1
				return 'The stench of the compost bin is a familar friend to you.
				You have grown to enjoy the cushion and warmth the rotting food
				provides as you drift from this existance, withering away.
				Through it all you absoultly refuse to move, not even a bit.
				I hope you enjoy this.
				
				ENDING 2: Nothingness
				
				A) Restart?'
			
			elif autoload.stage  == -1:
				autoload.stage = 0
				get_tree().reload_current_scene()
				return 'You will be sent back to the beginning'
				
				
				
					
			else:
				return 'Wrong Command, try again?'
	
		#ALL B PATH OPTIONS
		'b':
			if autoload.stage == 0:
				autoload.stage = 1
				return "You start to move your little body forwards, but realize you have to make an important decision.
				Do you choose to:
							
				A) Use the street
				B) Roll on the sidewalk"
				
			elif autoload.stage == 1:
				return "You walk on the sidewalk"
				
			elif autoload.stage == 2:
				autoload.stage = 3
				return "Hold on, these options seem to be wrong...
				Anyways the impact hurls you through the sky like a rocket
				The view is honestly pretty good
				but you realize, GRAVITY oh NOO :(
				Looking below you ponder your (real) options and choose to:
				
				A) Crash an unwilling particpants random house
				B) Cushion your body in a Stinky Garbage Dump
				    (The stench reaches to the heavens)
				C) Who needs gravity?"
				
			elif autoload.stage == 6:
				autoload.stage = -1
				return 'At the last second you muster up the courage to act.
				Unfortunately for you that mainly comes down to bouncing up and
				down a lot (but you re really good at it)
				Unable to open doors due to your lack of hands, you fade away
				You took action too late, and paid the price.
				
				ENDING 3 ACHIEVED: Too little, too late
				
				A) Restart?'
				
				
			else:
				return 'Wrong Command, try again?'
				
			
		
		# ALL C PATH OPTIONS
		'c':
			if autoload.stage == 2:
				autoload.stage = 3
				return "Hold on, these options seem to be wrong...
				Anyways the impact hurls you through the sky like a rocket
				The view is honestly pretty good
				but you realize, GRAVITY oh NOO :(
				Looking below you ponder your (real) options and choose to:
				
				A) Crash an unwilling particpants random house
				B) Cushion your body in a Stinky Garbage Dump
				    (The stench reaches to the heavens)
				C) Who needs gravity?"
			elif autoload.stage == 3:
				autoload.stage == -1
				return 'Duh, YOU ARE A PUMPKIN YOU DO NOT FLY
				Anyways you start flying through the sky
				
				Mainly up though? At this point gravity has rejected you,
				and with no way to stop, eventually you freeze eternally in space.
				The last words you would say would be "AHHHHH I am so COLD!!!",
				Thankfully you are a pumpkin thou
				
				ENDING 1 ACHIEVED: "Eventually, Kars stopped thinking..." '
				
			else:
				return "Wrong Command, try again?"

			print(words)
				
		'help':
			return help()
		_:
			return "WRONG command, one more time? "

		
func help() -> String:
	return "You can use: go [direction], help"
