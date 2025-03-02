//
//  AccountViewModel.swift
//  Cuncurrency
//
//  Created by Sothesom on 12/12/1403.
//

import Foundation

class AccountViewModel: ObservableObject {
    
//    func getUser() {
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users/1") else { fatalError("Missing URL") }
//        
//        let urlRequest = URLRequest(url: url)
//        
//        let dataTasck = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
//            if let error = error {
//                return print("Request error:", error)
//            }
//            
//            guard let response = response as? HTTPURLResponse else { return }
//            
//            if response.statusCode == 200 {
//                guard let data = data else { return }
//                DispatchQueue.main.async {
//                    do {
//                        let decodedUser = try JSONDecoder().decode(User.self, from: data)
//                        print("decodedUser", decodedUser)
//                    } catch let error {
//                        print("error decoding: ", error)
//                    }
//                }
//            }
//        }
//        
//        dataTasck.resume()
//    }
    
    // coucy API
    func getUser() async throws -> User {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users/1") else { fatalError("Missing URL") }
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
        let decodedUser = try JSONDecoder().decode(User.self, from: data)
        
        return decodedUser
    }
}
