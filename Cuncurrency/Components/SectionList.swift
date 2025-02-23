//
//  SectionList.swift
//  Cuncurrency
//
//  Created by Sothesom on 01/12/1403.
//

import SwiftUI

struct SectionList: View {
    @StateObject var sectionViewModel = SectionViewModel()
    
    var body: some View {
        VStack{
            List{
                ForEach(sectionViewModel.sections, id: \.id) { section in
                    Text(section.title)
                }
            }
            .task {
                await sectionViewModel.fetch()
            }
// حالت کشیدن پایین
            .refreshable {
                await sectionViewModel.randomizeSection()
            }
        }
    }
}

#Preview {
    SectionList()
}
