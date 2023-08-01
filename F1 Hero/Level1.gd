extends Node2D

func _ready():
	$AudioStreamPlayer.play()
	



func _on_Area2D_body_entered(body):
	var i = randi()%3 +1
	var j = rand_range(1,3)
	$enemy.position.x =  i* 30
	$enemy.position.y =  (-100*j)


func _on_Area2D2_body_entered(body):

	var k = rand_range(5,8)
	var l = rand_range(1,3)
	$redcar.position.x =  k * 28
	$redcar.position.y =  (-100*l)


func _on_pointsbar_body_entered(body):
	Glob.Point= Glob.Point+10
	get_node("CanvasLayer/pointshow").text = String (Glob.Point)

