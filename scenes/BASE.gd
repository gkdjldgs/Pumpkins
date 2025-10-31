extends Control
const InputResponse = preload('res://scenes/dlabels.tscn')
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


func _on_line_edit_text_submitted(new_text: String) -> void:
	var isponse = InputResponse.instantiate()
	isponse.set_text(new_text, ' wow')
	rows.add_child(isponse)
