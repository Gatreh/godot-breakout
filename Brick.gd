extends StaticBody2D

signal brick_hit
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_Brick_body_entered(body):
	if body.name == "Ball":
		emit_signal("brick_hit")  
		queue_free()  # This will remove the brick
