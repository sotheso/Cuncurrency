//
//  TopCardHome.swift
//  Cuncurrency
//
//  Created by Sothesom on 21/11/1403.
//

import SwiftUI

struct TopCardHome: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            AsyncImage(url: URL(string: "https://images.ctfassets.net/ooa29xqb8tix/5IXFM29JvbdXKuHeGF91Y3/6b49d65577c32747b7b1a60444c56d9c/SwiftUI_Combine_800x600_cover.png")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 220, alignment: .center)
                           
            } placeholder: {
                Rectangle()
                    .foregroundColor(.gray.opacity(0.3))
                
            }
                
            Text("Test text, SwiftUI combine and data")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(2)
            
            Text("18 sections - 3 hours")
                .font(.footnote)
                .fontWeight(.medium)
                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(1)
                       
            Text("Learn SwiftUI, Combine and Data with a real project and a real app")
                .font(.footnote)
                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(2)
                
        }
        .padding(16)
        .frame(width: 252, height: 350, alignment: .top)
        .background{
            RoundedRectangle(cornerRadius: 20)
        }
    }
}

#Preview {
    TopCardHome()
}
