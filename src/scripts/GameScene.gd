extends Node2D

func _ready():
	var scene = load("res://src/actors/Esquire.tscn")
	var player = scene.instance()
	player.name = "Esquire1"
	player.position = Vector2(200, 200)
	add_child(player)
	$Esquire1/Pivot/Selection.visible

"""

# Big thanks to KidsCanCode for drag-select code

var dragging = false  # Are we currently dragging?
var selected = []  # Array of selected units.
var drag_start = Vector2.ZERO  # Location where drag began.
var select_rect = RectangleShape2D.new()  # Collision shape for drag box.

var mouseFrom = 0
var mouseTo = 0

func _input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			if selected.size() == 0:
				dragging = true
				drag_start = event.position
			else:
				for item in selected:
					item.position = Vector2(50, 50)
					$Esquire/Pivot/Selection.visible = false
				selected = []
		elif dragging:
			dragging = false
			update()
			var drag_end = event.position
			select_rect.extents = (drag_end - drag_start) / 2
			var space = get_world_2d().direct_space_state
			var query = Physics2DShapeQueryParameters.new()
			query.set_shape(select_rect)
			query.transform = Transform2D(0, (drag_end + drag_start) / 2)
			selected = space.intersect_shape(query)
			for item in selected:
				$Esquire/Pivot/Selection.visible = true
	if event is InputEventMouseMotion and dragging:
		update()

func _draw():
	if dragging:
		draw_rect(Rect2(drag_start, get_global_mouse_position() - drag_start),
			Color(0, .5, .5, 0.5), true)
"""
