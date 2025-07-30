//
//  NotificationPageView.swift
//  FurnitureApp
//
//  Created by Мария Лях on 25.07.2025.
//

import SwiftUI

struct NotificationPageView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        VStack(spacing: 20) {
        
            Text("Уведомления")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(Color("kPrimary"))
                .padding(.top, 90)
                .padding(.bottom, 10)
            
           
            VStack(spacing: 20) {
                Image(systemName: "bell.badge.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color("kPrimary"))
                    .shadow(color: Color("kPrimary").opacity(0.2), radius: 8, x: 0, y: 4)
                    .padding(.top, 10)
                
                VStack(spacing: 6) {
                    Text("Пока нет уведомлений")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.primary)
                    
                    Text("Мы сообщим, когда что-то появится")
                        .font(.system(size: 15))
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                }
            }
            
            Spacer()
            
           
            RoundedRectangle(cornerRadius: 3)
                .fill(Color("kPrimary").opacity(0.3))
                .frame(width: 70, height: 4)
                .padding(.bottom, 20)  
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemBackground))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    NotificationPageView()
        .environmentObject(CartManager())
}
