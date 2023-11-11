extends StaticBody2D

const SPEED = 300.0
const RIGHT_EDGE = 995
const LEFT_EDGE = 155

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	position.x += direction * SPEED * delta
	if (position.x > RIGHT_EDGE):
		position.x = RIGHT_EDGE
	if (position.x < LEFT_EDGE):
		position.x = LEFT_EDGE
