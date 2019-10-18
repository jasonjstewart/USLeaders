//
//  PresidentList.swift
//  Project 2 Stewart Jason
//
//  Created by Student on 10/16/19.
//  Copyright © 2019 Student. All rights reserved.
//

import SwiftUI

struct PresidentList: View {
    
    var body: some View {
        TabView{
            PresidentListView()
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Presidents")
            }
            PresidentListView()
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Senators")
            }
            GovernorListView()
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Governors")
            }
        }
    }

}

struct PresidentList_Previews: PreviewProvider {
    static var previews: some View {
         ForEach(["iPhone XS Max"], id: \.self) { deviceName in
             PresidentList()
                 .previewDevice(PreviewDevice(rawValue: deviceName))
         }
    }
}

struct PresidentListView: View {
    var body: some View {
        NavigationView{
            List(presidentData) { president in
                NavigationLink(destination: PresidentDetail(president: president)){
                    PresidentRow(president: president)
                }
            }
            .navigationBarTitle(Text("Presidents"))
        }
    }
}

struct GovernorListView: View {
    var body: some View {
        NavigationView{
            List(governorData) { governor in
                NavigationLink(destination: GovernorDetail(governor: governor)){
                    GovernorRow(governor: governor)
                }
            }
            .navigationBarTitle(Text("Governors"))
        }
    }
}
