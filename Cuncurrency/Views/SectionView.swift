//
//  SectionView.swift
//  Cuncurrency
//
//  Created by Sothesom on 01/12/1403.
//

import SwiftUI

struct SectionView: View {
    var body: some View {
        VStack {
            Text("All Courses test")
                .font(.largeTitle).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 20)
                .padding(.horizontal, 20)
        }
    }
}

#Preview {
    SectionView()
}
