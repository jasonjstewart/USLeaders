//
//  GovernorDetail.swift
//  Project 2 Stewart Jason
//
//  Created by Student on 10/16/19.
//  Copyright © 2019 Student. All rights reserved.
//
//{

import SwiftUI

struct GovernorDetail: View {
    var governor: Governor

    @State var ShowWebView = false

    var body: some View {
        NavigationView{
            VStack {
                CircleImage(image: governor.image)
                    .offset(y: 25)
                    .padding(.bottom, 25)

                VStack(alignment: .leading) {
                    Text(governor.name)
                        .font(.title)
                        Text("Political Party:").bold().font(.subheadline)
                        Text("\(governor.party)")
                            .font(.subheadline)
                        Text("Life Span:").bold().font(.subheadline)
                        Text("\(governor.date_of_birth)"+" to Present")
                            //THIS NEEDS TO BE CHANGED TO A STRING THAT SAYS PRESENT
                            .font(.subheadline)
                        Text("Year Took Office:").bold().font(.subheadline)
                    Text("\(governor.entered_office) to \(governor.term_end)")
                            .font(.subheadline)
                        Text("Biography:").bold().font(.subheadline)
                        Text(governor.biography)
                            .font(.subheadline)
                }
                .padding()

                Spacer()
            }
            .navigationBarTitle(Text(governor.name), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {self.ShowWebView = true}){
                Text("Wiki")
            })
        }
        .sheet(isPresented: self.$ShowWebView){
            NavigationView {
                    
                WebView(request: URLRequest(url: self.governor.website.url))
//                    {
//                        self.ShowWebView = false
//                    }
                    .navigationBarTitle("\(self.governor.name)")
//                .navigationBarItems(trailing: Button(action: {}))
                //self.onDismiss()
            }

        }
    }
}

struct GovernorDetail_Preview: PreviewProvider {
    static var previews: some View {
        GovernorDetail(governor: governorData[50])
    }
}

