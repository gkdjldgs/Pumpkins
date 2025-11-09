extends Control

const Moreresponse = preload('res://label_2.tscn')
const InputResponse = preload('res://dlabels.tscn')
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
	starts.text = "////////////////////////////////////////////////////////////////
#   ######     #######  #            PONDERING
#    ##           ##    #            PUMPKIN
 #  ################## # 
  #  ####       ##### #  
   ###################   
     ###############    (This is supposed to be a pumpkin btw)
	//////////////////////////////////////////////////////////////// 
	
	This is a mutiple choice adventure game..(Input like a mutiple choice test)
	follow the prompts to progress the story, and have fun!
	
	A) Start?
	B) View endings"
	
	
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
	print(response)
	isponse.set_text(new_text, response)
	rows.add_child(isponse)
	add_response(isponse)
	print(autoload.stage)
func add_response(response: Control):
	rows.add_child(response)
#if amount of lines excceds set limit delete oldest lines
func delete_text_his():
	if rows.get_child_count() > mlr:
		var forgor = rows.get_child_count() - mlr
		for lines in range(forgor):
			rows.get_child(lines).queue_free()
