//
//  SplashScreenView.swift
//  FurnitureApp
//
//  Created by Мария Лях on 30.07.2025.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                
                VStack {
                    VStack {
                        Image ("armchair")
                            .font(.system(size: 90))
                            .foregroundColor(Color("kSecondary"))
                            .shadow(radius: 10)
                        
                        Text("Welcome to the Furniture App")
                            .font(Font.custom("Baskerville", size: 30))
                            .foregroundColor(Color("kPrimary"))
                            .padding(.top, 20)
                            .shadow(radius: 5)
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 1.0
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}



#Preview {
    SplashScreenView()
}
