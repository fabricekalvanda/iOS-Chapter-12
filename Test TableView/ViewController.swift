//
//  ViewController.swift
//  Test TableView
//
//  Created by Brian Bansenauer on 5/2/19.
//  Copyright © 2019 Cascadia College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var dataSource:CityDataSource!
    @IBOutlet weak var myTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = dataSource
        
        //TODO:  Set the MyTableView's rowHeight to UITableView.automaticDimension
        //        and set its estimatedRowHeight to 65
    }


}

