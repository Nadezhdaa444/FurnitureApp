//
//  FieldGrowerReg.swift
//  FurnitureApp
//
//  Created by Мария Лях on 30.07.2025.
//

import SwiftUI

struct FieldGrowerReg: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var username = ""
    
    var body: some View {
        VStack(spacing: 20) {
           
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "person.fill")
                        .foregroundColor(Color("kPrimary"))
                    TextField("Имя пользователя", text: $username)
                }
                Divider()
                    .background(Color.white.opacity(0.5))
            }
            .padding(.horizontal)
            .padding(.top, 20)
            
            
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "envelope.fill")
                        .foregroundColor(Color("kPrimary"))
                    TextField("Введите ваш email", text: $email)
                }
                Divider()
                    .background(Color.white.opacity(0.5))
            }
            .padding(.horizontal)
            
           
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "lock.fill")
                        .foregroundColor(Color("kPrimary"))
                    SecureField("Пароль", text: $password)
                }
                Divider()
                    .background(Color.white.opacity(0.5))
            }
            .padding(.horizontal)
            
            
        }
    }
}

#Preview {
    FieldGrowerReg()
      
}
