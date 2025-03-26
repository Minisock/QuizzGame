//
//  ProgressHeader.swift
//  QuizzGame
//
//  Created by Amarjeet Kumar on 26/03/25.
//

import SwiftUI

struct ProgressHeader: View {
	let current: Int
	let total: Int
	
	var body: some View {
		HStack {
			Text("Question \(current)/\(total)")
				.font(.caption)
			Spacer()
			ProgressView(value: Float(current), total: Float(total))
				.frame(width: 150)
		}
	}
}

#Preview {
	ProgressHeader(current: 2, total: 5)
}
