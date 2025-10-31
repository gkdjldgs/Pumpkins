extends Node


func command(input: String):
	var words = input.split(" ", false)
	if words.size() == 0:
		return " NO commands directed"
	
	
	var first_word = words[0].to_lower()
	var second_word = ""
	if words.size() > 1:
		second_word = words[1].to_lower()
	match first_word:
		'move':
			return ment(second_word)
		'help':
			return help()
		_:
			return "WRONG command, one more time? "


func ment(second_word: String):
	if second_word == "":
		return "What?"
	
	return "You move %s" % second_word

func help() -> String:
	return "You can use: go [direction], help"
