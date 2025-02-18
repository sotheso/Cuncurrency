//
//  ListTopCardHome.swift
//  Cuncurrency
//
//  Created by Sothesom on 21/11/1403.
//

import SwiftUI

struct ListTopCardHome: View {
    var featuredCourses: [Course]
 
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 20){
                if featuredCourses.count > 0 {
                    ForEach(featuredCourses, id: \.id){ cuorse in
                        TopCardHome(featuredCourses : coursePreviewData)
                            .frame(maxWidth: 252, maxHeight: 350)
                    }
                } else {
                    ForEach(0..<4, id: \.self) { number in
                        TopCardHome(featuredCourses: coursePreviewData)
                            .frame(maxWidth: 252, maxHeight: 350)
                            .redacted(reason: .placeholder)
                    }
                }
            }
            .padding(.horizontal, 20)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ListTopCardHome(featuredCourses: [coursePreviewData])
}
