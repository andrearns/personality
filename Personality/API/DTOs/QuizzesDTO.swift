//
//  QuizzesDTO.swift
//  Personality
//
//  Created by Thiago Medeiros on 02/12/21.
//

import Foundation

struct QuizzesDTO: Codable {
    let quizzes: [Quiz]
    let count: Int
}
