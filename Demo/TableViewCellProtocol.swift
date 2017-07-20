//
//  TableViewCellProtocol.swift
//  KindsOfTable
//
//  Created by macPro on 2017/7/19.
//  Copyright © 2017年 macPro. All rights reserved.
//

import Foundation
import UIKit





//定义cell的共有协议，实现多态响应
protocol TableViewCellProtocol {
    func doSomething()
    
    func setModel(str:String) 
//    func changeColor(cls:AnyClass) 
}
