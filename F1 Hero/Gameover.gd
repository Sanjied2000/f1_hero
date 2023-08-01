extends Control


var x = Glob.Point
func _ready():
	$Label3.text= String(x)


func _on_Button_pressed():
	get_tree().change_scene("res://START PAGE.tscn")
	Glob.Point = 00
