//
//  ViewController.swift
//  Meu DataCore
//
//  Created by Student on 9/22/16.
//  Copyright © 2016 Uno. All rights reserved.
//

import UIKit
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

fileprivate func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l > r
  default:
    return rhs < lhs
  }
}


class ViewController: UIViewController {

    @IBOutlet weak var nomeIncluir: UITextField!
    @IBOutlet weak var emailIncluir: UITextField!
    
    var contato: Contato?
    var listaContatos: [Contato]?
    
    @IBOutlet weak var nomeAlterar: UITextField!
    @IBOutlet weak var emailAlterar: UITextField!
    
    @IBOutlet weak var nomeExcluir: UITextField!
    @IBOutlet weak var emailExcluir: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Inserir(_ sender: AnyObject) {
        contato = Contato()
        contato?.nome = nomeIncluir.text
        contato?.email = emailIncluir.text
        
        ContatoDAO.inserir(contato!)
    }

    @IBAction func searchAll(_ sender: AnyObject) {
        listaContatos = ContatoDAO.searchAll()
        if listaContatos?.count > 0 {
            for item in listaContatos! {
                print(item.nome! + " - " + item.email!)
            }
        }
    }
    @IBAction func Preencher(_ sender: AnyObject) {
        listaContatos = ContatoDAO.searchAll()
        if listaContatos?.count > 0 {
            contato = listaContatos?.first
            nomeAlterar.text = contato?.nome
            emailAlterar.text = contato?.email
        }
    }
    @IBAction func Alterar(_ sender: AnyObject) {
        
        contato?.nome = nomeAlterar.text
        contato?.email = emailAlterar.text
     
        ContatoDAO.alterar()
    }
    @IBAction func PreencherExcluir(_ sender: AnyObject) {
        
        listaContatos = ContatoDAO.searchAll()
        if listaContatos?.count > 0 {
            contato = listaContatos?.first
            nomeAlterar.text = contato?.nome
            emailAlterar.text = contato?.email
        }
        
    }
    @IBAction func Excluir(_ sender: AnyObject) {
        ContatoDAO.excluir(contato!)
        nomeExcluir.text = ""
        emailExcluir.text = ""
    }
}

