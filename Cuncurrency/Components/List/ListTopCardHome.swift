//
//  ListTopCardHome.swift
//  Cuncurrency
//
//  Created by Sothesom on 21/11/1403.
//

import SwiftUI

struct ListTopCardHome: View {
    var course: [Course]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 20){
                ForEach(0..<5){ item in
                    TopCardHome(course: coursePreviewData)
                        .frame(maxWidth: 252, maxHeight: 350)
                }
            }
            .padding(.horizontal, 20)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ListTopCardHome(course: [coursePreviewData])
}
