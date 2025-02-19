//
//  ContentView.swift
//  Cuncurrency
//
//  Created by Sothesom on 20/11/1403.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var courseViewModel: CourseViewModel
//    @EnvironmentObject var sectionViewModel: SectionViewModel

     
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            SectionView()
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
}
