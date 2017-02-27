//
//  ViewController.swift
//  Emoji Dictionarz
//
//  Created by Christian Wasmer on 26/02/2017.
//  Copyright © 2017 Christian Wasmer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{

    @IBOutlet weak var myEmojiTableView: UITableView!

    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        myEmojiTableView.dataSource = self
        myEmojiTableView.delegate = self
        emojis = makeEmojiArray()
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2001
        emoji1.category = "Smiley"
        emoji1.definition = "Cool dude with sunglasses"

        let emoji2 = Emoji()
        emoji2.stringEmoji = "🐿"
        emoji2.birthYear = 1985
        emoji2.category = "Cute animal"
        emoji2.definition = "El Horno"

        let emoji3 = Emoji()
        emoji3.stringEmoji = "🦁"
        emoji3.birthYear = 1980
        emoji3.category = "Predator"
        emoji3.definition = "Loewi"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🌰"
        emoji4.birthYear = 212
        emoji4.category = "Hoernchen-food"
        emoji4.definition = "Hazelnut"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🦄"
        emoji5.birthYear = 2015
        emoji5.category = "Fantasy"
        emoji5.definition = "Unicorn"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
    }
    
}

