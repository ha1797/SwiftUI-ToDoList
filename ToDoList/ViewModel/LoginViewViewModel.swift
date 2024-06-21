//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Hoja Arzanesh on 6/17/24.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    func validate() -> Bool {
        
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "All fields must be filled."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            
            errorMessage = "Email must be a valid email."
            return false
        }
        
        return true
    }
    
}
