extends Node

func _ready():
	# Call the JavaScript `new` operator on the `window.Array` object.
	# Passing 10 as argument to the constructor:
	# JS: `new Array(10);`
	var arr = JavaScript.create_object("Array", 10)
	# Set the first element of the JavaScript array to the number 42.
	arr[0] = 42
	# Call the `pop` function on the JavaScript array.
	arr.pop()
	# Print the value of the `length` property of the array (9 after the pop).
	print(arr.length)
	   # Retrieve the `window.console` object.
	var console = JavaScript.get_interface("console")
	# Call the `window.console.log()` method.
	console.log("test")
	get_node("Output 1").text = "String len in Javascript:" + String(arr.length)
	get_node("Output 2").text = "Arr[0] in JavaScript:" + String(arr[0])
	get_node("Label2").text = JavaScript.get_interface("window").navigator.userAgent
	


func _on_Button_button_down() -> void:
	var window = JavaScript.get_interface("window")
	window.alert("Alert called from Godot Engine!! ")


func _on_Button2_button_down() -> void:
	var window = JavaScript.get_interface("window");
	var val = window.prompt("Input a number")
	get_node("Output 2").text = "Prompted number" + String(val)


func _on_Button3_button_down() -> void:
	var win = JavaScript.get_interface("window")
	win.open("https://www.godotengine.org")


func _on_Button4_button_down() -> void:
	var win = JavaScript.get_interface("window")
	var div = win.document.createElement("div")
	print("div", div)
	div.innerHTML = "<div style='position: absolute; z-index: 6000; top: 50px; left: 100px; background-color:red;'>Hello World</div>"
	win.document.body.appendChild(div)
