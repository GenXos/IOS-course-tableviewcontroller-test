//
//  myTableVC.swift
//  tableviewcontroller-test
//
//  Created by Todd Fields on 2015-12-19.
//  Copyright © 2015 Todd Fields. All rights reserved.
//

import UIKit

class myTableVC: UITableViewController {

  
    var cars = ["BMW", "Ford", "Chevy", "Volvo", "Subaru"]
  
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }

  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("carCell", forIndexPath: indexPath)
      
        cell.textLabel?.text = cars[indexPath.row]
        cell.detailTextLabel?.text = "I like my \(cars[indexPath.row])"

        return cell
    }

}
