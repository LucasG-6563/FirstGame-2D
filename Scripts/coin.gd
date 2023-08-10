extends Area2D

@onready var anim := $AnimatedSprite2D as AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	anim.play("collect")


func _on_animated_sprite_2d_animation_finished():
	if anim.animation == "collect":
		queue_free()
