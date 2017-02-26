//
//  DefinitionViewController.swift
//  Emoji Dictionarz
//
//  Created by Christian Wasmer on 26/02/2017.
//  Copyright © 2017 Christian Wasmer. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "NO EMOJI"
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiOutlet.text = emoji
        
        if emoji == "🐿" {
            definitionLabel.text = "El Horno"
        }
        if emoji == "😎" {
            definitionLabel.text = "Coolio"
        }
                
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
