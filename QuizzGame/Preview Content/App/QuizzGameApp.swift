//
//  QuizzGameApp.swift
//  QuizzGame
//
//  Created by Amarjeet Kumar on 26/03/25.
//

import SwiftUI

@main
struct QuizzGameApp: App {
	var body: some Scene {
		WindowGroup {
			QuizListView(quizzes: mockQuizzes)
		}
	}
}
