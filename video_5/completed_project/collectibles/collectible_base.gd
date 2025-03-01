extends Node2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _on_area_2d_body_entered(_body: Node2D) -> void:
	animated_sprite_2d.play("effect")
	$AudioStreamPlayer2D.play()
	$Area2D.queue_free()
	await animated_sprite_2d.animation_finished
	queue_free()
