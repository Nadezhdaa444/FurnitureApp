//
//  ProductsView.swift
//  FurnitureApp
//
//  Created by Мария Лях on 25.07.2025.
//

import SwiftUI

struct ProductsView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var column = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    @State private var titleOpacity: Double = 0
    @State private var titleOffset: CGFloat = -10
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Все товары")
                        .foregroundColor(Color("kPrimary"))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .opacity(titleOpacity)
                        .offset(y: titleOffset)
                        .onAppear {
                            withAnimation(.easeOut(duration: 0.8)) {
                                titleOpacity = 1
                                titleOffset = 0
                            }
                        }
                    
                    LazyVGrid(columns: column, spacing: 20) {
                        ForEach(productList, id: \.id) { product in
                            ProductCardView(product: product)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top)
            }
        }
    }
}

#Preview {
    ProductsView()
        .environmentObject(CartManager())
}

