//
//  ProfileView.swift
//  ToDoList
//
//  Created by Hoja Arzanesh on 6/17/24.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
//    @ViewBuilder
//    func profile(user: User) -< some View {
//        
//        // Avatar
//        Image(systemName: "person.circle")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .foregroundStyle(Color.blue)
//            .frame(width: 125, height: 125)
//            .padding()
//        
//        // Info: Name, Email, Member since
//        VStack(alignment: .leading) {
//            HStack {
//                Text("Name: ")
//                    .bold()
//                Text(user.name)
//            }
//            .padding()
//            
//            HStack {
//                Text("Email: ")
//                    .bold()
//                Text(user.email)
//            }
//            .padding()
//            
//            HStack {
//                Text("Member Since: ")
//                    .bold()
//                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
//            }
//            .padding()
//            
//            Button("Log Out") {
//                viewModel.logOut()
//            }
//            .tint(.red)
//            
//            Spacer()
//        }
//    }
}

#Preview {
    ProfileView()
}
