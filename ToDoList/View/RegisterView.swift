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
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage).foregroundStyle(Color.red)
                }
                
                TextField("Full Name", text: $viewModel.fullName)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    backgroundColor: .green,
                    action: { viewModel.register() }
                ).padding()
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
