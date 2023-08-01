extends KinematicBody2D
var life = 1;
const MoveSpeed = 180;

var movement = Vector2(0,0)

func _physics_process(delta):
	if Input.is_action_pressed("Right"):
		movement.x = MoveSpeed
	elif Input.is_action_pressed("Left"):
		movement.x = -MoveSpeed
	else :
		movement.x = 0
	move_and_slide(movement)
	
	


func _on_Area2D_body_entered(body):
	life =life -1;
	if(life== 0):
		$AnimatedSprite.play("dead")
		$AudioStreamPlayer2D.play()
		$Timer.start()


func _on_Timer_timeout():
	
	$AudioStreamPlayer2D.stop()
	get_tree().change_scene("res://Gameover.tscn")
	
