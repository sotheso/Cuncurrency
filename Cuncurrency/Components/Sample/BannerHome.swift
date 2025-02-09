//
//  BannerHome.swift
//  Cuncurrency
//
//  Created by Sothesom on 21/11/1403.
//

import SwiftUI

struct BannerHome: View {
    var body: some View {
        VStack(spacing: 8) {
            AsyncImage(url: URL(string: "https://images.ctfassets.net/ooa29xqb8tix/5IXFM29JvbdXKuHeGF91Y3/6b49d65577c32747b7b1a60444c56d9c/SwiftUI_Combine_800x600_cover.png")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 128, alignment: .center)

            } placeholder: {
                Rectangle()
                    .foregroundColor(.gray.opacity(0.3))
            }
            
            Spacer()
            
            Text("Test text, SwiftUI combine and data")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("18 sections - 3 hours")
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(1)
        }
        .padding(16)
        .background {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
        }
        .frame(height: 217, alignment: .top)
    }
}

#Preview {
    BannerHome()
}
