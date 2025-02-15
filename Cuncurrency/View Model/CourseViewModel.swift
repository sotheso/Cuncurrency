//
//  CourseViewModel.swift
//  Cuncurrency
//
//  Created by Sothesom on 27/11/1403.
//

import Foundation
import Apollo

class CourseViewModel: ObservableObject {
    
    private func queryCourses() async throws -> GraphQLResult<CourseModQuery.Data>? {
        return await withCheckedContinuation { continuation in
            Network.shared.apollo.fetch(query: CourseModQuery()) { result in
                switch result {
                case .success(let graphQLResult):
                    continuation.resume(returning: graphQLResult)
                case .failure(let error):
                    if let error = error as? Never {
                        continuation.resume(throwing: error)
                    }
                }
            }
        }
    }
            
    
    func fetch() async  {
        do {
            let result = try await queryCourses()
            if let result = result{
                print("result",result)
            }
        } catch{
            print("Error", error)
        }
    }
}
