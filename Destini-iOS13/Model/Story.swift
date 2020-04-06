//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Choice {
    let label: String
    let consequence: Int
}

struct Story {
    let id: Int
    let title: String
    let choice1: Choice
    let choice2: Choice
}
