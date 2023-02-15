//
//  RMRequest.swift
//  RickyAndMorty
//
//  Created by misho zirakashvili on 07.02.23.
//

import Foundation


/// objects that represents  a single API Call
final class RMRequest {
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    /// Desire endpoint
    private let endPoint: RMEndpoint
    /// Path components for API, if any
    private let pathComponents: [String]
    /// Query arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endPoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        if !queryParameters.isEmpty {
            string += "?"
            
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentString
        }
        return string
    }
    /// Computed & Constructed API url
    public var url:URL? {
        return URL(string: urlString)
    }
    /// Desired http method
    public let httpMethod = "GET"
    //MARK: -  Public
    
    /// Construct method
    /// - Parameters:
    ///   - endPoint: Target endpoint
    ///   - pathComponents: Collection of path component
    ///   - queryParameters: Collection of query parameters
    public init(endPoint: RMEndpoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endPoint = endPoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}

extension RMRequest {
    static let listCharactersRequest = RMRequest(endPoint: .character)
}
