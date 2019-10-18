//
//  Senator.swift
//  Project 2 Stewart Jason
//
//  Created by Student on 10/17/19.
//  Copyright © 2019 Student. All rights reserved.
//

import SwiftUI
import CoreLocation


struct Governor: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var date_of_birth: String
    var entered_office: String
    var term_end: String
    var party: String
    var photo_url: String
    var biography: String
    var website: String
    var state_name: String
    var state_code: String
    var name_slug: String
}

extension Governor {
    var image: Image {
        ImageStore.shared.image(name: name_slug)
    }
}

