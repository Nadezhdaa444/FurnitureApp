//
//  SearchView.swift
//  FurnitureApp
//
//  Created by Мария Лях on 27.06.2025.
//

//import SwiftUI
//
//struct SearchView: View {
//    @State private var search: String = ""
//    var body: some View {
//       HStack {
//           HStack{
//               Image(systemName: "magnifyingglass")
//                   .padding(.leading)
//               TextField("Поиск", text: $search)
//                   .padding()
//               
//           }
//           .background(Color("kSecondary"))
//           .cornerRadius(12)
//           
//           Image(systemName: "camera")
//               .padding()
//               .foregroundColor(Color("kPrimary"))
//               .cornerRadius(12)
//               
//            
//        }
//       .padding(.horizontal)
//    }
//}
//
//#Preview {
//    SearchView()
//}
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        HStack {
           
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                    .foregroundColor(.gray)
                
                TextField("Поиск", text: $searchText)
                    .padding(.vertical)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
                
                if !searchText.isEmpty {
                    Button(action: {
                        searchText = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                            .padding(.trailing)
                    }
                }
            }
            .background(Color("kSecondary"))
            .cornerRadius(12)
            
        
            Button(action: {
               //
            }) {
                Image(systemName: "camera.fill")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("kPrimary"))
                    .cornerRadius(12)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchView()
}

