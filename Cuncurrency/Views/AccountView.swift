//
//  AccountView.swift
//  Cuncurrency
//
//  Created by Sothesom on 12/12/1403.
//

import SwiftUI

struct AccountView: View {
    @StateObject var accountViewModel = AccountViewModel()
    var body: some View {
        Text("Hello, World!")
            .onAppear{
                accountViewModel.getUser()
            }
        
    }
}

#Preview {
    AccountView()
        .environmentObject(AccountViewModel())
}
