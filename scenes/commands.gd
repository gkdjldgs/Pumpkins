extends Node

@export var stage := 0
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
			'b':
				return ment(first_word)
			'help':
				return help()
			_:
				return "WRONG command, one more time? "


func ment(first_word: String):
	
	if first_word == 'a' and stage == 0:
		stage = 1
		return "You start to move your little body forwards, but realize you have to make an important decision.
		Do you choose to:
			
		A) Use the street
		B) Roll on the sidewalk"

func help() -> String:
	return "You can use: go [direction], help"
