extends Node2D

# Array to hold the image textures
var images = []
var current_image_index = 0

# Called when the node enters the scene tree for the first time
func _ready():
	# Load images into the array
	images.append(load("res://image1.png"))
	images.append(load("res://image2.png"))
	images.append(load("res://image3.png"))
	# Add more images as needed
	
	# Set the initial image
	if $ImageDisplay:
		$ImageDisplay.texture = images[current_image_index]
	else:
		print("ImageDisplay node not found in the scene.")

	# Connect the button press signal to a function
	if $NextImageButton:
		$NextImageButton.pressed.connect(self, "_on_NextImageButton_pressed")
	else:
		print("NextImageButton node not found in the scene.")

# Function to handle button press
func _on_NextImageButton_pressed():
	# Change to the next image
	current_image_index = (current_image_index + 1) % images.size()
	if $ImageDisplay:
		$ImageDisplay.texture = images[current_image_index]
	else:
		print("ImageDisplay node not found in the scene.")
