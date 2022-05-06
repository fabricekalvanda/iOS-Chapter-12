//
//  MyDataSource.swift
//  Test TableView
//
//  Created by Brian Bansenauer on 5/2/19.
//  Copyright © 2019 Cascadia College. All rights reserved.
//

import UIKit

class CityDataSource: NSObject, UITableViewDataSource {
    let data = ["Seattle, WA", "New York, NY", "Los Angeles, CA", "Chicago, IL", "San Francisco, CA", "Houston, TX", "Philadelphia, PA", "Phoenix, AZ", "San Diego, CA", "San Antonio, TX", "Dallas, TX", "Detroit, MI", "San Jose, CA", "Indianapolis, IN", "Jacksonville, FL", "Columbus, OH", "Austin, TX", "Memphis, TN", "Baltimore, MD", "Charlotte, ND"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Fetch a cell of the appropriate type.
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableCellReuseId", for: indexPath) as! MyTableViewCell
        
        //TODO: comment out this configuration for the default cell
        //cell.textLabel!.text = data[indexPath.row]
        
        let item: String = data[indexPath.row]
        
        cell.City.font = .preferredFont(forTextStyle: .largeTitle)
        cell.State.font = .preferredFont(forTextStyle: .largeTitle)
        
        cell.City.text = item.components(separatedBy: ", ")[0]
        cell.State.font = item.components(separatedBy: ", ")[1]
        
        //TODO: Configure the custom cell’s city and state UILables' text value using the data array item
        //let item:String = data[indexPath.row] //the first item is "Seattle, WA"
        //HINT: Use the Developer Documentation window to serach for .components(separatedBy


        return cell
    }
    

}
