//
//  ProfileView.swift
//  FurnitureApp
//
//  Created by Мария Лях on 30.07.2025.
//

import SwiftUI

struct ProfileView: View {
    @State private var showFavorites = false
    @State private var showOrders = false
    @State private var showDeleteAccount = false
    @State private var showLogout = false
    
    let userName = "Nadezhda Lyakh"
    let userEmail = "NadezhdaLyakh@gmail.com"
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Image("space_background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 200)
                
                ScrollView {
                    VStack(spacing: 0) {
                        
                        Spacer()
                            .frame(height: 150)
                        
                       
                        VStack(spacing: 0) {
                           
                            Image("profile_photo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 120)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .stroke(Color.white, lineWidth: 4)
                                )
                                .shadow(radius: 10)
                                .offset(y: -60)
                                .padding(.bottom, -60)
                            
                            VStack(spacing: 4) {
                                Text(userName)
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                
                                Text(userEmail)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            .padding(.vertical, 20)
                            
                            
                            VStack(spacing: 16) {
                                
                                NavigationLink(destination: FavoritesView()) {
                                    ProfileRow(icon: "heart", title: "Избранное")
                                }
                                
                                
                                NavigationLink(destination: OrdersView()) {
                                    ProfileRow(icon: "shippingbox", title: "Заказы")
                                }
                                
                               
                                Button(action: {
                                    showDeleteAccount = true
                                }) {
                                    ProfileRow(icon: "xmark.circle",
                                              title: "Удалить аккаунт",
                                              isDestructive: true)
                                }
                                .alert(isPresented: $showDeleteAccount) {
                                    Alert(
                                        title: Text("Удалить аккаунт?"),
                                        message: Text("Это действие нельзя отменить"),
                                        primaryButton: .destructive(Text("Удалить")) {
                                            // Действие удаления
                                        },
                                        secondaryButton: .cancel()
                                    )
                                }
                                
                                
                                Button(action: {
                                    showLogout = true
                                }) {
                                    ProfileRow(icon: "arrow.backward.circle",
                                              title: "Выйти из аккаунта",
                                              isDestructive: true)
                                }
                                .alert(isPresented: $showLogout) {
                                    Alert(
                                        title: Text("Выйти из аккаунта?"),
                                        message: nil,
                                        primaryButton: .destructive(Text("Выйти")) {
                                            // Действие выхода
                                        },
                                        secondaryButton: .cancel()
                                    )
                                }
                            }
                            .padding(.horizontal, 24)
                            .padding(.top, 20)
                            
                            Spacer()
                        }
                        .background(Color(.systemBackground))
                        .padding(.top, 50)
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}



struct OrdersView: View {
    var body: some View {
        Text("Заказы")
            .navigationTitle("Мои заказы")
    }
}


struct ProfileRow: View {
    var icon: String
    var title: String
    var isDestructive: Bool = false
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .foregroundColor(isDestructive ? .red : Color("kPrimary"))
                .frame(width: 24)
            
            Text(title)
                .foregroundColor(isDestructive ? .red : .primary)
                .font(.system(size: 17))
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray.opacity(0.5))
        }
        .padding()
        .background(Color("kSecondary"))
        .cornerRadius(10)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
