//
//  MyDataSource.swift
//  Test TableView
//
//  Created by Brian Bansenauer on 5/2/19.
//  Copyright © 2019 Cascadia College. All rights reserved.
//

import UIKit

class MyDataSource: NSObject, UITableViewDataSource {
    let data = ["New York, NY", "Los Angeles, CA", "Chicago, IL", "Houston, TX", "Philadelphia, PA", "Phoenix, AZ", "San Diego, CA", "San Antonio, TX", "Dallas, TX", "Detroit, MI", "San Jose, CA", "Indianapolis, IN", "Jacksonville, FL", "San Francisco, CA", "Columbus, OH", "Austin, TX", "Memphis, TN", "Baltimore, MD", "Charlotte, ND", "Seattle, WA"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Fetch a cell of the appropriate type.
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableCellReuseId", for: indexPath)
        
        // Configure the cell’s contents and return cell.
        cell.textLabel!.text = data[indexPath.row]
        return cell
    }
    

}
