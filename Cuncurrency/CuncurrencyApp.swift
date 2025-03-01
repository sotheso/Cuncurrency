//
//  CuncurrencyApp.swift
//  Cuncurrency
//
//  Created by Sothesom on 20/11/1403.
//

import SwiftUI

@main
struct CuncurrencyApp: App {
    @StateObject var courseViewModel = CourseViewModel()
    @StateObject var sectionViewModel = SectionViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(courseViewModel)
                .environmentObject(sectionViewModel)
        }
    }
}
