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
    
    //make a list of "friends" - an array
    let myFriends = ["Hannah","Alec","Lindsay","Melissa", "Jeremy", "Ramsey"]
    
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
        
        //make as many rows as there are friends in the array
        return self.myFriends.count
    }
    
    //what's in a row - aka a cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        //display each friend in a row
        cell.textLabel!.text = myFriends[indexPath.row]
        
        return cell
    }
    
}
