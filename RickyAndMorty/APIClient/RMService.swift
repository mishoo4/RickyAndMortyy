//
//  RMService.swift
//  RickyAndMorty
//
//  Created by misho zirakashvili on 07.02.23.
//

import Foundation


/// primary API service object to get Rick and Morty data
final class RMService {
    
    /// shared singleton instance
    static let shared = RMService()
    
    /// privatized constructor
    private init() { }
    
    /// send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: the type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void) {
            
        }
}
