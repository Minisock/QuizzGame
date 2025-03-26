//
//  Quiz.swift
//  QuizzGame
//
//  Created by Amarjeet Kumar on 26/03/25.
//

import Foundation

struct Quiz: Identifiable, Codable {
	let id: UUID
	var title: String
	var description: String
	var questions: [Question]
}
