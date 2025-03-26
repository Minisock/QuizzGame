//
//  QuestionView.swift
//  QuizzGame
//
//  Created by Amarjeet Kumar on 26/03/25.
//

import SwiftUI

struct QuestionView: View {
	let question: Question
	let questionNumber: Int
	let totalQuestions: Int
	@Binding var userAnswer: Int
	let onNext: () -> Void
	
	@State private var showFeedback = false
	
	var body: some View {
		VStack(alignment: .leading, spacing: 20) {
			ProgressHeader(current: questionNumber, total: totalQuestions)
			
			Text(question.text)
				.font(.title2.bold())
				.padding(.bottom, 8)
			
			ForEach(Array(question.options.enumerated()), id: \.element.id) { index, option in
				OptionButton(
					text: option.text,
					isSelected: userAnswer == index,
					isCorrect: showFeedback && index == question.correctOptionIndex,
					isIncorrect: showFeedback && userAnswer == index && userAnswer != question.correctOptionIndex,
					action: { if !showFeedback { userAnswer = index } }
				)
			}
			
			Spacer()
			
			ActionButton(
				showFeedback: showFeedback,
				isCorrect: userAnswer == question.correctOptionIndex,
				hasSelection: userAnswer != -1,
				action: {
					if showFeedback {
						onNext()
						showFeedback = false
					} else {
						showFeedback = true
					}
				}
			)
		}
		.padding()
	}
}

#Preview {
	@Previewable @State var userAnswers: Int = 1
	QuestionView(
		question: mockQuizzes[0].questions[0],
		questionNumber: 1,
		totalQuestions: 5,
		userAnswer: $userAnswers,
		onNext: {}
	)
}
