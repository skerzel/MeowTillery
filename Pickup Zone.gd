extends Area2D
var damage = 0


func _ready():
	pass # Replace with function body.

var items_in_range = {}

func _on_PickupZone_body_entered(body):
	items_in_range[body] = body


func _on_PickupZone_body_exited(body):
	if items_in_range.has(body):
		items_in_range.erase(body)
