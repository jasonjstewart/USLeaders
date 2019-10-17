//
//  PresidentDetail.swift
//  Project 2 Stewart Jason
//
//  Created by Student on 10/16/19.
//  Copyright © 2019 Student. All rights reserved.
//
//{
//  "id": 1,
//  "full_name": "George Washington",
//  "birth_year": 1732,
//  "death_year": 1799,
//  "took_office": "1789-04-30",
//  "left_office": "1797-03-04",
//  "party": "No Party",
//  "image_name": "US-President_01"
//},
import SwiftUI

struct PresidentDetail: View {
    var president: President

    var body: some View {
        VStack {
            CircleImage(image: president.image)
                .offset(y: 0)
                .padding(.bottom, 0)

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
                Text("\(president.took_office)"+" to "+"\(president.left_office ?? "Present")")
                        .font(.subheadline)
//                    Text("\(president.left_office)")
//                        .font(.subheadline)
                    Text("Biography:").bold().font(.subheadline)
                    Text(president.biography)
                        .font(.subheadline)
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(president.full_name), displayMode: .inline)
    }
}

struct PresidentDetail_Preview: PreviewProvider {
    static var previews: some View {
        PresidentDetail(president: presidentData[16])
    }
}

