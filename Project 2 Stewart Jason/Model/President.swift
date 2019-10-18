//
//  Leader.swift
//  Project 2 Stewart Jason
//
//  Created by Student on 10/16/19.
//  Copyright © 2019 Student. All rights reserved.
//
import SwiftUI
import CoreLocation


struct President: Hashable, Codable, Identifiable {
    var id: Int
    var full_name: String
    var birth_year: Int
    var death_year: Int?
    var took_office: String
    var left_office: String?
    var party: String
    var image_name: String
    var biography: String
    var website: String
//    var url = "https://en.wikipedia.org/"+full_name.replacingOccurrences(of: " ", with: "_")

}

extension President {
    var image: Image {
        ImageStore.shared.image(name: image_name)
    }
}
