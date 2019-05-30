extends Area2D

var escena_explosio = preload("res://Explosió.tscn")
signal mor
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func explota():
	var nova_explosio = escena_explosio.instance()
	nova_explosio.position = position
	get_tree().get_root().get_node("Node2D").add_child(nova_explosio)
	emit_signal('mor')






func _on_Explota_body_entered(body):
	explota()


func _on_Explota3_body_entered(body):
	explota()

func _on_Explota2_body_entered(body):
	explota()

func _on_Explota4_body_entered(body):
	explota()


func _on_Trampa_body_entered(body):
	explota()


func _on_Trampa2_body_entered(body):
	explota()


func _on_Trampa3_body_entered(body):
	explota()


func _on_Trampa4_body_entered(body):
	explota()


func _on_Trampa5_body_entered(body):
	explota()


func _on_Trampa6_body_entered(body):
	explota()


func _on_Trampa7_body_entered(body):
	explota()


func _on_Trampa8_body_entered(body):
	explota()


func _on_Trampa9_body_entered(body):
	explota()


func _on_Trampa10_body_entered(body):
	explota()
