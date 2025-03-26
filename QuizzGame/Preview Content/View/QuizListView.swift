//
//  QuizListView.swift
//  QuizzGame
//
//  Created by Amarjeet Kumar on 26/03/25.
//

import SwiftUI

struct QuizListView: View {
	let quizzes: [Quiz]
	
	var body: some View {
		NavigationStack {
			List(quizzes) { quiz in
				NavigationLink {
					QuizView(quiz: quiz)
				} label: {
					VStack(alignment: .leading) {
						Text(quiz.title)
							.font(.headline)
						Text(quiz.description)
							.font(.subheadline)
							.foregroundColor(.gray)
					}
				}
			}
			.navigationTitle("Quiz Game")
		}
	}
}

#Preview {
	QuizListView(quizzes: mockQuizzes)
}
