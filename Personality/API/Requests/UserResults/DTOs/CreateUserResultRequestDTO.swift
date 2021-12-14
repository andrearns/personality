//
//  CreateUserResultRequestDTO.swift
//  Personality
//
//  Created by Thiago Medeiros on 14/12/21.
//

import Foundation

struct CreateUserResultRequestDTO: Codable {
    let result_id: UUID
    let isSelected: Bool
    let isPrivate: Bool
}
