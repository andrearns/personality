//
//  UpdateUserResultRequestDTO.swift
//  Personality
//
//  Created by Thiago Medeiros on 14/12/21.
//

import Foundation

struct UpdateUserResultRequestDTO: Codable {
    let id: UUID
    let isSelected: Bool
    let isPrivate: Bool
}
