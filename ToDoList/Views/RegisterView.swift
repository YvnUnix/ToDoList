//
//  RegisterView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 28/12/2024.
//

import SwiftUI

struct RegisterView: View {
    @State var userName = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            HeaderView(title: "Register",
                       subtitle: "Start organizing todo",
                       angle: -15,
                       background: .orange)
            
            Form{
                TextField("Full name ...", text: $userName)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                TextField("Email ...", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password ...", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                // Button
                TLButton(title: "Register",
                         background:.green,
                         action:{
                    // Attempt Login
                })
            }
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
