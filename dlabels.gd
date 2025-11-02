extends VBoxContainer

func set_text(input: String, response: String):
	$Label.text = " > " + input
	$Label2.text = response
