extends Label

@onready var timer = $Timer
@onready var animationPlayer = $AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animationPlayer.play("RESET")
	animationPlayer.play("Warning_Screen");

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "Warning_Screen":
		timer.start()
	else:
		_main_menu_switch()

func _main_menu_switch() -> void:
	pass
	# LevelManager.load_non_game_scene("main_menu")
	
func _on_timer_timeout() -> void:
	animationPlayer.play("fade_out")
