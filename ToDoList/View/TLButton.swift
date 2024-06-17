//
//  TLButton.swift
//  ToDoList
//
//  Created by Hoja Arzanesh on 6/17/24.
//

import SwiftUI

struct TLButton: View {
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
    }
}

#Preview {
    TLButton(title: "title", backgroundColor: .blue, action: {/* action */})
}
