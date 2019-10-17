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

struct PresidentList_Previews: PreviewProvider {
    static var previews: some View {
         ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
             PresidentList()
                 .previewDevice(PreviewDevice(rawValue: deviceName))
         }
    }
}
