//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by Hoja Arzanesh on 6/17/24.
//

import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel: ObservableObject {
    
    @Published var fullName = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            
            self?.insertUserRecord(id: userId);
        }
    }
    
    private func insertUserRecord(id: String) {
        let newUser = User(id: id, 
                           name: fullName,
                           email: email,
                           joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        db.collection("users").document(id).setData(newUser.asDictionary())
    }
    
    private func validate() -> Bool {
        
        errorMessage = ""
        
        guard !fullName.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "All fields must be filled."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Email must be a valid email."
            return false
        }
        
        guard password.count >= 6 else {
            errorMessage = "Password must be at least 6 characters."
            return false
        }
        
        return true
    }
}
