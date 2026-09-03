extends Node                                                                                                                                                  
																														   
var menu_open := false                       
var menu_ui: Control = null

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		toggle_menu()
 
func toggle_menu() -> void:                                                                                                                                   
	if menu_open:
		close_menu()
	else:
		open_menu()

func open_menu() -> void:
	menu_open = true
	get_tree().paused = true

	menu_ui = Control.new()
	menu_ui.set_anchors_preset(Control.PRESET_FULL_RECT)
	menu_ui.process_mode = Node.PROCESS_MODE_ALWAYS

	var bg = ColorRect.new()                                                                                                                                  
	bg.color = Color(0, 0, 0, 0.7)
	bg.set_anchors_preset(Control.PRESET_FULL_RECT)
	menu_ui.add_child(bg)
	   
	var vbox = VBoxContainer.new()
	vbox.set_anchors_preset(Control.PRESET_CENTER)
	vbox.grow_horizontal = Control.GROW_DIRECTION_BOTH
	vbox.grow_vertical = Control.GROW_DIRECTION_BOTH
	vbox.offset_left = -150
	vbox.offset_right = 150
	vbox.offset_top = -80
	vbox.offset_bottom = 80
	menu_ui.add_child(vbox)                                                                                                                                   

	var label = Label.new()
	label.text = "PAUSED"
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.add_theme_font_size_override("font_size", 48)
	vbox.add_child(label)

	var resume_btn = Button.new()
	resume_btn.text = "Resume"
	resume_btn.pressed.connect(close_menu)
	vbox.add_child(resume_btn)

	var quit_btn = Button.new()
	quit_btn.text = "Quit to Title"
	quit_btn.pressed.connect(quit_to_title)
	vbox.add_child(quit_btn)

	get_tree().root.add_child(menu_ui)

func close_menu() -> void:
	menu_open = false
	get_tree().paused = false
	if menu_ui:
		menu_ui.queue_free()
		menu_ui = null

func quit_to_title() -> void:
	close_menu()
	SceneManager.goto_start()
