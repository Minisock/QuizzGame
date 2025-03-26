//
//  OptionButton.swift
//  QuizzGame
//
//  Created by Amarjeet Kumar on 26/03/25.
//

import SwiftUI

struct OptionButton: View {
	let text: String
	let isSelected: Bool
	let isCorrect: Bool
	let isIncorrect: Bool
	let action: () -> Void
	
	var body: some View {
		Button(action: action) {
			HStack {
				if isCorrect || isIncorrect {
					Image(systemName: isCorrect ? "checkmark.circle.fill" : "xmark.circle.fill")
						.foregroundColor(isCorrect ? .green : .red)
				}
				
				Text(text)
					.foregroundColor(.primary)
				
				Spacer()
				
				if isSelected && !isCorrect && !isIncorrect {
					Circle()
						.frame(width: 20)
						.foregroundColor(.blue)
				}
			}
			.padding()
			.background(backgroundColor)
			.cornerRadius(10)
			.overlay(
				RoundedRectangle(cornerRadius: 10)
					.stroke(borderColor, lineWidth: 1)
			)
		}
		.buttonStyle(.plain)
	}
	
	private var backgroundColor: Color {
		if isCorrect { return .green.opacity(0.1) }
		if isIncorrect { return .red.opacity(0.1) }
		return isSelected ? .blue.opacity(0.1) : .gray.opacity(0.05)
	}
	
	private var borderColor: Color {
		if isCorrect { return .green }
		if isIncorrect { return .red }
		return isSelected ? .blue : .gray.opacity(0.5)
	}
}

#Preview {
	OptionButton(text: "", isSelected: true, isCorrect: true, isIncorrect: false, action: {})
}
