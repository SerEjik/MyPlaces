//
//  MainViewController.swift
//  MyPlaces
//
//  Created by serejik on 10/9/19.
//  Copyright © 2019 serejik. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantName = [
        "Texa's Burger", "Chillintano", "Mellrouse",
        "Friend's cafe", "Grill&Bar", "Casta Burger",
        "KFC", "Mafia", "Star Burger's", "Sushia"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
 
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = restaurantName[indexPath.row]
        
        cell.imageView?.image = UIImage(named: restaurantName[indexPath.row])

        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
