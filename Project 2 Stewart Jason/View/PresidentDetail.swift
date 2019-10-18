//
//  PresidentDetail.swift
//  Project 2 Stewart Jason
//
//  Created by Student on 10/16/19.
//  Copyright © 2019 Student. All rights reserved.
//
//{

import SwiftUI

struct PresidentDetail: View {
    var president: President

    @State var ShowWebView = false

    var body: some View {
        NavigationView{
            VStack {
                CircleImage(image: president.image)
                    .offset(y: 25)
                    .padding(.bottom, 25)

                VStack(alignment: .leading) {
                    Text(president.full_name)
                        .font(.title)
                        Text("Political Party:").bold().font(.subheadline)
                        Text("\(president.party)")
                            .font(.subheadline)
                        Text("Life Span:").bold().font(.subheadline)
                        Text("\(president.birth_year)"+" to "+"\(president.death_year ?? 2019)")
                            //THIS NEEDS TO BE CHANGED TO A STRING THAT SAYS PRESENT
                            .font(.subheadline)
                        Text("Year Took Office:").bold().font(.subheadline)
                    Text("\(president.took_office) to \(president.left_office ?? "Present")")
                            .font(.subheadline)
                        Text("Biography:").bold().font(.subheadline)
                        Text(president.biography)
                            .font(.subheadline)
                }
                .padding()

                Spacer()
            }
            .navigationBarTitle(Text(president.full_name), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {self.ShowWebView = true}){
                Text("Wiki")
            })
        }
        .sheet(isPresented: self.$ShowWebView){
            NavigationView {
                    
                WebView(request: URLRequest(url: self.president.website.url))
//                    {
//                        self.ShowWebView = false
//                    }
                .navigationBarTitle("Title")
//                .navigationBarItems(trailing: Button(action: {}))
                //self.onDismiss()
            }

        }
    }
}

struct PresidentDetail_Preview: PreviewProvider {
    static var previews: some View {
        PresidentDetail(president: presidentData[35])
    }
}

