extends Control

func _on_animate_checkbox_toggled(button_pressed):
	if button_pressed:
		%RobotAnimations.play()
	else:
		%RobotAnimations.pause()

func _on_lights_checkbox_toggled(button_pressed):
	%PointLight2D1.visible = button_pressed
	%PointLight2D2.visible = button_pressed
	%PointLight2D3.visible = button_pressed
	%CanvasModulate.visible = button_pressed
