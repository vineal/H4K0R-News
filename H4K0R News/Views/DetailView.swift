//
//  DetailView.swift
//  H4K0R News
//
//  Created by Vineal Viji Varghese on 25/07/20.
//  Copyright © 2020 Vineal Viji Varghese. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url : String?
    var body: some View {
        WebView(urlString: url)
            .edgesIgnoringSafeArea(.all)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
