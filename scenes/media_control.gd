class_name Media_Control extends Control

@onready var play_sprite: Sprite2D =  $Buttons/PlayPause/PlayIcon
@onready var pause_sprite: Sprite2D =  $Buttons/PlayPause/PauseIcon
@onready var play_pause_button: Button = $Buttons/PlayPause

@onready var is_song_playing: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	#fill_out_song_percentage
	pass


func _on_play_pause_pressed() -> void:
	play_pause_button.button_pressed = !play_pause_button.button_pressed
	play_sprite.visible = !play_sprite.visible
	pause_sprite.visible = !play_sprite.visible
	is_song_playing = !is_song_playing 
	#pause_music


func _on_stop_pressed() -> void:
	#stop_music
	queue_free()
