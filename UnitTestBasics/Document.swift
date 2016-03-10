//
//  Document.swift
//  UnitTestBasics
//
//  Created by Cícero Camargo on 10/03/16.
//  Copyright © 2016 Cícero Camargo. All rights reserved.
//

import Foundation

class Document {
    var id: UInt = 0
    var name = ""
    var created = NSDate()
    var updated = NSDate()
    
    init?(dictionary: Dictionary<String, AnyObject>) {
        
        guard let id = dictionary["id"] as? UInt else {
            print("can't read 'id'")
            return nil
        }
        guard let name = dictionary["name"] as? String else {
            print("can't read 'name'")
            return nil
        }
        guard let createdString = dictionary["created"] as? String else {
            print("can't read 'created'")
            return nil
        }
        guard let updatedString = dictionary["updated"] as? String else {
            print("can't read 'updated'")
            return nil
        }
        
        let dateFormatter = NSDateFormatter()
        
        guard let created = dateFormatter.dateFromString(createdString) else {
            print("can't parse 'created' date")
            return nil
        }
        guard let updated = dateFormatter.dateFromString(updatedString) else {
            print("can't parse 'udpated' date")
            return nil
        }
        
        self.id = id
        self.name = name
        self.created = created
        self.updated = updated
    }
}