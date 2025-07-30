//
//  CartView.swift
//  FurnitureApp
//
//  Created by Мария Лях on 11.07.2025.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    CartProductView(product: product)
                    
                }
                HStack{
                    Text("ваша сумма составляет")
                    Spacer()
                    Text("\(cartManager.total) ₽")
                        .bold()
                    
                    
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
            }else{
                Text("Ваша корзина пуста")
            }
        }
        .navigationTitle(Text("Корзина"))
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
