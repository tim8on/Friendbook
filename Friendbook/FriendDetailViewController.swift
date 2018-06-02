//
//  FriendDetailViewController.swift
//  Friendbook
//
//  Created by Tim Aton on 6/2/18.
//  Copyright © 2018 Tim Aton. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {

    //add top label from UI
    @IBOutlet weak var nameLabel: UILabel!
    
    //add bottom label from UI
    @IBOutlet weak var birthdayLabel: UILabel!
    
    //create variable to pass info into
    var name = "name"
    var birthday = "title"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //change the labels to what's contained in the variables
        self.nameLabel.text = self.name
        self.birthdayLabel.text = self.birthday
    }

}
