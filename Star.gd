extends Sprite2D


var grid_w
var grid_h
var speed

# Called when the node enters the scene tree for the first time.
func _ready():
	self.grid_w = int(get_viewport().get_visible_rect().size.x)
	self.grid_h = int(get_viewport().get_visible_rect().size.y)
	init_x()
	init_y()
	
	self.speed = 1 + randi() % (4 * 60)


func init_x():
	self.position.x = -(randi() % self.grid_w )
	
func init_y():
	self.position.y = grid_h+randi() % self.grid_h 
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.y -= self.speed * delta
	self.position.x += self.speed * delta
	if self.position.x > self.grid_w:
		init_x()
	if self.position.y < 0:
		init_y()
	
