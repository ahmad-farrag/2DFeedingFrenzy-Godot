extends Sprite


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("MoveRight")&&position.x<1000:
		translate(Vector2(5,0))
		set_scale(Vector2(-0.1,0.1))
	if Input.is_action_pressed("MoveLeft")&&position.x>-1000:
		translate(Vector2(-5,0))
		set_scale(Vector2(0.1,0.1))
	if Input.is_action_pressed("MoveUp")&&position.y>-255:
		translate(Vector2(0,-5))
	if Input.is_action_pressed("MoveDown")&&position.y<255:
		translate(Vector2(0,5))
		
