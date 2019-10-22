//
//  PresidentDetail.swift
//  Project 2 Stewart Jason
//
//  Created by Student on 10/16/19.
//  Copyright © 2019 Student. All rights reserved.
//
//{
//

import SwiftUI

//Governor Detail Page
struct GovernorDetail: View {
    var governor: Governor

    
    //Used to show and hide the modal popover of the wiki page
    @State var ShowWebView = false

        //The body of the view which include personal information
    var body: some View {
        NavigationView{
            VStack {
                CircleImage(image: governor.image)
                    .offset(y: 25)
                    .padding(.bottom, 25)
                List{
                VStack(alignment: .leading) {
                    Text(governor.name)
                        .font(.title)
                        Text("Political Party:").bold().font(.subheadline)
                        Text("\(governor.party)")
                            .font(.subheadline)
                            //THIS NEEDS TO BE CHANGED TO A STRING THAT SAYS PRESENT
                            .font(.subheadline)
                        Text("Term:").bold().font(.subheadline)
                    Text("\(governor.entered_office) to \(governor.term_end)")
                            .font(.subheadline)
                        Text("Biography:").bold().font(.subheadline)

                        Text(governor.biography)
                            .font(.subheadline)
                    }
                }
                .padding()
            }
        }
            .navigationBarTitle(Text(governor.name), displayMode: .inline)
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
                      WebView(request: URLRequest(url: self.governor.website.url))
              }
        }
    }
}

struct GovernorDetail_Preview: PreviewProvider {
    static var previews: some View {
        GovernorDetail(governor: governorData[4])
    }
}

