extends Node

func _ready():
	get_tree().get_root().set_transparent_background(true)

func _input(event):
	if Input.is_action_pressed("click") and event is InputEventMouseMotion:
		get_window().position += Vector2i(event.relative)

func _physics_process(_delta):
	if Input.is_action_just_pressed("1"):
		get_tree().change_scene_to_file("res://scenes/amongus.tscn")
		print("1")
	if Input.is_action_just_pressed("2"):
		get_tree().change_scene_to_file("res://scenes/dancer.tscn")
		print("2")
	if Input.is_action_just_pressed("3"):
		get_tree().change_scene_to_file("res://scenes/lisa.tscn")
		print("3")
	if Input.is_action_just_pressed("4"):
		get_tree().change_scene_to_file("res://scenes/banana.tscn")
		print("4")
	if Input.is_action_just_pressed("5"):
		get_tree().change_scene_to_file("res://scenes/toothless.tscn")
		print("5")
	if Input.is_action_just_pressed("6"):
		get_tree().change_scene_to_file("res://scenes/jai.tscn")
		print("6")

	if Input.is_key_label_pressed(KEY_Q):
		get_tree().quit()
	
	if Input.is_key_label_pressed(KEY_M):
		get_tree().current_scene.get_child(0).scale.x *= -1
