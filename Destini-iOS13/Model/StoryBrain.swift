//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber = 1
    
    let allStories = [
        1: [
            "title": "You see a fork on the road",
            "choice1": [
                "label": "Take a left",
                "consequence": 2
            ],
            "choice2": [
                "label": "Take a right",
                "consequence": 3
            ]
        ],
        2: [
            "title": "You see a tiger",
            "choice1": [
                "label": "Shout for help",
                "consequence": 1
            ],
            "choice2": [
                "label": "Play dead",
                "consequence": 1
            ]
        ],
        3: ["title": "You find a treasure chest",
             "choice1": [
                "label":  "Open it",
                "consequence": 1
            ],
             "choice2": [
                "label": "Check for traps",
                "consequence": 1
            ]
        ]
    ]
    
    mutating func getStory(_ storyNumber: Int) -> [String: Any] {
        let title = allStories[storyNumber]?["title"]
        let choice1 = (allStories[storyNumber]?["choice1"] as! [String: Any])["label"] as? String
        let choice2 = (allStories[storyNumber]?["choice2"] as! [String: Any])["label"] as? String
        self.storyNumber = storyNumber
        return ["title": title!, "choice1": choice1!,"choice2": choice2!]
    }
    
    mutating func getConsequences() -> [String: Any] {
        let choice1Consequence = (allStories[storyNumber]?["choice1"] as! [String: Any])["consequence"] as? Int
        let choice2Consequence = (allStories[storyNumber]?["choice2"] as! [String: Any])["consequence"] as? Int
        
        return ["choice1Consequence": choice1Consequence!, "choice2Consequence": choice2Consequence!]
    }
}
