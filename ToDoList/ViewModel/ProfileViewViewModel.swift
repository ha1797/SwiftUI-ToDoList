//
//  ProfileViewViewModel.swift
//  ToDoList
//
//  Created by Hoja Arzanesh on 6/17/24.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class ProfileViewViewModel: ObservableObject {
    
    @Published var user: User? = nil
    
    init() {}
    
    func fetchUser() {
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uId)
            .getDocument { [weak self] snapshot, error in
                guard let data = snapshot?.data(), error == nil else {
                    return
                }
                
//                DispatchQueue.main.async {
//                    self?.user = User(
//                        id: data["id"] as? String ?? "",
//                        name: data["name"] as? String ?? "",
//                        email: data["email"] as? String ?? "",
//                        joined: data["joined"] as? TimeInterval ?? 0
//                    )
//                }
            }
    }
    
    func logOut() {
        do {
            try Auth.auth().signOut()
        } catch {
            print(error)
        }
    }
}
