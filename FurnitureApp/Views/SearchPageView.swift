//
//  SearchPageView.swift
//  FurnitureApp
//
//  Created by Мария Лях on 25.07.2025.
//

import SwiftUI

struct SearchPageView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Найдите самую роскошную ")
                    .font(.largeTitle)
                    .bold()
                +
                Text("мебель")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color("kPrimary"))
            }
            .padding(.horizontal)
            .padding(.top, 20)
            
           
            SearchView()
                .padding(.horizontal)
                .padding(.top, 8)
            
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    SearchPageView()
        .environmentObject(CartManager())
}
