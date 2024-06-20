//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Hoja Arzanesh on 6/17/24.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel: ToDoListViewViewModel
//    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
//        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ToDoListView(userId: "ty3785kbv3ZtltmRf4KYPh9hnzL2")
}
