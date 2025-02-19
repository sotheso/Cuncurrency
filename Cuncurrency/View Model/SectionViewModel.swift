//
//  sectionViewModel.swift
//  Cuncurrency
//
//  Created by Sothesom on 01/12/1403.
//

import Foundation
import Apollo

class SectionViewModel: ObservableObject {
    @Published private(set) var sections: [SectionsDataCollection.SectionModel] = []

    private func querySections() async throws -> GraphQLResult<SectionQuery.Data>? {
        return await withCheckedContinuation { continuation in
            Network.shared.apollo.fetch(query: SectionQuery()) { result in
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
            let result = try await querySections()
            if let result = result{
                if let sectionCollaction = result.data?.sectionCollection {
                    self.sections = process(data: sectionCollaction)
                }
            }
        } catch{
            print("Error", error)
        }
    }
    
    private func process(data: SectionsCollectionData) -> [SectionsDataCollection.SectionModel] {
        let content = SectionsDataCollection.init(data)
        
        return content.sections
    }
}

