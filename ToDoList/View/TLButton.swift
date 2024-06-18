//
//  TLButton.swift
//  ToDoList
//
//  Created by Hoja Arzanesh on 6/17/24.
//

import SwiftUI

struct TLButton: View {
<<<<<<< HEAD
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                
                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()
            }
        })
        .padding()
=======
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
>>>>>>> main
    }
}

#Preview {
<<<<<<< HEAD
    TLButton(title: "title", backgroundColor: .blue, action: {/* action */})
=======
    TLButton()
>>>>>>> main
}
