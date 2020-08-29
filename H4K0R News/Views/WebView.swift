//
//  WebView.swift
//  H4K0R News
//
//  Created by Vineal Viji Varghese on 25/07/20.
//  Copyright © 2020 Vineal Viji Varghese. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI
struct WebView: UIViewRepresentable {
    let urlString: String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrlString = urlString{
            if let safeUrl = URL(string: safeUrlString){
                let request = URLRequest(url: safeUrl)
                uiView.load(request)
            }
        }
    }
}
