//
//  HomeView.swift
//  Cuncurrency
//
//  Created by Sothesom on 21/11/1403.
//

import SwiftUI

struct HomeView: View {
    // add api
    @EnvironmentObject var courseViewModel: CourseViewModel
    
    var body: some View {
        ZStack(alignment: .top){
            ScrollView{
                DateTitle()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.top, 10)
                
                ListTopCardHome(course: courseViewModel.courses)
//                    .padding(.top, 10)
                
                Text("Popular")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                    .padding(.top, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ListBannerHome(courses: courseViewModel.courses)
            }
            Color(.white)
                .animation(.easeIn)
                .ignoresSafeArea()
                .frame(height: 0)
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(CourseViewModel())
}
