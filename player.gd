extends RigidBody2D
signal hit

@export var jump_force = 300
var jump_vector : Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	jump_vector = Vector2(0, -jump_force)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("jump"):
		print("jump force:", jump_force)
		set_axis_velocity(jump_vector)



func _on_body_entered(body):
	freeze = true
	hide()
	hit.emit()
