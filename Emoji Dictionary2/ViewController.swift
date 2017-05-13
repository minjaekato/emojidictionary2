//
//  ViewController.swift
//  Emoji Dictionary2
//
//  Created by 河東ミンジェ on 2017/05/13.
//  Copyright © 2017 Edutainers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacootableview: UITableView!
    
    var emojis = ["😀","😡","😱","🤖","😎","👠"]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        dacootableview.dataSource = self
        dacootableview.delegate = self
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        //print(indexPath.row)
        let cell = UITableViewCell()
        
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

