extends Node


var score = 0
var questions_answered = 0
var correct_answers = 0



func add_score(points):

	score += points



func record_answer(correct):

	questions_answered += 1

	if correct:
		correct_answers += 1
		add_score(100)



func accuracy():

	if questions_answered == 0:
		return 0

	return (correct_answers / float(questions_answered)) * 100



func reset():

	score = 0
	questions_answered = 0
	correct_answers = 0
