//
//  ContatoDAO.swift
//  Meu DataCore
//
//  Created by Student on 9/22/16.
//  Copyright © 2016 Uno. All rights reserved.
//

import Foundation
import CoreData
import UIKit
class ContatoDAO{
    
    static func inserir(_ contato: Contato){
        let context = (UIApplication.shared.delegate as! AppDelegate).managedObjectContext
        
        context.insert(contato)
        
        do {
            try context.save()
            print ("Salvou!")
            
        } catch let erro as NSError {
            print(erro)
        }
    }
    
    static func alterar(){
        let context = (UIApplication.shared.delegate as! AppDelegate).managedObjectContext
        do {
            try context.save()
            print ("Alterou!")
            
        } catch let erro as NSError {
            print(erro)
        }
    }
    
    static func excluir(_ contato: Contato){
        let context = (UIApplication.shared.delegate as! AppDelegate).managedObjectContext
        do {
            try context.save()
            print ("Excluiu!")
            
        } catch let erro as NSError {
            print(erro)
        }
    }
    
    
    static func searchAll() -> [Contato] {
        let context = (UIApplication.shared.delegate as! AppDelegate).managedObjectContext
        
        var listaContatos: [Contato] = []
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Contato")
        request.sortDescriptors = [NSSortDescriptor.init(key: "nome", ascending: true)]
        
        do {
            listaContatos = try context.fetch(request) as! [Contato]
            print("Total de Contatos: ", listaContatos.count)
            
        } catch let erro as NSError {
            print(erro)
        }
        
        return listaContatos
        
    }
    
}
