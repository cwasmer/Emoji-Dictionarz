//
//  DefinitionViewController.swift
//  Emoji Dictionarz
//
//  Created by Christian Wasmer on 26/02/2017.
//  Copyright © 2017 Christian Wasmer. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiOutlet: UILabel!
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiOutlet.text = emoji.stringEmoji
        yearLabel.text = "Born in: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
}
