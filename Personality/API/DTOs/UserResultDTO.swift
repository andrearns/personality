//
//  UserResultDTO.swift
//  Personality
//
//  Created by Thiago Medeiros on 13/12/21.
//

import Foundation

struct UserResultDTO: Codable {
    let result_id: UUID
    let isSelected: Bool
    let isPrivate: Bool
}
