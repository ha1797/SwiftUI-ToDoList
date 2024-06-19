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
            }
        }
    }
}

#Preview {
    LoginView()
}
