//
//  FieldGrowerLogIn .swift
//  FurnitureApp
//
//  Created by Мария Лях on 30.07.2025.
//

import SwiftUI

struct FieldGrowerLogIn_: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "envelope.fill")
                        .foregroundColor(Color("kPrimary")) 
                    TextField("Введите ваш email", text: $email)
                        .textContentType(.emailAddress)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                }
                Divider()
                    .background(Color.white.opacity(0.5))
            }
            .padding(.horizontal)
            .padding(.top, 40)
            
            
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "lock.fill")
                        .foregroundColor(Color("kPrimary"))
                    SecureField("Пароль", text: $password)
                        .textContentType(.password)
                }
                Divider()
                    .background(Color.white.opacity(0.5))
            }
            .padding(.horizontal)
            
            
            HStack {
                Spacer()
                Button(action: {
                    //
                }) {
                    Text("Забыли пароль?")
                        .font(.system(size: 14))
                        .foregroundColor(Color("kPrimary"))
                }
            }
            .padding(.horizontal)
            .padding(.top, 5)
        }
    }
}

#Preview {
    FieldGrowerLogIn_()
}
