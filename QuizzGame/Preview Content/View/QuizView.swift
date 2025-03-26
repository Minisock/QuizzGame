//
//  ContentView.swift
//  QuizzGame
//
//  Created by Amarjeet Kumar on 26/03/25.
//

import SwiftUI

struct QuizView: View {
	let quiz: Quiz
	@State private var currentQuestionIndex = 0
	@State private var userAnswers: [UUID: Int] = [:]
	@State private var quizCompleted = false
	@State private var navController: UINavigationController?
	
	var body: some View {
		ZStack {
			if quizCompleted {
				ResultView(quiz: quiz, userAnswers: userAnswers) {
					navController?.popViewController(animated: true)
				}
			} else {
				QuestionView(
					question: quiz.questions[currentQuestionIndex],
					questionNumber: currentQuestionIndex + 1,
					totalQuestions: quiz.questions.count,
					userAnswer: Binding(
						get: { userAnswers[quiz.questions[currentQuestionIndex].id] ?? -1 },
						set: { userAnswers[quiz.questions[currentQuestionIndex].id] = $0 }
					),
					onNext: goToNextQuestion
				)
			}
		}
		.navigationBarBackButtonHidden(true)
		.background(NavigationControllerAccessor(navController: $navController))
		.onAppear { disableSwipeBack() }
		.onDisappear { enableSwipeBack() }
	}
	
	private func goToNextQuestion() {
		if currentQuestionIndex < quiz.questions.count - 1 {
			currentQuestionIndex += 1
		} else {
			quizCompleted = true
		}
	}
	
	private func disableSwipeBack() {
		navController?.interactivePopGestureRecognizer?.isEnabled = false
	}
	
	private func enableSwipeBack() {
		navController?.interactivePopGestureRecognizer?.isEnabled = true
	}
}

#Preview {
	QuizView(quiz: mockQuizzes[0])
}
