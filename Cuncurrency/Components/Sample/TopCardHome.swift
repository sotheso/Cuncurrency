//
//  TopCardHome.swift
//  Cuncurrency
//
//  Created by Sothesom on 21/11/1403.
//

import SwiftUI

// CourseList View
struct TopCardHome: View {
    var featuredCourses: Course
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            AsyncImage(url: URL(string: featuredCourses.illustration)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 220, alignment: .center)
                           
            } placeholder: {
                Rectangle()
                    .foregroundColor(.gray.opacity(0.3))
                
            }
                
            Text(featuredCourses.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(2)
            
            Text("\(featuredCourses.numberSec) sections - \(featuredCourses.numberH) hours")
                .font(.footnote)
                .fontWeight(.medium)
                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(1)
                       
            Text(featuredCourses.subtitle)
                .font(.footnote)
                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(2)
                
        }
        .padding(16)
        .frame(width: 252, height: 350, alignment: .top)
        .background{
            LinearGradient(gradient: Gradient(colors: [Color.init(hex: featuredCourses.colors.first!!), Color.init(hex: featuredCourses.colors.last!!)]), startPoint: .top, endPoint: .bottom)
        }
        .mask {
            RoundedRectangle(cornerRadius: 35, style: .continuous)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 35, style: .continuous)
                .stroke(Color.white.opacity(0.2))
                .blendMode(.overlay)
        )
    }
}

#Preview {
    TopCardHome(featuredCourses: coursePreviewData)
}
