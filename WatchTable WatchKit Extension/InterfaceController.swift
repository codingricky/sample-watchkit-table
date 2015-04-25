//
//  InterfaceController.swift
//  WatchTable WatchKit Extension
//
//  Created by Ricky Yim on 25/04/2015.
//  Copyright (c) 2015 polymorphsolutions. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    let personData = ["Taylor" : 25, "Katy" : 30, "Ellie" : 28]
    
    @IBOutlet weak var table: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        table.setNumberOfRows(personData.count, withRowType: "tableRow")
        let keys = personData.keys.array
        for (index, key) in enumerate(keys) {
            let tableRow = table.rowControllerAtIndex(index) as! TableRow
            tableRow.nameLabel.setText(key)
            tableRow.ageLabel.setText(personData[key]!.description)
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
