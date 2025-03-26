//
//  ResultView.swift
//  QuizzGame
//
//  Created by Amarjeet Kumar on 26/03/25.
//

import SwiftUI

struct ResultView: View {
	let quiz: Quiz
	let userAnswers: [UUID: Int]
	let onDismiss: () -> Void
	
	private var correctCount: Int {
		quiz.questions.reduce(0) { count, question in
			count + (userAnswers[question.id] == question.correctOptionIndex ? 1 : 0)
		}
	}
	
	private var scorePercentage: Double {
		Double(correctCount) / Double(quiz.questions.count)
	}
	
	private var scoreColor: Color {
		switch scorePercentage {
			case 0.7...1.0: return .green
			case 0.4..<0.7: return .orange
			default: return .red
		}
	}
	
	var body: some View {
		VStack(spacing: 20) {
			// Header Section
			headerView
			
			Divider()
			
			// Questions Summary
			summaryView
			
			Spacer()
			
			// Action Button
			backButton
		}
		.padding()
	}
	
		// MARK: - Subviews
	
	private var headerView: some View {
		VStack(spacing: 28) {
			Text("Quiz Completed!")
				.font(.largeTitle.bold())
			
			ScoreCircle(correct: correctCount, total: quiz.questions.count)
		}
	}
	
	private var summaryView: some View {
		ScrollView {
			VStack(alignment: .leading, spacing: 15) {
				Text("Summary:")
					.font(.headline)
				
				ForEach(quiz.questions) { question in
					questionSummaryItem(for: question)
				}
			}
			.padding(.horizontal)
		}
	}
	
	private func questionSummaryItem(for question: Question) -> some View {
		let userAnswerIndex = userAnswers[question.id]
		let isCorrect = userAnswerIndex == question.correctOptionIndex
		
		return VStack(alignment: .leading, spacing: 5) {
			// Question Header
			HStack {
				Image(systemName: isCorrect ? "checkmark.circle.fill" : "xmark.circle.fill")
					.foregroundColor(isCorrect ? .green : .red)
				Text("Q\(questionIndex(for: question) + 1): \(question.text)")
					.font(.subheadline)
			}
			
			// User Answer
			if let userAnswerIndex = userAnswerIndex {
				Text("Your answer: \(question.options[userAnswerIndex].text)")
					.foregroundColor(isCorrect ? .green : .red)
			}
			
			// Correct Answer (if wrong)
			if !isCorrect {
				Text("Correct answer: \(question.options[question.correctOptionIndex].text)")
					.foregroundColor(.green)
			}
		}
		.padding()
		.background(Color(.systemBackground))
		.cornerRadius(10)
	}
	
	private func questionIndex(for question: Question) -> Int {
		quiz.questions.firstIndex { $0.id == question.id } ?? 0
	}
	
	private var backButton: some View {
		Button(action: onDismiss) {
			Text("Back to Quizzes")
				.frame(maxWidth: .infinity)
				.padding()
				.background(Color.blue)
				.foregroundColor(.white)
				.cornerRadius(10)
		}
		.padding(.horizontal)
	}
}

#Preview {
	ResultView(quiz: mockQuizzes[0], userAnswers: [:], onDismiss: {})
}
