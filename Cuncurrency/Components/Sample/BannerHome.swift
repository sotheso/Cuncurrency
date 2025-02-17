//
//  BannerHome.swift
//  Cuncurrency
//
//  Created by Sothesom on 21/11/1403.
//

import SwiftUI

// CourseCard
struct BannerHome: View {
    var course: Course
    
    var body: some View {
        VStack(spacing: 8) {
            AsyncImage(url: URL(string: course.illustration)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 128, alignment: .center)

            } placeholder: {
                Rectangle()
                    .foregroundColor(.gray.opacity(0.3))
            }
            
            Spacer()
            
            Text(course.title)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("\(course.numberSec) section - \(course.numberH) hours")
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7)))
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(1)
        }
        .padding(16)
        .frame(height: 217, alignment: .top)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.init(hex: course.colors.first!!), Color.init(hex: course.colors.last!!)]), startPoint: .top, endPoint: .bottomLeading)
        )
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.white.opacity(0.2), lineWidth: 0.5)
                    .blendMode(.overlay))
        .shadow(color: Color.init(hex: course.colors.last!!).opacity(0.3), radius: 15, x: 0, y: 10)
    }
}

#Preview {
    BannerHome(course: coursePreviewData)
}
