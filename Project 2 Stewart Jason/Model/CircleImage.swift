//
//  CircleImage.swift
//  Project 2 Stewart Jason
//
//  Created by Student on 10/16/19.
//  Copyright © 2019 Student. All rights reserved.
//

import SwiftUI


struct CircleImage: View {
    var image: Image

    var body: some View {
        image
            .resizable()
            .frame(width: 200.0, height: 200.0)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}
struct CircleImage_Preview: PreviewProvider {
    static var previews: some View {
        CircleImage(image: presidentData[0].image)
    }
}


