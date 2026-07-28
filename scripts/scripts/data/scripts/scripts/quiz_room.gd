extends Control


var question



func _ready():

	load_question()



func load_question():

	question = QuizManager.get_next_question()

	print(question["question"])



func answer_selected(answer):

	var correct = QuizManager.check_answer(answer)


	GameManager.record_answer(correct)


	load_question()
