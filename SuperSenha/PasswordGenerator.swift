//
//  PasswordGenerator.swift
//  SuperSenha
//
//  Created by Usuário Convidado on 07/03/18.
//  Copyright © 2018 FIAP. All rights reserved.
//

import Foundation

class PasswordGenerator {
    
    var numberOfCharacters: Int
    var numberOfPasswords: Int
    var useLetters: Bool
    var useNumbers: Bool
    var useCapitalLetters: Bool
    var useSpecialCharacters: Bool
    
    var passwords: [String] = []
    private let letters = "abcdefghijklmnopqrstuvwxyz"
    private let specialCharacters = "+-*/=][{{-)(*&ˆ%$#@!~`/?><.,"
    private let numbers = "0123456789"
    
    init(numberOfCharacters: Int, numberOfPasswords: Int, useLetters: Bool, useNumbers: Bool,
         useCapitalLetters: Bool, useSpecialCharacters: Bool) {
        self.useNumbers = useNumbers
        self.numberOfCharacters = numberOfCharacters
        self.useLetters = useLetters
        self.useCapitalLetters = useCapitalLetters
        self.useSpecialCharacters = useSpecialCharacters
        self.numberOfPasswords = numberOfPasswords
    }
    
    func generate() -> [String] {
        
        passwords.removeAll()
        var universe: String = ""
        if useNumbers {
            universe += numbers
        }
        if useLetters {
            universe += letters
        }
        if useSpecialCharacters {
            universe += specialCharacters
        }
        if useCapitalLetters {
            universe += letters.uppercased()
        }
        let universeArray = Array(universe)
        while passwords.count < numberOfPasswords {
            var password: String = ""
            for _ in 1...numberOfCharacters {
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                password += String(universeArray[index])
            }
            passwords.append(password)
        }
        
        return passwords
    }
    
    
    
    
    
}










