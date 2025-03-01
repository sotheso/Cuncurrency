//
//  SectionView.swift
//  Cuncurrency
//
//  Created by Sothesom on 01/12/1403.
//

import SwiftUI

struct SectionView: View {
    @EnvironmentObject var sectionViewModel: SectionViewModel
    @Environment(\.isSearching) var isSearching
    
    var body: some View {
        VStack {
            if isSearching {
                if sectionViewModel.fillteredSections.count > 0 {
                    List(sectionViewModel.fillteredSections) { section in
                        Text(section.title)
                    }
                } else {
                    List(0..<1){ secion in
                        Text("نتیجه ای یافت نشد")
                    }
                }
            } else {
                SectionList()
            }
        }
        .navigationTitle(Text("All Courses test"))
    }
}

#Preview {
    SectionView()
        .environmentObject(SectionViewModel())
}
