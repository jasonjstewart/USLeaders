//
//  PresidentList.swift
//  Project 2 Stewart Jason
//
//  Created by Student on 10/16/19.
//  Copyright © 2019 Student. All rights reserved.
//

import SwiftUI

//Content VIEW 
struct LeaderList: View {
    
    var body: some View {
        TabView{
            PresidentListView()
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Presidents")
            }
            SenatorListView()
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

//PREVIEW
struct LeaderList_Previews: PreviewProvider {
    static var previews: some View {
         ForEach(["iPhone XS Max"], id: \.self) { deviceName in
             LeaderList()
                 .previewDevice(PreviewDevice(rawValue: deviceName))
         }
    }
}


//TAB VIEWS
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

struct SenatorListView: View {
    var body: some View {
        NavigationView{
            List(senatorData) { senator in
                NavigationLink(destination: SenatorDetail(senator: senator)){
                    SenatorRow(senator: senator)
                }
            }
            .navigationBarTitle(Text("Senators"))
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
