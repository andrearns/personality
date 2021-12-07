//
//  Auth.swift
//  Personality
//
//  Created by Thiago Medeiros on 23/11/21.
//

import Foundation

struct Auth: Decodable {
    let user: User
    let token: String
}
