//
//  AuthenticateUserRequestDTO.swift
//  Personality
//
//  Created by Thiago Medeiros on 14/12/21.
//

import Foundation

struct AuthenticateUserRequestDTO: Codable {
    let apple_id: String?
    let name: String?
    let email: String?
}
