//
//  UserModel.swift
//  Cuncurrency
//
//  Created by Sothesom on 12/12/1403.
//

import Foundation

struct User: Identifiable, Decodable {
    var id: Int
    var name: String
    var username: String
    var email: String
    var phone: String
    var website: String
    
    var company: company
    var address: address
     
    struct address: Decodable {
        var street: String
        var suite: String
        var city: String
        var zipcode: String
        var geo: geo
        
        struct geo: Decodable  {
            var lat: String
            var lng: String
        }
    }
    
    struct company: Decodable {
        var name: String
        var catchPhrase: String
        var bs: String
    }
}
