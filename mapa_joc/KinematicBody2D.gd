extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var velocitat = Vector2()
var velocitat_maxima = 130

func _ready():
    position = Vector2(75,68)

func _process(delta):
    mou()
    anima()
	
func reinicia():
	position = Vector2(75,68)
	
func teletransportar():
	position = Vector2(900,100)

func mou():
	velocitat = Vector2()
	if Input.is_action_pressed('ui_right'):
		velocitat += Vector2(2,0)
	if Input.is_action_pressed('ui_left'):
		velocitat += Vector2(-2,0)
	if Input.is_action_pressed('ui_down'):
		velocitat += Vector2(0,2)
	if Input.is_action_pressed('ui_up'):
		velocitat += Vector2(0,-2)
	velocitat *= velocitat_maxima
	move_and_slide(velocitat)

func anima():
	if velocitat.x > 0:
		$Sprite.animation = 'camina dreta'
	elif velocitat.x < 0:
		$Sprite.animation = 'camina esquerra'
	elif velocitat.y > 0:
		$Sprite.animation = 'camina abaix'
	elif velocitat.y < 0:
        $Sprite.animation = 'camina adalt'
	else:
        $Sprite.animation = 'parat'

#var escena_pantalla_fi=preload("res://mapa3.tscn")
#
#func pantalla_fi():
#	get_tree().change_scene_to(escena_pantalla_fi)


#func pantalla_seguent():
#	var nivell = get_tree().get_root().get_node('Node2D').nivell
#	var escena_pantalla_fi = load("res://mapa" + str(nivell) + ".tscn")
#	get_tree().change_scene_to(escena_pantalla_fi)


func _on_Trampa_body_entered(body):
	reinicia()

func _on_Trampa2_body_entered(body):
	reinicia()

func _on_Trampa3_body_entered(body):
	reinicia()

func _on_Trampa4_body_entered(body):
	reinicia()

func _on_Trampa5_body_entered(body):
	reinicia()

func _on_Trampa6_body_entered(body):
	reinicia()

func _on_Trampa7_body_entered(body):
	reinicia()

func _on_Trampa8_body_entered(body):
	reinicia()

func _on_Trampa9_body_entered(body):
	reinicia()

func _on_Trampa10_body_entered(body):
	reinicia()

#func _on_Final_body_entered(body):
#	get_tree().get_root().get_node('Node2D').nivell += 1
#	pantalla_seguent()

func _on_Explota_body_entered(body):
	reinicia()


func _on_Explota2_body_entered(body):
	reinicia()


func _on_Area2D_body_entered(body):
	reinicia()


func _on_Destral_body_entered(body):
	reinicia()



func _on_teletransport_body_entered(body):
	teletransportar()
