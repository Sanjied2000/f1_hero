extends KinematicBody2D
var movement=Vector2(0,0)



func _physics_process(delta):
	if(Glob.Point>500):
		var l = 5
		var m = 6
		var n =rand_range(m,l)
		var speed = 100*n
		movement.y = speed
		move_and_slide(movement,Vector2.DOWN)

	elif(Glob.Point>200):
		var l = 4.5
		var m = 5
		var n =rand_range(m,l)
		var speed = 100*n
		movement.y = speed
		move_and_slide(movement,Vector2.DOWN)

	else:
		var l = 3
		var m = 4
		var n =rand_range(m,l)
		var speed = 100*n
		movement.y = speed
		move_and_slide(movement,Vector2.DOWN)





