//
//  ModalManager.swift
//  Cuncurrency
//
//  Created by Sothesom on 11/12/1403.
//

import Foundation

class ModalManager: ObservableObject {
    enum activeModals {
        case signIn
        case signUp
        case reasetPassword
    }
    
    @Published public var showModal: Bool = false
    @Published public var activeModal: activeModals = .signIn
}
