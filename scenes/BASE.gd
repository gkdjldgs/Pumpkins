extends Control

const Moreresponse = preload('res://scenes/label_2.tscn')
const InputResponse = preload('res://scenes/dlabels.tscn')
#	loading in important variables that are used throughout the script
@export var mlr := int(30)

# reaching through the scene tree to use important values for the game
@onready var command_process = $Commands
@onready var rows = $Back/MarginContainer/Lines/Textinfo/ScrollContainer/HBoxContainer
@onready var scroll = $Back/MarginContainer/Lines/Textinfo/ScrollContainer
@onready var scrolls = scroll.get_v_scroll_bar()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	scrolls.connect('changed', handle_scroll_changed)
	var starts = Moreresponse.instantiate()
	starts.text = "You eyes drift open, as if rising from a slumber. The sounds of Halloween fill your ears as you come to the realization that compared to everyone else, you are a pumpkin. What do you do?
	- Follow the prompts to advance the story, usually in multiple choice format
	
	A) Look around
	B) Roll forward aimlessly"
	
	
	add_response(starts)
	
func handle_scroll_changed():
	scroll.scroll_vertical = scrolls.max_value
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#code for on text entered into the box
func _on_line_edit_text_submitted(new_text: String) -> void:
	if new_text.is_empty():
		return
	
	var isponse = InputResponse.instantiate()
	var response = command_process.command(new_text)
	isponse.set_text(new_text, response)
	rows.add_child(isponse)
	add_response(isponse)

func add_response(response: Control):
	rows.add_child(response)
#if amount of lines excceds set limit delete oldest lines
func delete_text_his():
	if rows.get_child_count() > mlr:
		var forgor = rows.get_child_count() - mlr
		for lines in range(forgor):
			rows.get_child(lines).queue_free()
