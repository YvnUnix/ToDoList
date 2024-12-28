//
//  TLButton.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 28/12/2024.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        // Button
        Button{
            // Attempt log in
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding() 
    }
}

#Preview {
    TLButton(title: "Value",
             background: .pink){
        // Action
    }
    
}
