extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var velocitat = Vector2()
var velocitat_maxima = 170

func _ready():
	reinicia()

func _process(delta):
	mou()
	move_and_slide(velocitat)

func reinicia():
	position = Vector2(30,30)

func mou():
	velocitat = Vector2(0,0)
	if Input.is_action_pressed('ui_right'):
		velocitat += Vector2(130,0)
	if Input.is_action_pressed('ui_left'):
		velocitat += Vector2(-130,0)
	if Input.is_action_pressed('ui_up'):
		velocitat += Vector2(0,-130)
	if Input.is_action_pressed('ui_down'):
		velocitat += Vector2(0,130)


func _on_Trampa_mor():
	reinicia()

