//
//  LoginView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 28/12/2024.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                // Header
                HeaderView(title: "To Do List",
                           subtitle: "Get Things Done",
                           angle: 15,
                           background: .pink)
                // Login Form
                Form{
                    TextField("Email ...", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password ...", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    TLButton(title: "Log In",
                             background:.blue ,
                             action:{
                        // Attempt Login 
                    })
                    .padding()
                }
                .offset(y: -50)
                
                // Create Account
                VStack{
                    Text("Create Account ?")
                    NavigationLink("Create An Account",
                                   destination: RegisterView())
                   
                    .padding(.bottom, 50)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
