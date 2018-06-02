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
    let myFriends = ["Hanna","Alec","Lindsay","Melissa"]
    
    //make a variable to hold which friend was chosen
    var selectedFriend = "chosen one"
    
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
    
    //move to the detail screen when a friend is chosen
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //changes the selected friend variable to the one the user chose in the table
        self.selectedFriend = myFriends[indexPath.row]
        
        //move to the detail screen (using the segue)
        self.performSegue(withIdentifier: "friendListToFriendDetailSegue", sender: self)
    }
    
    //pass the name into the detail screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! FriendDetailViewController
        detailViewController.name = self.selectedFriend
        
        //change the "birthdays" for each friend
        if self.selectedFriend == "Hanna" {
            detailViewController.birthday = "Project Manager"
        } else if self.selectedFriend == "Alec" {
            detailViewController.birthday = "Media Buyer"
        } else if self.selectedFriend == "Lindsay" {
            detailViewController.birthday = "Media Buyer"
        } else if self.selectedFriend == "Melissa" {
            detailViewController.birthday = "Graphic Designer"
        }
    }
    
}
