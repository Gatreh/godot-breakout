extends Node2D

var score = 0
var totalBricks = 0
var totalHits = 0
var restartButtonScene = preload("res://Restart.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Score.text = str(score)
	$Ball.StartBall()
	for brick in get_tree().get_nodes_in_group("bricks"):
		brick.connect("brick_hit", Callable(self, "_on_Brick_Hit"))
		totalBricks += 1 		## Add all the bricks to the count.

func _on_Brick_Hit():
	totalHits += 1
	score += totalHits * (1 + (totalHits % 4)) 			#Adds point to score
	$Score.text = str(score) 	# Updates score display
	totalBricks -= 1 		# Decrement total bicks
	if (totalBricks == 0):
		StageComplete()

func StageComplete():
	var winButton = preload("res://YouWin.tscn").instantiate()
	add_child(winButton)
	winButton.get_node("RestartButton").connect("pressed", Callable(self, "_on_WinButton_pressed"))
	get_tree().paused = true

func _on_Game_Over(body):
	ShowRestartButton() 		# Show restart Scene
	get_tree().paused = true 	# Stop simulation

func ShowRestartButton():
	var restartButton = restartButtonScene.instantiate() 	# Creates instance of Restart scene
	add_child(restartButton) 
	# Get the child node "RestartButton" of the Restart scene
	# and connect the pressed signal to the on_RestartButton_pressed function.
	restartButton.get_node("RestartButton").connect("pressed", Callable(self, "_on_RestartButton_pressed"))

func _on_WinButton_pressed():
	get_tree().reload_current_scene() 	# Restart the scene
	get_tree().paused = false 			#Unpause scene so things can move again

func _on_RestartButton_pressed():
	get_tree().reload_current_scene() 	# Restart the scene
	get_tree().paused = false 			#Unpause scene so things can move again
