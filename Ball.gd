extends RigidBody2D

const BALL_SPEED = 200.0
var past_linear_velocity := linear_velocity
var direction = Vector2.ZERO

func _ready():
	randomize()
	start_ball()

func _integrate_forces(state):
	var speed = linear_velocity.length()
	if speed < BALL_SPEED:
		linear_velocity = linear_velocity.normalized() * BALL_SPEED

func start_ball():
	direction = Vector2(randf_range(-1, 1), 1).normalized()
	linear_velocity = direction * BALL_SPEED
