//
//  TravelLogTableViewController.swift
//  travelLog
//
//  Created by Nick Reichard on 2/4/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//

import UIKit

class TravelLogTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

 
    }

   

   

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }
    
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}


