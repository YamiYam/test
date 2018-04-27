//
//  signInViewController.swift
//  AttendenceApp
//
//  Created by Ian Hatlewick on 4/24/18.
//  Copyright © 2018 Ian Hatlewick. All rights reserved.
//

import UIKit

class signInViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var clusterLabel: UILabel!
    @IBOutlet weak var workshopLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var employerLabel: UILabel!
    
    var clusterInputText = ""
    var workshopInputText = ""
    var nameInputText = ""
    var employerInputText = ""
    
    
    
    
    override func viewDidLoad() {
        
        if clusterInputText.isEmpty {
            clusterLabel.text = "Select Cluster"
        }
        else {
            clusterLabel.text = clusterInputText
        }
       
        if workshopInputText.isEmpty {
            workshopLabel.text = "Select Workshop"
        }
        else {
            workshopLabel.text = workshopInputText
        }
        
        if nameInputText.isEmpty {
            nameLabel.text = "Select Name"
        }
        else {
            nameLabel.text = nameInputText
        }
       
        if employerInputText.isEmpty {
            employerLabel.text = "Select Employer"
        }
        else {
            employerLabel.text = employerInputText
        }
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
