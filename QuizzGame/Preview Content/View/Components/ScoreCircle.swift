//
//  ScoreCircle.swift
//  QuizzGame
//
//  Created by Amarjeet Kumar on 26/03/25.
//

import SwiftUI

struct ScoreCircle: View {
	let correct: Int
	let total: Int
	
	private var percentage: Double {
		Double(correct) / Double(total)
	}
	
	private var mainColor: Color {
		switch percentage {
			case 0.7...1.0: return .green
			case 0.4..<0.7: return .orange
			default: return .red
		}
	}
	
	var body: some View {
		ZStack {
			Circle()
				.stroke(lineWidth: 10)
				.foregroundColor(.gray.opacity(0.2))
			
			Circle()
				.trim(from: 0, to: percentage)
				.stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round))
				.foregroundColor(mainColor)
				.rotationEffect(.degrees(-90))
				.animation(.easeOut, value: percentage)
			
			VStack {
				Text("\(correct)/\(total)")
					.font(.system(size: 32, weight: .bold))
				Text("\(Int(percentage * 100))%")
					.font(.title2)
			}
		}
		.frame(width: 150, height: 150)
	}
}

#Preview {
	ScoreCircle(correct: 4, total: 10)
}
