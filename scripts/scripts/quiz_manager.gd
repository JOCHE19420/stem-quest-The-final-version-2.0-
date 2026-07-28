extends Node


var questions = []

var current_question = {}

var current_number = 0



func _ready():

	load_questions()



func load_questions():

	var file = FileAccess.open(
		"res://data/questions.json",
		FileAccess.READ
	)

	var data = file.get_as_text()

	questions = JSON.parse_string(data)

	randomize_questions()



func randomize_questions():

	questions.shuffle()



func get_next_question():

	if current_number >= questions.size():

		current_number = 0
		randomize_questions()



	current_question = questions[current_number]

	current_number += 1


	return current_question



func check_answer(answer):

	if answer == current_question["correct_answer"]:

		return true

	return false



func get_category():

	return current_question["category"]



func get_difficulty():

	return current_question["difficulty"]
