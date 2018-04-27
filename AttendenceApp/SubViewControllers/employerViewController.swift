//
//  employerViewController.swift
//  AttendenceApp
//
//  Created by Ian Hatlewick on 4/24/18.
//  Copyright © 2018 Ian Hatlewick. All rights reserved.
//

import UIKit

class employerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var employers = [Employer]()
    
    override func viewDidLoad() {
        
        employers = [
            Employer(name: "Mc Donalds"),
            Employer(name: "Sonic"),
            Employer(name: "The nearest dennys"),
            Employer(name: "State Farm")
        ]
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let employer = employers[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = employer.name
        return cell
        
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
