//
//  ViewController.swift
//  SuperSenha
//
//  Created by Usuário Convidado on 07/03/18.
//  Copyright © 2018 FIAP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfPasswordCount: UITextField!
    @IBOutlet weak var tfCharactersCount: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    
    @IBOutlet weak var btBig: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? PasswordsViewController {
            vc.useLetters = swLetters.isOn
            vc.useNumbers = swNumbers.isOn
            vc.useCapitalLetters = swCapitalLetters.isOn
            vc.useSpecialCharacters = swSpecialCharacters.isOn
            
            if let numberOfPasswords = Int(tfPasswordCount.text!) {
                vc.numberOfPasswords = numberOfPasswords
            }
            
            if let numberOfCharacters = Int(tfCharactersCount.text!) {
                vc.numberOfCharacters = numberOfCharacters
            }
        }
    }


}












