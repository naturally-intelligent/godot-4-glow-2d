extends ColorRect

func _ready():
	var tween = create_tween()
	tween.set_trans(Tween.TRANS_CUBIC)
	tween.tween_property(get_material(), "shader_parameter/glow_strength", 3.0, 1.5)
	tween.tween_property(get_material(), "shader_parameter/glow_strength", 0.0, 1.5)
	tween.set_loops()
