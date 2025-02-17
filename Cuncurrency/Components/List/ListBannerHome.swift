//
//  ListBannerHome.swift
//  Cuncurrency
//
//  Created by Sothesom on 21/11/1403.
//

import SwiftUI

struct ListBannerHome: View {
    var courses: [Course]
    var colums = [GridItem(.adaptive(minimum: 160), spacing: 15)]
    
    var body: some View {
        LazyVGrid(columns: colums, spacing: 15 ){
            if courses.count > 0 {
                ForEach(courses, id: \.id) { course in
                    BannerHome(course: course)
                }
            } else {
                ForEach(0..<4, id: \.self) { nubmer in
                    BannerHome(course: coursePreviewData)
// حالت پیش نمایش مات
                        .redacted(reason: .placeholder)
                }
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    ListBannerHome(courses: [coursePreviewData])
}
