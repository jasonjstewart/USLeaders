//
//  SenatorRow.swift
//  Project 2 Stewart Jason
//
//  Created by Student on 10/17/19.
//  Copyright © 2019 Student. All rights reserved.
//

import SwiftUI

//Row for all of the governors, include picture and information
struct GovernorRow: View {
    var governor: Governor

    var body: some View {
        //VStack( alignment: .leading){
            HStack{
                governor.image
                .resizable()
                .frame(width: 50, height: 50)
                VStack( alignment: .leading){
                    HStack {
                      
                        Text(governor.name).bold()
                        Spacer()
                    }
                    HStack {
                        Text(governor.state_name).font(.subheadline)
                        Text(governor.party.capitalized)
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                    }
                }
            }
      //  }
    }
}

struct GovernorRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            //PresidentRow(president: presidentData[0])
            GovernorRow(governor: governorData[19])
//            PresidentRow(president: presidentData[2])
//            PresidentRow(president: presidentData[42])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
