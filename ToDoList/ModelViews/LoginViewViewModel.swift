//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 28/12/2024.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func login() {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        print("Called")
    }
    func validate() {
        // Code 
        
    }
}
