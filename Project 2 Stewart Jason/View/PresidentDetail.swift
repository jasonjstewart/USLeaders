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
    
//Used to show and hide the modal popover of the wiki page
    @State var ShowWebView = false

        //The body of the view which include personal information
    var body: some View {
        NavigationView{
            VStack {
                CircleImage(image: president.image)
                    .offset(y: 25)
                    .padding(.bottom, 25)
                List{
                VStack(alignment: .leading) {
                    Text(president.full_name)
                        .font(.title)
                        Text("Political Party:").bold().font(.subheadline)
                        Text("\(president.party)")
                            .font(.subheadline)
                            //THIS NEEDS TO BE CHANGED TO A STRING THAT SAYS PRESENT
                            .font(.subheadline)
                        Text("Term:").bold().font(.subheadline)
                    Text("\(president.took_office) to \(president.left_office ?? "Present")")
                            .font(.subheadline)
                        Text("Biography:").bold().font(.subheadline)

                        Text(president.biography)
                            .font(.subheadline)
                    }
                }
                .padding()
            }
        }
            .navigationBarTitle(Text(president.full_name), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {self.ShowWebView = true}){
                 Image(systemName: "globe").imageScale(.large)
            })
        .sheet(isPresented: self.$ShowWebView){
                 VStack(alignment: .leading){
                  Button(action: {
                      self.ShowWebView = false
                  })
                  {
                      Text("Done")
                          .fontWeight(.bold)
                  }.padding(.leading)
                      .padding(.top)
                      WebView(request: URLRequest(url: self.president.website.url))
              }
        }
    }
}

struct PresidentDetail_Preview: PreviewProvider {
    static var previews: some View {
        PresidentDetail(president: presidentData[35])
    }
}

