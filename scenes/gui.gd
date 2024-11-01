extends Node

@onready var ambiance_player_container: ScrollContainer = $Panels/AmbiancePanel/AmbiancePlayer

@onready var media_player: PackedScene = preload("res://scenes/media_control.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	#add_song is 'p'. I use it to test the UI for multiple songs playing at once.
	if(Input.is_action_just_pressed("add_song")):
		var new_media_player : Media_Control = media_player.instantiate() as Media_Control
		new_media_player.position.y =ambiance_player_container.get_child_count() * -48
		print(ambiance_player_container.get_child_count() * 48)
		ambiance_player_container.add_child(new_media_player)
