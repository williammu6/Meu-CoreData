//
//  Contato.swift
//  Meu DataCore
//
//  Created by Student on 9/22/16.
//  Copyright © 2016 Uno. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Contato: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    convenience init (){
        let context = (UIApplication.shared.delegate as! AppDelegate).managedObjectContext
        
        let entityDescription = NSEntityDescription.entity(forEntityName: "Contato", in: context)
        
        self.init(entity: entityDescription!, insertInto: context)
    }
}
