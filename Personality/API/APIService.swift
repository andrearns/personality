//
//  APIController.swift
//  Personality
//
//  Created by Thiago Medeiros on 23/11/21.
//

import Foundation

class APIService {
    static let shared = APIService()
    
    private let API_URL = "https://thihxm.dev.br"
    
    func postRequest(route: String, body: [String: String?], completion: @escaping (Data) -> Void) {
        guard let jsonData = try? JSONEncoder().encode(body) else {
            print("Invalid body data")
            return
        }
        guard let url = URL(string: "\(API_URL)\(route)") else {
            print("Invalid URL")
            return
        }
        var request = URLRequest(url: url)
        request.httpBody = jsonData
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else { return }
            completion(data)
        }.resume()
    }
    
    func getRequest(route: String, query: [String: String]? = nil, completion: @escaping (Data) -> Void) {
        var queryItems: [URLQueryItem] = []
        
        if let query = query {
            for (name, value) in query {
                let queryItem = URLQueryItem(name: name, value: value)
                queryItems.append(queryItem)
            }
        }
        
        guard var components = URLComponents(string: "\(API_URL)\(route)") else {
            print("Invalid URL")
            return
        }
        components.queryItems = queryItems
        
        guard let url = components.url else {
            print("Could not append query items to URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else { return }
            completion(data)
        }.resume()
    }
}
