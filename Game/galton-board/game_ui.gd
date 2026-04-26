extends Node2D

const SCENE_BALL = preload("res://ball/ball.tscn")
const SCENE_END = preload("res://ui/MenuFinished.tscn")

const ORIGIN_X = 242.5
const ORIGIN_Y = 0
const NUM_OF_BALLS = 5

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
		
	elif current_number_of_balls == NUM_OF_BALLS:
		var end_instance = SCENE_END.instantiate()		
		add_child(end_instance)
		
	current_number_of_balls = current_number_of_balls + 1
