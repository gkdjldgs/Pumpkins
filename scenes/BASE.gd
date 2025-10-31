extends Control
const InputResponse = preload('res://scenes/dlabels.tscn')
@export var mlr := int(30)
@onready var rows = $Back/MarginContainer/Lines/Textinfo/ScrollContainer/HBoxContainer
@onready var scroll = $Back/MarginContainer/Lines/Textinfo/ScrollContainer
@onready var scrolls = scroll.get_v_scroll_bar()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	scrolls.connect('changed', handle_scroll_changed)

func handle_scroll_changed():
	scroll.scroll_vertical = scrolls.max_value
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#code for ont ext entered into the box
func _on_line_edit_text_submitted(new_text: String) -> void:
	if new_text.is_empty():
		return
	var isponse = InputResponse.instantiate()
	isponse.set_text(new_text, ' wow')
	rows.add_child(isponse)
	
	if rows.get_child_count() > mlr:
		var forgor = rows.get_child_count() - mlr
		for lines in range(forgor):
			rows.get_child(lines).queue_free()
