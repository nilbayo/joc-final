extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func pantalla_seguent():
	var nivell = get_tree().get_root().get_node('Node2D').nivell
	var escena_pantalla_fi = load("res://mapa" + str(nivell) + ".tscn")
	get_tree().change_scene_to(escena_pantalla_fi)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_Final1_body_entered(body):
	get_tree().get_root().get_node('Node2D').nivell += 1
	pantalla_seguent()
