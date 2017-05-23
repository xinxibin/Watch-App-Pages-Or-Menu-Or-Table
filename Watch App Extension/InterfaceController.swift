//
//  InterfaceController.swift
//  Watch App Extension
//
//  Created by Xinxibin on 2017/5/12.
//  Copyright © 2017年 Xinxibin. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var table: WKInterfaceTable!

    let data = ["PAGES","ENUM"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        table.setNumberOfRows(data.count, withRowType: "XBCustomTableRow")
        
        for item in 0..<data.count {
            let tabRow = table.rowController(at: item) as! XBCustomTableRow
            tabRow.label.setText(data[item])
        }
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        
        if rowIndex == 0 {
            
            presentController(withNames: ["XBPageInterfaceController1",
                                          "XBPageInterfaceController2",
                                          "XBPageInterfaceController3",
                                          "XBPageInterfaceController4"], contexts: nil)
            
        }else {
            
            
            pushController(withName: "MENU", context: nil)
            
        }
    }
}
