//
//  setTimeViewController.swift
//  crepuscular
//
//  Created by Yishai Basserabie on 2018/09/14.
//  Copyright © 2018 Yishai Basserabie. All rights reserved.
//

import UIKit
import FirebaseUI
import FirebaseCore
import FirebaseDatabase

class setTimeViewController: UIViewController {
    
    @IBOutlet weak var hourTextField: UITextField!
    @IBOutlet weak var minutesTextField: UITextField!
    @IBOutlet weak var AMPMSegmentedControl: UISegmentedControl!
    
    //declares boolean checking if AM
    var isAM = true
    //accesses the email of the current user and stores it in a var
    var userID: String = (Auth.auth().currentUser?.uid)!
    
    //declares a reference to database
    var ref: DatabaseReference?

    override func viewDidLoad() {
        super.viewDidLoad()
        //initialises reference to database connecting to googleService-info.plist
        ref = Database.database().reference()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setEmailInDatabaseInTimes() {
        //sets email in these children
        ref?.child("times").child("userIDs").setValue((Auth.auth().currentUser?.email)!)
    }
    
    @IBAction func isAM(_ sender: UISegmentedControl) {
        //flips value of boolean
        isAM = !isAM
    }
    
    // TODO: fix pushing of time to database
    @IBAction func setTime(_ sender: UIButton) {
        //sets directory to current user
        
    }
    
}
