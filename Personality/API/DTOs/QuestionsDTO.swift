//
//  Questions.swift
//  Personality
//
//  Created by Thiago Medeiros on 07/12/21.
//

import Foundation

struct QuestionsDTO: Codable {
    let questions: [Question]
    let count: Int
}
