//
//  APIError.swift
//  Personality
//
//  Created by Thiago Medeiros on 06/12/21.
//

import Foundation

enum APIError: Error {
    case encode(EncodingError)
    case request(URLError)
    case decode(DecodingError)
    case unknown
}
