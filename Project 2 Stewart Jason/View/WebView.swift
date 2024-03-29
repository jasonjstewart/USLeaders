//
//  WebView.swift
//  Project 2 Stewart Jason
//
//  Created by Student on 10/17/19.
//  Copyright © 2019 Student. All rights reserved.
//

import SwiftUI
import WebKit
  
//VIEW to display a website on a view
struct WebView : UIViewRepresentable {
      
    //var onDismiss: () -> ()
    let request: URLRequest
      
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
      
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

//Preview
struct WebView_Previews : PreviewProvider {
    static var previews: some View {
        //WebView(request: URLRequest(url: URL(string: "https://www.byu.edu")!))
        WebView(request: URLRequest(url: "https://www.byu.edu".url))
    }
}
