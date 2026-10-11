extends Node

@onready var player = $Player
@onready var spawn = $SpawnPoint

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player.global_position = spawn.global_position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_goal_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		get_tree().change_scene_to_file("res://main_menu.tscn")
