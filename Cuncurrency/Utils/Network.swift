//
//  Network.swift
//  Cuncurrency
//
//  Created by Sothesom on 27/11/1403.
//

/// ساخت یک کلاینت برای Apollo GraphQL
import Foundation
import Apollo

class Network {
    static let shared = Network()
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://graphql.contentful.com/content/v1/spaces/1ag1425wq14n?access_token=UJQSqofTnQh4Oiz1PkeZhMk0kcpKzPFX6CQJzDN_zxI")!)
}
