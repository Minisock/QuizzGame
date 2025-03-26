//
//  Question.swift
//  QuizzGame
//
//  Created by Amarjeet Kumar on 26/03/25.
//

import Foundation

struct Question: Identifiable, Codable {
	let id: UUID
	var text: String
	var options: [Option]
	var correctOptionIndex: Int
}
