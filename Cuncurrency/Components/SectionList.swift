//
//  SectionList.swift
//  Cuncurrency
//
//  Created by Sothesom on 01/12/1403.
//

import SwiftUI

struct SectionList: View {
    @EnvironmentObject var sectionViewModel: SectionViewModel
    
    var body: some View {
        VStack{
            List{
                ForEach($sectionViewModel.sections) { $section in
                    HStack{
                        Text(section.title)
                        Spacer()
                        
                        if section.isPinned {
                            Image(systemName: "pin.fill")
                                .foregroundColor(.yellow)
                        }
                    }
                    .swipeActions{
                        Button{
                            section.isPinned.toggle()
                            sectionViewModel.orderSectionByPinned()
                        } label: {
                            if section.isPinned {
                                Label("Unpin",systemImage: "pin.slash")
                            } else {
                                Label("Pin",systemImage: "pin")
                            }
                        }
                    }
                    .tint(.yellow)
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
        .environmentObject(SectionViewModel())
}
