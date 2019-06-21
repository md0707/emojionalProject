//
//  ViewController.swift
//  emojionalProject
//
//  Created by Apple on 6/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel!.text!
        let emojiMessage = customMessages[emojis[selectedEmotion]!]![Int.random(in: 0...1)]
        let alertController = UIAlertController(title: "Alert", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        //let randomMessage = customMessages.randomElement()
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

    let emojis = ["😢": "sad", "😊": "happy"]
    
    let customMessages = ["sad" : ["take a deep breath!", "it'll be okay!"], "happy" : ["that's awesome!", "that's great!"]]
    
}

