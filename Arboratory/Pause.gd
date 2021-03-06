extends CanvasLayer
"""
Works by pausing the main tree itself. 
This means that every scene in the entire game is stopped.
If you would like to make sure a scene still works during paused state,
Change the pause mode to process
Taken from: https://www.youtube.com/watch?v=WaotOuDNio8
"""
func _ready():
	set_visible(false)

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		set_visible(!get_tree().paused)
		get_tree().paused = !get_tree().paused
		


func _on_Continue_pressed():
	get_tree().paused = false;
	set_visible(false)
	
func set_visible(is_visible):
	for node in get_children():
		node.visible = is_visible
