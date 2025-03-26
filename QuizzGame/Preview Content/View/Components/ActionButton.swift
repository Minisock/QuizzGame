//
//  ActionButton.swift
//  QuizzGame
//
//  Created by Amarjeet Kumar on 26/03/25.
//

import SwiftUI

struct ActionButton: View {
	let showFeedback: Bool
	let isCorrect: Bool
	let hasSelection: Bool
	let action: () -> Void
	
	var buttonText: String {
		showFeedback ? "Next Question" : "Check Answer"
	}
	
	var buttonColor: Color {
		if showFeedback {
			return isCorrect ? .green : .red
		}
		return hasSelection ? .blue : .gray
	}
	
	var body: some View {
		Button(action: action) {
			Text(buttonText)
				.font(.headline)
				.foregroundColor(.white)
				.frame(maxWidth: .infinity)
				.padding()
				.background(buttonColor)
				.cornerRadius(10)
				.shadow(radius: hasSelection ? 3 : 0)
		}
		.disabled(!hasSelection && !showFeedback)
		.animation(.easeInOut, value: showFeedback)
		.animation(.easeInOut, value: hasSelection)
	}
}

#Preview {
	ActionButton(showFeedback: true, isCorrect: true, hasSelection: true, action: {})
}
