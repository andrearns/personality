//
//  Networker.swift
//  Personality
//
//  Created by Thiago Medeiros on 01/12/21.
//

import Foundation
import Combine

protocol NetworkerProtocol: AnyObject {
    typealias Headers = [String: Any]
    typealias Body = [String: String?]
    
    func get<T>(type: T.Type, url: URL, headers: Headers) -> AnyPublisher<T, Error> where T: Decodable
    func getData(url: URL, headers: Headers) -> AnyPublisher<Data, APIError>
    
    func post<T>(type: T.Type, url: URL, headers: Headers, body: Body) -> AnyPublisher<T, Error> where T: Decodable
    func postData(url: URL, headers: Headers, body: Body) -> AnyPublisher<Data, APIError>
    
    func patch<T>(type: T.Type, url: URL, headers: Headers, body: Body) -> AnyPublisher<T, Error> where T: Decodable
    func patchData(url: URL, headers: Headers, body: Body) -> AnyPublisher<Data, APIError>
}

final class Networker: NetworkerProtocol {
    
    func get<T>(type: T.Type, url: URL, headers: Headers) -> AnyPublisher<T, Error> where T: Decodable {
        var urlRequest = URLRequest(url: url)
        
        headers.forEach { key, value in
            if let value = value as? String {
                urlRequest.setValue(value, forHTTPHeaderField: key)
            }
        }
        
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    func getData(url: URL, headers: Headers) -> AnyPublisher<Data, APIError> {
        var urlRequest = URLRequest(url: url)
        
        headers.forEach { key, value in
            if let value = value as? String {
                urlRequest.setValue(value, forHTTPHeaderField: key)
            }
        }
        
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .map(\.data)
            .mapError { error -> APIError in
                return .request(error)
            }
            .eraseToAnyPublisher()
    }
    
    func post<T>(type: T.Type, url: URL, headers: Headers, body: Body) -> AnyPublisher<T, Error> where T: Decodable {
        Just(body)
            .encode(encoder: JSONEncoder())
            .mapError { error -> APIError in
                if let encodingError = error as? EncodingError {
                    return .encode(encodingError)
                } else {
                    return .unknown
                }
            }
            .map { data -> URLRequest in
                var urlRequest = URLRequest(url: url)
                
                urlRequest.httpMethod = "POST"
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
                urlRequest.httpBody = data
                
                headers.forEach { key, value in
                    if let value = value as? String {
                        urlRequest.setValue(value, forHTTPHeaderField: key)
                    }
                }
                
                return urlRequest
            }
            .flatMap {
                URLSession.shared.dataTaskPublisher(for: $0)
                    .mapError(APIError.request)
                    .map(\.data)
                    .decode(type: T.self, decoder: JSONDecoder())
                    .mapError { error -> APIError in
                        if let decodingError = error as? DecodingError {
                            return .decode(decodingError)
                        } else {
                            return .unknown
                        }
                    }
            }
            .eraseToAnyPublisher()
    }
    
    func postData(url: URL, headers: Headers, body: Body) -> AnyPublisher<Data, APIError> {
        return Just(body)
            .encode(encoder: JSONEncoder())
            .mapError { error -> APIError in
                if let encodingError = error as? EncodingError {
                    return .encode(encodingError)
                } else {
                    return .unknown
                }
            }
            .map { data -> URLRequest in
                var urlRequest = URLRequest(url: url)
                
                urlRequest.httpMethod = "POST"
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
                urlRequest.httpBody = data
                
                headers.forEach { key, value in
                    if let value = value as? String {
                        urlRequest.setValue(value, forHTTPHeaderField: key)
                    }
                }
                
                return urlRequest
            }
            .flatMap {
                URLSession.shared.dataTaskPublisher(for: $0)
                    .mapError(APIError.request)
                    .map(\.data)
            }
            .eraseToAnyPublisher()
    }
    
    
    func patch<T>(type: T.Type, url: URL, headers: Headers, body: Body) -> AnyPublisher<T, Error> where T: Decodable {
        Just(body)
            .encode(encoder: JSONEncoder())
            .mapError { error -> APIError in
                if let encodingError = error as? EncodingError {
                    return .encode(encodingError)
                } else {
                    return .unknown
                }
            }
            .map { data -> URLRequest in
                var urlRequest = URLRequest(url: url)
                
                urlRequest.httpMethod = "PATCH"
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
                urlRequest.httpBody = data
                
                headers.forEach { key, value in
                    if let value = value as? String {
                        urlRequest.setValue(value, forHTTPHeaderField: key)
                    }
                }
                
                return urlRequest
            }
            .flatMap {
                URLSession.shared.dataTaskPublisher(for: $0)
                    .mapError(APIError.request)
                    .map(\.data)
                    .decode(type: T.self, decoder: JSONDecoder())
                    .mapError { error -> APIError in
                        if let decodingError = error as? DecodingError {
                            return .decode(decodingError)
                        } else {
                            return .unknown
                        }
                    }
            }
            .eraseToAnyPublisher()
    }
    
    func patchData(url: URL, headers: Headers, body: Body) -> AnyPublisher<Data, APIError> {
        return Just(body)
            .encode(encoder: JSONEncoder())
            .mapError { error -> APIError in
                if let encodingError = error as? EncodingError {
                    return .encode(encodingError)
                } else {
                    return .unknown
                }
            }
            .map { data -> URLRequest in
                var urlRequest = URLRequest(url: url)
                
                urlRequest.httpMethod = "PATCH"
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
                urlRequest.httpBody = data
                
                headers.forEach { key, value in
                    if let value = value as? String {
                        urlRequest.setValue(value, forHTTPHeaderField: key)
                    }
                }
                
                return urlRequest
            }
            .flatMap {
                URLSession.shared.dataTaskPublisher(for: $0)
                    .mapError(APIError.request)
                    .map(\.data)
            }
            .eraseToAnyPublisher()
    }
}
