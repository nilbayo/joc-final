extends Area2D

var vel_rotacio = 1000

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(delta):
	global_rotation_degrees += vel_rotacio * delta