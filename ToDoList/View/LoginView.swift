//
//  LoginView.swift
//  ToDoList
//
//  Created by Hoja Arzanesh on 6/17/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack {
            
            VStack {
                HeaderView(title: "To Do List", subTitle: "Get Things Done", angle: 15, backgroundColor: .pink)
            
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage).foregroundStyle(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TextField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    // TLButton here once code available
                    /*
                     TLButton(
                     title: "Log In",
                     backgroundColor: .blue
                     action: { viewModel.login() }
                     )
                     */
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
