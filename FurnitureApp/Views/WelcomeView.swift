//
//  WelcomeView.swift
//  FurnitureApp
//
//  Created by Мария Лях on 30.07.2025.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Добро пожаловать!")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundColor(Color("kPrimary"))
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                        .padding(.horizontal, 20)

                    Spacer()

                    Image("WelcomeIm")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 250)
                        .padding()

                    Spacer()

                    VStack(spacing: 10) {
                        HStack {
                            Text("Уже есть аккаунт?")
                                .foregroundColor(.gray)

                          NavigationLink(destination: LogInPageView()) {
                                Text("Вход")
                                    .foregroundColor(.blue)
                                    .padding()
                                    .background(Color.white)
                                    
                           }
                        }
                        .padding(.top, 10)
                        
                       NavigationLink(destination: RegistrationPageView()) {
                            Text("Регистрация")
                                .font(.headline)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color("kPrimary"))
                                .foregroundColor(Color("kSecondary"))
                                .cornerRadius(25)
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                       }
                    }
                    .padding(.horizontal, 30)
                    .padding(.top, 20)

                    HStack(spacing: 15) {
                        Rectangle()
                            .fill(Color("kPrimary"))
                            .frame(height: 1)

                        Text("ИЛИ")
                            .foregroundColor(Color("kPrimary"))

                        Rectangle()
                            .fill(Color("kPrimary"))
                            .frame(height: 1)
                    }
                    .padding(.horizontal, 30)
                    .padding(.top, 20)

                    HStack(spacing: 25) {
                        Button(action: {
                            //
                        }) {
                            Image("Apple")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                        }
                        Button(action: {
                            //
                        }) {
                            Image("Facebook")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                        }
                        Button(action: {
                            //
                        }) {
                            Image("VK")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                        }
                    }
                    .padding(.top, 30)

                    Spacer()
                }
                .padding()
            }
            .background(Color("")
                .edgesIgnoringSafeArea(.all))
        }
    }
}

#Preview {
    WelcomeView()
}
