//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Hoja Arzanesh on 6/14/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
//            ContentView()
        }
    }
}
