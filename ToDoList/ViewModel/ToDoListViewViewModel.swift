//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Hoja Arzanesh on 6/17/24.
//

import FirebaseFirestore
import Foundation

class ToDoListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
//    func delete(item: ToDoListItem) {
//        let db = Firestore.firestore()
//        
//        db.collection("users")
//            .document(userId)
//            .collection("todos")
//            .document(item.id)
//            .delete()
//    }
}
