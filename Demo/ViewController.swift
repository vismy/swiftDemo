//
//  ViewController.swift
//  Demo
//
//  Created by vis on 2017/7/21.
//  Copyright © 2017年 vis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var factory:TableFactory?
    var tableView :UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        factory = TableFactory()
        
        tableView = UITableView(frame: self.view.frame, style: UITableViewStyle.grouped)
        tableView?.delegate = factory
        tableView?.dataSource = factory
        tableView?.register(CellType1.self, forCellReuseIdentifier: CELL_TYPE_1)
        tableView?.register(CellType1.self, forCellReuseIdentifier: CELL_TYPE_2)
        tableView?.register(CellType1.self, forCellReuseIdentifier: CELL_TYPE_3)
        tableView?.register(CellType1.self, forCellReuseIdentifier: CELL_TYPE_4)
        tableView?.register(CellType1.self, forCellReuseIdentifier: CELL_TYPE_5)
        self.view.addSubview(tableView!)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

