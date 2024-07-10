extends Control

func _ready():
	var button = Button.new()
	
	# Set the anchors to the center of the parent Control node
	button.anchor_left = 0.5
	button.anchor_top = 0.5
	button.anchor_right = 0.5
	button.anchor_bottom = 0.5
	
	# Set the margins to define the button's size and position
	button.offset_left = -50
	button.offset_top = -20
	button.offset_right = 50
	button.offset_bottom = 20
	
	# Add the button to the current Control node
	add_child(button)
