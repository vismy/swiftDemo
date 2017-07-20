//
//  CellType2.swift
//  KindsOfTable
//
//  Created by macPro on 2017/7/19.
//  Copyright © 2017年 macPro. All rights reserved.
//

import Foundation
import UIKit

class CellType2:UITableViewCell, TableViewCellProtocol {
    func doSomething(){
        self.backgroundColor = UIColor.blue
    }
    
    func setModel(str:String) {
        self.textLabel?.text = str
    }
}
