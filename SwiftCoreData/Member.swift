//
//  Member.swift
//  SwiftCoreData
//
//  Created by 有村 琢磨 on 2015/07/17.
//  Copyright (c) 2015年 有村 琢磨. All rights reserved.
//

import UIKit
import CoreData

class Member: NSManagedObject {
    
    @NSManaged var timeStamp :NSDate?
    @NSManaged var name :String?
    @NSManaged var campName :String?
    @NSManaged var cource :String?
    
}
