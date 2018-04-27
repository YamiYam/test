//
//  nameViewController.swift
//  AttendenceApp
//
//  Created by Ian Hatlewick on 4/24/18.
//  Copyright © 2018 Ian Hatlewick. All rights reserved.
//

import UIKit

class nameViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var names = [Name]()
    
    override func viewDidLoad() {
        
        names = [
            Name(name: "Jeff Jefferson"),
            Name(name: "Henry Henryson"),
            Name(name: "Steve Steverson"),
            Name(name: "Joe Joerson")
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
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let name = names[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = name.name
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
