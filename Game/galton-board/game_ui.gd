extends Node2D

const SCENE_BALL = preload("res://ball/ball.tscn")
const ORIGIN_X = 242.5
const ORIGIN_Y = 0
const NUM_OF_BALLS = 500

var current_number_of_balls = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func lauch_ball():
	var ball_instance = SCENE_BALL.instantiate()
	ball_instance.position = Vector2(ORIGIN_X, ORIGIN_Y)
	add_child(ball_instance)


func _on_timer_timeout() -> void:
	if current_number_of_balls < NUM_OF_BALLS:
		lauch_ball()
		current_number_of_balls = current_number_of_balls + 1
		
