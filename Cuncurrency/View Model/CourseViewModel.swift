//
//  CourseViewModel.swift
//  Cuncurrency
//
//  Created by Sothesom on 27/11/1403.
//

import Foundation
import Apollo

class CourseViewModel: ObservableObject {
    @Published private(set) var courses: [Course] = []
    
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
                if let courseCollaction = result.data?.cuncurrencyDbCollection {
                    self.courses = process(data: courseCollaction)
                }
            }
        } catch{
            print("Error", error)
        }
    }
    
    private func process(data: CoursesData) -> [Course] {
        let content = CoursesCollection.init(data)
        
        return content.courses
    }
}
