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
    
    var emojis = ["😎","🐿","🌰","🦁","🐰","🐹","🦄"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        myEmojiTableView.dataSource = self
        myEmojiTableView.delegate = self
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

