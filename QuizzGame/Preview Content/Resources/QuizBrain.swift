//
//  QuizBrain.swift
//  QuizzGame
//
//  Created by Amarjeet Kumar on 26/03/25.
//

import Foundation

let mockQuizzes = [
	Quiz(
		id: UUID(),
		title: "Animal Trivia",
		description: "Test your knowledge about animals",
		questions: [
			Question(
				id: UUID(),
				text: "What is the fastest land animal?",
				options: [
					Option(id: UUID(), text: "Cheetah"),
					Option(id: UUID(), text: "Lion"),
					Option(id: UUID(), text: "Greyhound"),
					Option(id: UUID(), text: "Pronghorn antelope")
				],
				correctOptionIndex: 0
			),
			Question(
				id: UUID(),
				text: "How many hearts does an octopus have?",
				options: [
					Option(id: UUID(), text: "1"),
					Option(id: UUID(), text: "2"),
					Option(id: UUID(), text: "3"),
					Option(id: UUID(), text: "4")
				],
				correctOptionIndex: 2
			),
			Question(
				id: UUID(),
				text: "What is a group of lions called?",
				options: [
					Option(id: UUID(), text: "Herd"),
					Option(id: UUID(), text: "Pack"),
					Option(id: UUID(), text: "Pride"),
					Option(id: UUID(), text: "Flock")
				],
				correctOptionIndex: 2
			),
			Question(
				id: UUID(),
				text: "Which animal sleeps standing up?",
				options: [
					Option(id: UUID(), text: "Giraffe"),
					Option(id: UUID(), text: "Elephant"),
					Option(id: UUID(), text: "Horse"),
					Option(id: UUID(), text: "All of the above")
				],
				correctOptionIndex: 3
			),
			Question(
				id: UUID(),
				text: "What is the only mammal capable of true flight?",
				options: [
					Option(id: UUID(), text: "Flying squirrel"),
					Option(id: UUID(), text: "Bat"),
					Option(id: UUID(), text: "Colugo"),
					Option(id: UUID(), text: "Penguin")
				],
				correctOptionIndex: 1
			)
		]
	),
	Quiz(
		id: UUID(),
		title: "Space Quiz",
		description: "How well do you know our solar system?",
		questions: [
			Question(
				id: UUID(),
				text: "Which planet is known as the Red Planet?",
				options: [
					Option(id: UUID(), text: "Venus"),
					Option(id: UUID(), text: "Mars"),
					Option(id: UUID(), text: "Jupiter"),
					Option(id: UUID(), text: "Saturn")
				],
				correctOptionIndex: 1
			),
			Question(
				id: UUID(),
				text: "What is the largest planet in our solar system?",
				options: [
					Option(id: UUID(), text: "Earth"),
					Option(id: UUID(), text: "Saturn"),
					Option(id: UUID(), text: "Jupiter"),
					Option(id: UUID(), text: "Neptune")
				],
				correctOptionIndex: 2
			),
			Question(
				id: UUID(),
				text: "How many moons does Earth have?",
				options: [
					Option(id: UUID(), text: "0"),
					Option(id: UUID(), text: "1"),
					Option(id: UUID(), text: "2"),
					Option(id: UUID(), text: "3")
				],
				correctOptionIndex: 1
			),
			Question(
				id: UUID(),
				text: "Which of these is not a gas giant?",
				options: [
					Option(id: UUID(), text: "Jupiter"),
					Option(id: UUID(), text: "Saturn"),
					Option(id: UUID(), text: "Uranus"),
					Option(id: UUID(), text: "Mars")
				],
				correctOptionIndex: 3
			),
			Question(
				id: UUID(),
				text: "What is the hottest planet in our solar system?",
				options: [
					Option(id: UUID(), text: "Mercury"),
					Option(id: UUID(), text: "Venus"),
					Option(id: UUID(), text: "Mars"),
					Option(id: UUID(), text: "Jupiter")
				],
				correctOptionIndex: 1
			)
		]
	)
]
