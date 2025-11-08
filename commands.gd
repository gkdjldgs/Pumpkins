extends Node

func command(input: String) -> String:
	var words = input.split(" ", false)
	if words.size() == 0:
		return " NO commands directed"
	
	#ALL A PATH OPTIONS
	var first_word = words[0].to_lower()
	match first_word:
		'a':
			if autoload.stage == 0:
				autoload.stage = 0.1
				#A
				return "	You eyes drift open, as if rising from a slumber. 
	The sounds of Halloween fill your ears as you come to the realization that compared to everyone else, you are, a pumpkin?!?
	With nothing better to do you:
	
	A) Roll forward aimlessly"


			elif autoload.stage == 0.1:
				autoload.stage = 1
				#AA
				return "You start to move your little body forwards, 
				but realize you have to make an important decision.
				Do you choose to:
							
				A) Use the street
				B) Roll on the sidewalk(WIP)"



			elif autoload.stage == 1:
				autoload.stage = 2
				#AAA
				return 'Unexpectedly you roll on over and start 
				using the street instead of the sidewalk
				As you roll forward you start to look around 
				this spooky night, wondering what to do next?
					
				A) You are on the street
				B) You get hit by a car
				C) You get sent FLYING '
				

			
			elif autoload.stage == 2:
				autoload.stage = 3
				#AAAA
				return 'Hold on, these options seem to be wrong...
				Anyways the impact hurls you through the sky like a rocket
				The view is honestly pretty good
				but you realize, GRAVITY oh NOO :(
				Looking below you ponder your (real) options and choose to:
				
				A) Crash an unwilling particpants random house
				B) Cushion your body in a Stinky Garbage Dump
				    (The stench pierces the heavens)(WIP)
				C) Who needs gravity? '
				

			elif autoload.stage == 3:
				autoload.stage = 4
				#AAAA(ABC)
				return "As gravity takes hold you choose to drift towards a perfectly,
				fine looking house, that you can't help but notice..
				WOOD SPLINTERS AND AMAZINGLY YOU BOUNCE OFF A COUCH AND LAND ON THE FLOOR, UNHARMED.
				You feel a bit shaken, and your leaves sink a bit in relief as you take a moment to relax
				Followed by the entrance of the angriest man you have seen through the door.
				(CAUSE HIS HOUSE IS BROKEN)
				YOU:
				
				A) Stay still
				B) Sneak past
				C) Attack"
			

			elif autoload.stage == 4.1:
				autoload.stage = 4.2
				#AAAA(ABC)BA
				return "/SIGH/
				You sieze the moment and start your escape attempt
				With a burst of speed you roll under his legs and speed towards the room's exit! His scream of anger reverbarates 
				through the house, you have to do something!!
					
				Looking around the house and at your options you choose to:
					
				A) Jump through a window
				B) Fire place"
				
			elif autoload.stage == 4.2:
				autoload.stage = 4.3
				#AAAA(ABC)BAA
				return 'You bonk your head on the hard glass window
				"Ouch I think you bruised a little from that"
				Having broken something you decide to try again:
				
				A) Oyu thru eade
				B) Floro owwie zowwie
				C) squawkers wo
				
				Whaaats s goiing non? Your brain damage has affected your choices?'
				
			elif autoload.stage == 4:
				autoload.stage = 5
				#AAAA(ABC)A
				return 'He IS very angry, are you sure? He surveys his room, 
				the exquisite walls shattered by your pumpkin girth
				and fails to notice use, as he faints out of shock. 
				Oh.
				So now what?
				
				A) Stay still
				B) ESCAPE
				C) PREEEMPTIVE STRIKE'
				
			elif autoload.stage == 4.3:
				autoload.stage = -1
				#AAAA(ABC)BAA(ABC)
				return 'Your head hurts..
				You see him angrerly walk towards you..
				He aims a kick towards you, his intent clear as day..
				You unconsiously roll to the side, he launches a kick
				He trips, and lies cold on the floor. NICE
				You roll down the stairs, and go to sleep.
				
				ENDING ACHIEVED: Peace and Quiet
				
				A) Restart? 
				B) View endings'
				
				
			elif autoload.stage == 5:
				autoload.stage = 6
				#AAAA(ABC)AA
				return 'Hours pass, his snoring drones into your nonexistent ears as you stay ever so
				carefully still. Your mind stops thinking, you do not even notice when he picks your
				body up and carries you over to the compost bin.
				
				What can you do now?
				
				A) STAY STILL
				B) NOT STAY STILL'
				
			elif autoload.stage == 6:
				autoload.stage = -1
				#AAAA(ABC)AAA
				return 'The stench of the compost bin is a familar friend to you.
				You have grown to enjoy the cushion and warmth the rotting food
				provides as you drift from this existence, withering away.
				Through it all you absolutely refuse to move, not even a bit.
				I hope you enjoy this.
				
				YOU DIED
				
				A) Restart?
				B) View endings'
				
			elif autoload.stage  == -1:
				autoload.stage = 0
				get_tree().reload_current_scene()
				return 'You will be sent back to the beginning'
				
				
				
					
			else:
				return 'Wrong Command, try again?'
	
		#ALL B PATH OPTIONS
		'b':
				
				
			if autoload.stage == 2:
				autoload.stage = 3
				#AAAA(ABC)
				return "Hold on, these options seem to be wrong...
				Anyways the impact hurls you through the sky like a rocket
				The view is honestly pretty good
				but you realize, GRAVITY oh NOO :(
				Looking below you ponder your (real) options and choose to:
				
				A) Crash an unwilling particpants random house
				B) Cushion your body in a Stinky Garbage Dump(WIP)
				    (The stench reaches to the heavens)
				C) Who needs gravity?"
			
			elif autoload.stage == 3:
				autoload.stage = 3.5
				#AAAA(ABC)B
				return 'The '
			elif autoload.stage == 4:
				autoload.stage = 4.1
				#AAAA(ABC)AB
				return "Hold on.. Let me explain the situation right now.
				You explode through THE TOP of the house. The ONLY HOPE of
				escape is past the angry man. What escape is there?
				I ask again what will you do?
				
				A) Escape
				B) Give up"
				
			elif autoload.stage == 4.1:
				autoload.stage = 4.11
				#AAAA(ABC)BB
				return 'Your fighting spirit drains out of you, and with a
				CRACKK you are flung across the house.. You splat on the floor
				next to an open air vent. You think you can still move.. but should you?
				
				A) Smoothly Snake Somewhere(WIP)
				B) Chill'
				
				
			elif autoload.stage == 4.11:
				autoload.stage = -1
				#AAAA(ABC)BBB
				return 'You Chill. The guy slowly walks down the stairs approaching you
				You Fall. You slowly drip into the vent, its very warm
				You Fly. The winds of the vent carry you through the system
				You Rest. The vent spits you out in the air
				
				YOU DIED
				
				A) Restart?
				B) View endings'
			
			elif autoload.stage == 4.2:
				autoload.stage = -1
				#AAAA(ABC)BA
				return'You start rolling up in a ball, building up kinetic energy
				He lunges at you, trying visicously to stop you
				Less like a pumpkin and more like a hedgehog you blast through and up the fireplace
				And rise sailing into the sunset.
				
				ENDING ACHIEVED: Dramatic Finish
				
				A) Restart?
				B) View endings'
				
			elif autoload.stage == 4.3:
				autoload.stage = -1
				#AAAA(ABC)BAA(ABC)
				return 'Your head hurts..
				You see him angrerly walk towards you..
				He aims a kick towards you, his intent clear as day..
				You unconsiously roll to the side, he launches a kick
				He trips, and lies cold on the floor. NICE
				You roll down the stairs, and go to sleep.
				
				ENDING ACHIEVED: Peace and quiet
				
				A) Restart?
				B) View endings '
			elif autoload.stage == 5:
				autoload.stage = -1
				#AAAA(ABC)AB
				return "You quietly roll through the house, 
				and with the power of even more property damage
				(You jump through his window) you've done it, you've ESCAPED!!
				You absorb the cool air of the night in your gourdy body,
				and escape to your freedom.
				
				ENDING ACHIEVED: Sneak 100
				
				A) Restart?
				B) View endings "
				
			elif autoload.stage == 6:
				autoload.stage = -1
				#AAAA(ABC)AAB
				return 'At the last second you muster up the courage to act.
				Unfortunately for you that mainly comes down to bouncing up and
				down a lot (but youre really good at it)
				Unable to open the door, you decompost into mush
				
				
				You Died
				
				A) Restart?
				B) View endings
				'
			
				
			elif autoload.stage == -1 or autoload.stage == 0:
				get_tree().change_scene_to_file("res://endings.tscn")
				return ''
				
				
			else:
				return 'Wrong Command, try again?'
				
			
		
		# ALL C PATH OPTIONS
		'c':
			if autoload.stage == 2:
				autoload.stage = 3
				#AAAA(ABC)
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
				#AAAA(ABC)C
				return 'Duh, YOU ARE A PUMPKIN YOU DO NOT FLY
				Anyways you start flying through the sky
				
				Mainly up though? At this point gravity has rejected you,
				and with no way to stop, eventually you freeze eternally in space.
				The last words you would say would be "AHHHHH I am so COLD!!!",
				Thankfully you are a pumpkin, no pain.
				
				YOU DIED
				
				A) Restart? 
				B) View endings'
				
			elif autoload.stage == 4:
				autoload.stage = -1
				#AAAA(ABC)C
				return 'You try and attack him, but just think about this
				He is literally the angriest person on the planet right now and 
				you are the perfect outlet for his anger. His attack is a 
				CRITICAL HIT, and you lie scattered among the walls
				
				YOU DIED
				
				A) Restart?
				B) View endings '

			elif autoload.stage == 4.3:
				autoload.stage = -1
				#AAAA(ABC)BAA(ABC)
				return 'Your head hurts..
				You see him angrerly walk towards you..
				He aims a kick towards you, his intent clear as day..
				You unconsiously roll to the side, he launches a kick
				He trips, and lies cold on the floor. NICE
				You roll down the stairs, and go to sleep.
				
				ENDING 5 ACHIEVED: Peace and quiet
				
				A) Restart?
				B) View endings '
			elif autoload.stage == 5:
				autoload.stage = -1
				#AAAA(ABC)AC
				return "He's sleeping so soundly, and with a hefty STOMP from you
				his sleeping becomes permantly undisturbed. You've done it, you've
				been given the freedom you desired. At a cost..
				
				ENDING 6 ACHIEVED: SURVI-
				
				You know you're a wanted pumpkin now? The police find you quickly,
				putting you under arrest for illegal activites. Looks like your
				freedom is gone, once again. The jury is ruthless, the evidence
				is overwhelming, and you get sentenced to the worse sentence:
				
				PUMPKIN PIE(YOU DIED)
				
				A) Try again?
				B) View endings"
			else:
				return "Wrong Command, try again?"
				
		'help':
			return help()
		_:
			return "WRONG command, one more time? "

		
func help() -> String:
	return "You can use: go [direction], help"
