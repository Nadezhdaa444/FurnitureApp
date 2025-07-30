//
//  Product.swift
//  FurnitureApp
//
//  Created by Мария Лях on 26.06.2025.
//

import Foundation

struct Product: Identifiable {
    var id: UUID
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
    var width: String
    var height: String
    var diameter: String
}

var productList = [
    Product(
        id: UUID(),
        name: "Кухня",
        image: "fn1",
        description: "Стильная кухня в серых тонах с лаконичным дизайном и продуманной эргономикой. Глянцевые фасады и матовые текстуры создают элегантный контраст, а удобная компоновка делает приготовление пищи комфортным. Вместительные шкафы и глубокие ящики обеспечивают порядок, а прочные материалы гарантируют долговечность. Идеально подходит для любителей минимализма и современных интерьеров.",
        supplier: "IKEA",
        price: 35000,
        width: "200 см",
        height: "135 см",
        diameter: "105 см"),
    
    Product(
        id: UUID(),
        name: "Название продукта",
        image: "fn2",
        description: "Описание продукта",
        supplier: "IKEA",
        price: 35000,
        width: "",
        height: "135 см",
        diameter: ""),
    
    Product(
        id: UUID(),
        name: "Название продукта",
        image: "fn3",
        description: "Описание продукта",
        supplier: "IKEA",
        price: 35000,
        width: "",
        height: "135 см",
        diameter: ""),
    
    Product(
        id: UUID(),
        name: "название продукта",
        image: "fn4",
        description: "Описание продукта",
        supplier: "IKEA",
        price: 35000,
        width: "",
        height: "135 см",
        diameter: ""),
    
    Product(
        id: UUID(),
        name: "кухня Nordic Steel",
        image: "fn5",
        description: "Стильная кухня в серых тонах с лаконичным дизайном и продуманной эргономикой. Глянцевые фасады и матовые текстуры создают элегантный контраст, а удобная компоновка делает приготовление пищи комфортным. Вместительные шкафы и глубокие ящики обеспечивают порядок, а прочные материалы гарантируют долговечность. Идеально подходит для любителей минимализма и современных интерьеров.",
        supplier: "IKEA",
        price: 35000,
        width: "200 см",
        height: "135 см",
        diameter: "105 см")
]
