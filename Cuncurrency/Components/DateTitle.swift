//
//  DateTitle.swift
//  Cuncurrency
//
//  Created by Sothesom on 21/11/1403.
//

import SwiftUI

struct DateTitle: View {
    @EnvironmentObject var courseViewModel: CourseViewModel
    
    var title: String
    
    @State private var date: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(date.uppercased() )
                .font(.footnote)
                .fontWeight(.medium)
                .opacity(0.5)
            
            Text(title)
                .font(.largeTitle).bold()
        }
        .onAppear {
            date = Date.now.formatted(.dateTime.weekday(.wide).month().day())
        }
        
    }
}

#Preview {
    DateTitle(title: coursePreviewData.subject)
}
