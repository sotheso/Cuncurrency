//
//  ModalManagerView.swift
//  Cuncurrency
//
//  Created by Sothesom on 11/12/1403.
//

import SwiftUI

struct ModalManagerView: View {
    @EnvironmentObject var modalManager: ModalManager
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor (.black.opacity(0.5))
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    modalManager.showModal.toggle()
                    modalManager.activeModal = .signIn
                }
            
            switch modalManager.activeModal {
            case .signIn:
                SignInView()
            case .signUp:
                SignUpView()
            case .reasetPassword:
                ResetPasswordView()
            }
        }
    }
}

#Preview {
    ModalManagerView()
        .environmentObject(ModalManager())
}
