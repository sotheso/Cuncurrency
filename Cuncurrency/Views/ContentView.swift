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
    // For Sign in
    @StateObject var modalManager = ModalManager()

    // For search
    @State private var text = ""

     
    var body: some View {
        ZStack {
            TabView{
                HomeView()
                    .environmentObject(modalManager)
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
            if modalManager.showModal {
                ModalManagerView()
                    .environmentObject(modalManager)
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(CourseViewModel())
        .environmentObject(SectionViewModel())
}
