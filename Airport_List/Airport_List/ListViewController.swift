//
//  ListViewController.swift
//  Airport_List
//
//  Created by Pong on 2017/5/30.
//  Copyright © 2017年 Pong. All rights reserved.
//

import UIKit
import Foundation

class ListViewController: UITableViewController {
    
    
    let path = Bundle.main.path(forResource: "airports", ofType: "plist")!
    var airportList : Data {
        return Data(contentsOfFile: path)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.airportList.countryList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.airportList.countryList[section].airports.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.airportList.countryList[section].name
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AirportCell", for: indexPath) as! TableViewCell
        let tmp = self.airportList.countryList[indexPath.section].airports[indexPath.row]
        cell.NameLabel.text = tmp.name
        cell.IATALabel.text = tmp.IATA
        cell.CountryLabel.text = tmp.countryName
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! DetailViewController
                let tmp = self.airportList.countryList[indexPath.section].airports[indexPath.row]
                destinationController.navigationItem.title = tmp.IATA
                destinationController.nameLabeltmp = tmp.name
                destinationController.countryNametmp = tmp.countryName
                destinationController.cityNametmp = tmp.servedCity
                destinationController.imageViewtmp = tmp.IATA + ".jpg"
            }
        }
    }
}
