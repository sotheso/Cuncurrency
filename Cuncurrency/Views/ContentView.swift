//
//  ContentView.swift
//  Cuncurrency
//
//  Created by Sothesom on 20/11/1403.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var courseViewModel: CourseViewModel
    @EnvironmentObject var sectionViewModel: SectionViewModel

    // For search
    @State private var text = ""

     
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            NavigationView {
                SectionView()
            }
            .searchable(text: $text) {
                ForEach(sectionViewModel.sections.prefix(3)) { section in
                    Text(section.title)
                        .searchCompletion(section.title)
                }
            }
            .onSubmit(of: .search) {
                sectionViewModel.fillterSection(for: text)
            }
            .tabItem{
                Label("Section", systemImage: "square.grid.2x2")
            }
        }
        .task {
            await courseViewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(CourseViewModel())
        .environmentObject(SectionViewModel() )
}
