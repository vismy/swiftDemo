//
//  TableCellFactory.swift
//  KindsOfTable
//
//  Created by macPro on 2017/7/19.
//  Copyright © 2017年 macPro. All rights reserved.
//

import Foundation
import UIKit

public let CELL_TYPE_1:String = "CellType1"
public let CELL_TYPE_2:String = "CellType2"
public let CELL_TYPE_3:String = "CellType3"
public let CELL_TYPE_4:String = "CellType4"
public let CELL_TYPE_5:String = "CellType5"


class TableFactory: NSObject,UITableViewDelegate,UITableViewDataSource {
    var arr:Array<String>?
    var dic:Dictionary<Int,Array<String>>?
    
    override init() {
        super.init()
        self.getDic()
        
    }
    
    func getCell(tableView:UITableView,type:Int) -> TableViewCellProtocol? {
        
        if type==0 {
            return tableView.dequeueReusableCell(withIdentifier: CELL_TYPE_1) as? TableViewCellProtocol
        }else if type==1{
            return tableView.dequeueReusableCell(withIdentifier: CELL_TYPE_2) as? TableViewCellProtocol
        }else if type==2{
            return tableView.dequeueReusableCell(withIdentifier: CELL_TYPE_3) as? TableViewCellProtocol
        }else if type==3{
            return tableView.dequeueReusableCell(withIdentifier: CELL_TYPE_4) as? TableViewCellProtocol
        }else if type==4{
            return tableView.dequeueReusableCell(withIdentifier: CELL_TYPE_5) as? TableViewCellProtocol
        }else{
            return nil
        }
        
    }

    
    ///UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return (dic?.keys.count)!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (dic?[section]?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCellProtocol = self.getCell(tableView:tableView,type: indexPath.section) as! TableViewCellProtocol
        let a:Array = self.dic![indexPath.section]!
        let str:String = a[indexPath.row]
        cell.setModel(str:str)
    
        return cell as! UITableViewCell
    }
    
    
    ///UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell:TableViewCellProtocol = tableView.cellForRow(at: indexPath)! as! TableViewCellProtocol
        
        cell.doSomething()
        
        
    }
    
    
    
    /**模拟获取数据**/
    func getDic(){
        dic = Dictionary(dictionaryLiteral: (0,getData1()),(1,getData2()),(2,getData3()),(3,getData4()),(4,getData5())) as? Dictionary<Int, Array<String>>
        
    }
    
    
    func getData1() -> Array<Any> {
        return ["cell1","cell1"]
        
    }
    func getData2() -> Array<Any> {
        return ["cell2","cell2"]
        
        
    }
    
    func getData3() -> Array<Any> {
        return ["cell3","cell3"]
        
        
    }
    
    func getData4() -> Array<Any> {
        return ["cell4","cell4"]
        
        
    }
    
    func getData5() -> Array<Any> {
        return ["cell5","cell5"]
        
        
    }
    
    
    
}
