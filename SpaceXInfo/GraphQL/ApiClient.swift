//
//  ApiClient.swift
//  SpaceXInfo
//
//  Created by Danil Sigal on 21.06.2021.
//

import Foundation
import Apollo

struct ApiClient {
    
    let client: ApolloClient = {
        let url = URL(string: "https://api.spacex.land/graphql/")!
        
        return ApolloClient(url: url)
    }()
}
