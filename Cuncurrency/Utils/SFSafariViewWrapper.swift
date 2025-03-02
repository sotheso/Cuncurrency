//
//  SFSafariViewWrapper.swift
//  Cuncurrency
//
//  Created by Sothesom on 12/12/1403.
//

//  اضافه کردم مرورگر سافاری داخل برنامه
 
import SwiftUI
import SafariServices

struct SFSafariViewWrapper: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<Self>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SFSafariViewWrapper>) {
        return
    }
}
