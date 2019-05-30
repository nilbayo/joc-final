extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var velocitat = Vector2()
var velocitat_maxima = 170

func _ready():
    position = Vector2(300,300)

func _process(delta):
    mou()
    anima()

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
