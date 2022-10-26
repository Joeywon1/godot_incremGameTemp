extends Node
#logan was here :>



func _process(_delta: float) -> void:
	moneyupdate(UserVariables.money)
	foodupdate(UserVariables.food)

#label updates
func moneyupdate(money):
	$CanvasLayer/moneylabel.text = "Money: " + str(money)
func foodupdate(food):
	$CanvasLayer/foodlabel.text = "Food: " + str(UserVariables.food)
	
func _on_FoodButton_pressed() -> void:
	UserVariables.food += UserVariables.food_incriment

func _on_sellbutton_pressed() -> void:
	if(UserVariables.food >= UserVariables.sell_rate):
		UserVariables.money += UserVariables.money_incriment + UserVariables.sell_rate
		UserVariables.food -= UserVariables.sell_rate
	elif(UserVariables.food != 0):
		UserVariables.money += UserVariables.money_incriment
		UserVariables.food -= 1


func _on_foodupgrade_pressed() -> void:
	var rate = 2
	UserVariables.food_incriment += rate


func _on_sellupgrade_pressed() -> void:
	var sell_upgrade: int = 1 * 1.5
	UserVariables.sell_rate += sell_upgrade

