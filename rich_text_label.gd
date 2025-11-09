extends RichTextLabel


var texting = "DEATHS: "
func _process(delta: float) -> void:
	var text = str(texting, str(autoload.deaths))
	self.text = (text)
