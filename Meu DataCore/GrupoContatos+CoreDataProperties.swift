//
//  GrupoContatos+CoreDataProperties.swift
//  Meu DataCore
//
//  Created by Student on 9/22/16.
//  Copyright © 2016 Uno. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension GrupoContatos {

    @NSManaged var descricao: String?
    @NSManaged var contato: NSSet?

}
