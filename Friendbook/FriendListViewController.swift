//
//  FriendListViewController.swift
//  Friendbook
//
//  Created by Tim Aton on 6/2/18.
//  Copyright © 2018 Tim Aton. All rights reserved.
//

import UIKit

//add "UITableViewDataSource" and "UITableViewDelegate"
//need to answer how many rows and what's in each row
class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //control drag table view to connect it to the code
    @IBOutlet weak var tableView: UITableView!
    
    //Something that happens when the app first loads the first screen.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Do any additional setup after loading the view.
        
        //Saying that the data for the table is going to come from itself.
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    //how many rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //what's in a row - aka a cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = "yo"
        return cell
    }
    
}
