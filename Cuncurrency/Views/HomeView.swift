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
    // For sign in
    @EnvironmentObject var modalManager: ModalManager
    
    var body: some View {
        ZStack(alignment: .top){
            ScrollView{
                VStack(spacing: 0){
                    HStack {
                        DateTitle(title: "Sothesom, \(courseViewModel.featuredSubject)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .padding(.top, 20)
                        Spacer()
                        
                        ProfileIcon()
                            .onTapGesture {
                                modalManager.showModal.toggle()
                            }
                    }
                    .padding(.horizontal,10)

                                            
                    ListTopCardHome(featuredCourses: courseViewModel.courses)
                        .padding(.top, 10)
                    
                    Text("Popular")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal,20)
                        .padding(.top, 40)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    ListBannerHome(courses: courseViewModel.courses)
                        .padding(.top ,20)
                }
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
        .environmentObject(ModalManager())
}
