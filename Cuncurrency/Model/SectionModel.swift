//
//  SectionModel.swift
//  Cuncurrency
//
//  Created by Sothesom on 01/12/1403.
//

import Foundation

typealias SectionsCollectionData = SectionQuery.Data.SectionCollection

struct SectionsDataCollection: Decodable {
    let sections: [SectionModel]
    
    init(_ sectionsCollection: SectionsCollectionData?) {
        self.sections = sectionsCollection?.sections.map({ section -> SectionModel in
            SectionModel(section)
        }) ?? []
    }

    struct SectionModel: Decodable, Identifiable{
        let title: String
        let id: String
        var isPinned: Bool
        
        init(_ section: SectionQuery.Data.SectionCollection.Section?) {
            self.title = section?.title ?? ""
            self.id = section?.sys.id ?? ""
            self.isPinned = false
        }
    }
}


