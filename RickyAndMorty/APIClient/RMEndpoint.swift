//
//  RMEndpoint.swift
//  RickyAndMorty
//
//  Created by misho zirakashvili on 08.02.23.
//

import Foundation

/// Represents unique API endpoints
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case charecter
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info 
    case episode
}
