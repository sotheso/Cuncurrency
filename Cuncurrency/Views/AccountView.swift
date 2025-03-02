//
//  AccountView.swift
//  Cuncurrency
//
//  Created by Sothesom on 12/12/1403.
//

import SwiftUI

struct AccountView: View {
    @StateObject var accountViewModel = AccountViewModel()
    @State private var user: User?
    
    var body: some View {
        VStack{
            if let user = user {
                ProfileCard(user: user)
                    .padding(.horizontal, 8)
            } else {
                Text("چند لحظه صبر کنید، در حال لود شدن...")
            }
        }
        .task {
            do {
                user = try await accountViewModel.getUser()
            } catch {
                print("Error while fetching user: ", error.localizedDescription)
            }
        }
    }
}

#Preview {
    AccountView()
        .environmentObject(AccountViewModel())
}
