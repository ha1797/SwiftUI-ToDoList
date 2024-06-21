//
//  RegisterView.swift
//  ToDoList
//
//  Created by Hoja Arzanesh on 6/17/24.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            
            // Header
            HeaderView(title: "Register", 
                       subTitle: "Start Organizing ToDos",
                       angle: -15,
                       backgroundColor: .orange)
            
            Form {
                TextField("Full Name", text: $viewModel.fullName)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    backgroundColor: .green,
                    action: { viewModel.register() }
                )
            }
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
