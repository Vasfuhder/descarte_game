extends Sprite

var pos = 0
onready var fim = preload("res://fim_single.tscn")

func _process(delta):
	pos = clamp(pos, 0, 30)
	self.set_position(self.get_parent().get_node("Casas/Area2D"+str(pos)+"/CollisionShape2D").position)
	if pos >= 30: get_tree().change_scene("res://fim_single.tscn")
	pass
