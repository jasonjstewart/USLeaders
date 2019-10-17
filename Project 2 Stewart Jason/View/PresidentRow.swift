//
//  LeaderRow.swift
//  Project 2 Stewart Jason
//
//  Created by Student on 10/16/19.
//  Copyright © 2019 Student. All rights reserved.
//

import SwiftUI

struct PresidentRow: View {
    var president: President

    var body: some View {
        HStack {
          president.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(president.full_name)
            Spacer()
        }
    }
}

struct PresidentRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            //PresidentRow(president: presidentData[0])
            PresidentRow(president: presidentData[0])
//            PresidentRow(president: presidentData[1])
//            PresidentRow(president: presidentData[2])
//            PresidentRow(president: presidentData[42])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}