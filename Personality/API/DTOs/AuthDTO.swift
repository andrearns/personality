//
//  Auth.swift
//  Personality
//
//  Created by Thiago Medeiros on 23/11/21.
//

import Foundation

struct AuthDTO: Codable {
    let user: User
    let token: String
}
