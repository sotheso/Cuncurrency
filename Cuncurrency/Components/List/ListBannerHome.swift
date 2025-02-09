//
//  ListBannerHome.swift
//  Cuncurrency
//
//  Created by Sothesom on 21/11/1403.
//

import SwiftUI

struct ListBannerHome: View {
    var colums = [GridItem(.adaptive(minimum: 160), spacing: 15)]
    
    var body: some View {
        LazyVGrid(columns: colums, spacing: 15 ){
            ForEach(0..<10, id: \.self) {N in
                BannerHome()
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    ListBannerHome()
}
