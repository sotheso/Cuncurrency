//
//  sectionViewModel.swift
//  Cuncurrency
//
//  Created by Sothesom on 01/12/1403.
//

import Foundation
import Apollo

class SectionViewModel: ObservableObject {
    @Published public var sections: [SectionsDataCollection.SectionModel] = []
    @Published var errorMessage: String? = nil
    
    // For search
    @Published public private(set) var fillteredSections: [SectionsDataCollection.SectionModel] = []

    func querySections() async throws -> GraphQLResult<SectionQuery.Data>? {
        return try await withCheckedThrowingContinuation { continuation in
            let query = SectionQuery()
            Network.shared.apollo.fetch(query: query) { result in
                switch result {
                case .success(let graphQLResult):
                    if let errors = graphQLResult.errors {
                        let errorMessage = errors.map { $0.message ?? "" }.joined(separator: "\n")
                        continuation.resume(throwing: NSError(domain: "GraphQL", code: -1, userInfo: [NSLocalizedDescriptionKey: errorMessage]))
                    } else {
                        continuation.resume(returning: graphQLResult)
                    }
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
    
//    func fetch() async  {
//        do {
//            let result = try await querySections()
//            if let result = result{
//                if let sectionCollaction = result.data?.sectionCollection {
//                    self.sections = process(data: sectionCollaction)
//                }
//            }
//        } catch{
//            print("Error", error)
//        }
//    }
    func fetch() async {
        do {
            let result = try await querySections()
            guard let result = result,
                  let sectionCollection = result.data?.sectionModCollection else {
                DispatchQueue.main.async {
                    self.errorMessage = "خطا در دریافت اطلاعات"
                }
                return
            }
            
            DispatchQueue.main.async {
                self.sections = self.process(data: sectionCollection)
                self.errorMessage = nil
            }
            
        } catch {
            DispatchQueue.main.async {
                self.errorMessage = "خطای سرور: \(error.localizedDescription)"
            }
        }
    }
    
    private func process(data: SectionsCollectionData) -> [SectionsDataCollection.SectionModel] {
        let content = SectionsDataCollection.init(data)
        
        return content.sections
    }
    
    // برای لود کردن رندم
    func randomizeSection() async{
        sections.shuffle()
    }
    
    // برای پین کردن
    func orderSectionByPinned() {
        // همه سکشن هارو می بینه -> اونایی ه پین هست رو بالای لیست میذاره
        sections.sort { $0.isPinned && !$1.isPinned }
    }
    
    func fillterSection(for text: String) {
        fillteredSections = []
        let searchText = text.lowercased()
        
        sections.forEach { section in
            let seatchContent = section.title
            
            if seatchContent.lowercased().range(of: searchText, options: .regularExpression) != nil {
                fillteredSections.append(section)
            }
        }
    }
}

