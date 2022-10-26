extends Button

export var rate_increase = .1
export var cost:int = 25
export var max_upgrade_level = 5
export var current_level = 0
export var upgrade_text = " "

#when max level is reached the upgrade is disabled
func _process(delta: float) -> void:
	if (current_level == max_upgrade_level):
		disabled = true
	if(UserVariables.money <= cost): 
		disabled = true
	else:
		disabled = true


func _on_upgrade_pressed() -> int:
	UserVariables.money -= cost
	cost += (cost * current_level) * rate_increase #increases price for each upgrade
	current_level += 1
	return cost



func _on_upgrade_mouse_entered() -> void:
	text = str(cost)
	if(current_level == max_upgrade_level):
		text = "FULLY UPGRADED!"


func _on_upgrade_mouse_exited() -> void:
	text = upgrade_text
