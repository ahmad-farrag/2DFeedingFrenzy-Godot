extends Sprite

#usage of onready to prevent null getnode Like : 
#var child = null
#
#func _ready(): child = $SomeChild
#
#Could be replaced with this:
#
#onready var child = $SomeChild

onready var player=get_parent().get_node("Player")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player.position.x>position.x:
		translate(Vector2(4,0))
		set_scale(Vector2(0.1,0.1))
	if player.position.x<position.x:
		translate(Vector2(-4,0))
		set_scale(Vector2(-0.1,0.1))
	if player.position.y>position.y:
		translate(Vector2(0,3))
	if player.position.y<position.y:
		translate(Vector2(0,-2))
	if position.distance_to(player.position)<=50:
		die()
		
func die():
	print("YouLose")
	get_tree().quit()
