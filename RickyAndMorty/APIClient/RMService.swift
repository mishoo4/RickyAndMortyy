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
    ///   - completion: Callback with data or error 
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
