extends Control

@export var stopwatch: TextureRect
@export var invisibleAtFirst: TextureRect
@export var advanceFrameButton: Button
@export var reloadSceneButton: Button

func _ready():
	advanceFrameButton.pressed.connect(self._advance_frame_button_pressed)
	reloadSceneButton.pressed.connect(self._reload_scene_button_pressed)

func _advance_frame_button_pressed():
	var atlasTexture = stopwatch.texture as AtlasTexture
	atlasTexture.region = Rect2(96, 0, 12, 15)
	invisibleAtFirst.visible = true

func _reload_scene_button_pressed():
	get_tree().reload_current_scene()
