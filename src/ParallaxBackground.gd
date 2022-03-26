extends ParallaxBackground

export (float) var scrolling_speed = 500.0
export (float) var FACTOR = 15

var MIN_ROTATION = 0.5/FACTOR
var MAX_ROTATION = 5/FACTOR

var rand = RandomNumberGenerator.new()

var sprite1
var sprite2
var sprite3
var sprite4
var sprite5
var sprite6
var sprite7
var sprite8
var sprite9


func _ready():
	rand.randomize()
	sprite1 = rand.randf_range(MIN_ROTATION, MAX_ROTATION)
	sprite2 = rand.randf_range(MIN_ROTATION, MAX_ROTATION)
	sprite3 = rand.randf_range(MIN_ROTATION, MAX_ROTATION)
	sprite4 = rand.randf_range(MIN_ROTATION, MAX_ROTATION)
	sprite5 = rand.randf_range(MIN_ROTATION, MAX_ROTATION)
	sprite6 = rand.randf_range(MIN_ROTATION, MAX_ROTATION)
	sprite7 = rand.randf_range(MIN_ROTATION, MAX_ROTATION)
	sprite8 = rand.randf_range(MIN_ROTATION, MAX_ROTATION)
	sprite9 = rand.randf_range(MIN_ROTATION, MAX_ROTATION)

func _process(delta):
	scroll_offset.x -= scrolling_speed * delta
	$ParallaxLayer/Sprite.rotate(deg2rad(sprite1))
	$ParallaxLayer/Sprite2.rotate(deg2rad(sprite2))
	$ParallaxLayer/Sprite3.rotate(deg2rad(sprite3))
	$ParallaxLayer/Sprite4.rotate(deg2rad(sprite4))
	$ParallaxLayer/Sprite5.rotate(deg2rad(sprite5))
	$ParallaxLayer/Sprite6.rotate(deg2rad(sprite6))
	$ParallaxLayer/Sprite7.rotate(deg2rad(sprite7))
	$ParallaxLayer/Sprite8.rotate(deg2rad(sprite8))
	$ParallaxLayer/Sprite9.rotate(deg2rad(sprite9))
