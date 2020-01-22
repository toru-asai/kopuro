//
//  PostDetailView.swift
//  kopuro
//
//  Created by junpei ono on 2020/01/22.
//  Copyright © 2020 坂本雅大. All rights reserved.
//

import SwiftUI
import WebKit


struct XXX: UIViewRepresentable {
    var loadUrl:String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: loadUrl)!))
    }
}


struct PostDetailView: View {
    let post: Post
    var body: some View {
        XXX(loadUrl: post.link)
            .navigationBarTitle("", displayMode: .inline)
            .edgesIgnoringSafeArea(.top)
    }
}


