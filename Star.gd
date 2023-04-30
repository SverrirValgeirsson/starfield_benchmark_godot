extends Sprite2D


var grid_w
var grid_h
var speed

# Called when the node enters the scene tree for the first time.
func _ready():
	grid_w = int(get_viewport().get_visible_rect().size.x)
	grid_h = int(get_viewport().get_visible_rect().size.y)
	init_x()
	init_y()
	speed = 1 + randi() % (4 * 60)


func init_x():
	position.x = -(randi() % self.grid_w )
	
func init_y():
	position.y = grid_h+randi() % self.grid_h 
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y -= speed * delta
	position.x += speed * delta
	if position.x > grid_w:
		init_x()
	if position.y < 0:
		init_y()
	
