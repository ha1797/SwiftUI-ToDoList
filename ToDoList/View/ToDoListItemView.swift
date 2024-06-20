//
//  ToDoListItemView.swift
//  ToDoList
//
//  Created by Hoja Arzanesh on 6/17/24.
//

import SwiftUI

struct ToDoListItemView: View {
    
    @StateObject var viewModel = ToDoListItemViewViewModel()
//    let item: ToDoListItem
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ToDoListItemView(
//        item: .init(
//            id: "123",
//            title: "Get milk",
//            dueDate: Date().timeIntervalSince1970,
//            createdDate: Date().timeIntervalSince1970,
//            isDone: false
//        )
    )
}
