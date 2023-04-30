extends Node2D

var star = preload("res://star.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(20000):
		var s = star.instantiate()
		add_child(s)
		
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$fpsLabel.set_text("FPS %d" % Engine.get_frames_per_second())
	
