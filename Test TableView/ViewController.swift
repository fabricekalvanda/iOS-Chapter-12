//
//  ViewController.swift
//  Test TableView
//
//  Created by Brian Bansenauer on 5/2/19.
//  Copyright © 2019 Cascadia College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var dataSource:MyDataSource!
    @IBOutlet weak var myTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = dataSource
    }


}

