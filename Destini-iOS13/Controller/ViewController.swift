//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(storyNumber: 1)
    }
    
    @IBAction func choice1Chosen(_ sender: UIButton) {
        let consequence = story.getConsequences()["choice1Consequence"]!
        updateUI(storyNumber: consequence as! Int)
    }
    
    @IBAction func choice2Chosen(_ sender: UIButton) {
        let consequence = story.getConsequences()["choice2Consequence"]!
        updateUI(storyNumber: consequence as! Int)
    }
    
    func updateUI(storyNumber: Int) {
        let currentStory = story.getStory(storyNumber)
        choice1Button.setTitle(currentStory["choice1"] as? String, for: .normal)
        choice2Button.setTitle(currentStory["choice2"] as? String, for: .normal)
        storyLabel.text = currentStory["title"] as? String
    }
    
}
