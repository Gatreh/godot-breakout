extends Node2D

var score = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	increase_score(score)
	$Ball.start_ball()
	for brick in get_tree().get_nodes_in_group("bricks"):  # Assuming your bricks are in a group named "bricks"
		brick.connect("brick_hit", Callable(self, "_on_Brick_Hit"))



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func increase_score(points):
	score += points
	$Score.text = str(score)
	print(score)
	# Update score display here

func _on_Brick_Hit():
	increase_score(1)
	print("Hit Brick")

func check_game_over():
	# Logic to check if the ball is below the paddle
	# If so, freeze the game and show reset button
	pass

