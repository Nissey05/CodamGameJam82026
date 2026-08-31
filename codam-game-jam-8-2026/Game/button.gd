extends Button

func _on_pressed() -> void:
	var rng = RandomNumberGenerator.new()
	rng.seed = hash(Time.get_ticks_usec())
	$Die1/RichTextLabel.text = str(rng.randi_range(1, 6))
	$Die2/RichTextLabel.text = str(rng.randi_range(1, 6))
	$Die3/RichTextLabel.text = str(rng.randi_range(1, 6))
