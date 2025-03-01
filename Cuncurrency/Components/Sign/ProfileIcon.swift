//
//  ProfileIcon.swift
//  Cuncurrency
//
//  Created by Sothesom on 11/12/1403.
//

import SwiftUI

struct ProfileIcon: View {
    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle")
                .font(.body)
                .foregroundColor(.primary)
                .frame(width: 26, height: 26, alignment: .center)
                .mask(Circle())
                .padding(8.8)
        }
        .background(.ultraThinMaterial)
        .mask(Circle())
        .overlay(
            Circle()
                .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.3), lineWidth: 0.5)
        )
        .frame(width: 44, height: 44)
        .accessibilityLabel("Sign in")
        .accessibilityAddTraits([.isButton])
        .accessibilityHint("Open sign in modal")
    }
}
#Preview {
    ProfileIcon()
}
