//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by Usuário Convidado on 07/03/18.
//  Copyright © 2018 FIAP. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {

    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool = true
    var useNumbers: Bool = true
    var useCapitalLetters: Bool = true
    var useSpecialCharacters: Bool = true
    
    var passwordGenerator: PasswordGenerator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfCharacters, numberOfPasswords: numberOfPasswords, useLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacters: useSpecialCharacters)
        
        generatePasswords()
        
    }
    
    func generatePasswords() {
        tvPasswords.text = ""
        guard let passwords = passwordGenerator?.generate() else {return}
        for password in passwords {
            tvPasswords.text.append(contentsOf: "\(password)\n\n")
        }
    }
    
    @IBAction func refresh(_ sender: Any) {
        generatePasswords()
    }
    

}








