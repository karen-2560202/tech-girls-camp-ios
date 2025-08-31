//
//  Untitled.swift
//  NetworkedApp
//
//  Created by techgirlscamp13 on 8/31/25.
//
import SwiftUI

struct FavoriteList: View {
    @State private var favoriteCoffeeManager = FavoriteCoffeeManager.shared

    var body: some View {
        let coffees = favoriteCoffeeManager.coffees
        ScrollView {
            LazyVStack {
                ForEach(coffees) { coffee in
                    CoffeeItemView(coffee: coffee)
                        .padding(.horizontal, 20)
                }
            }
        }
        .overlay {
            if coffees.isEmpty {
                Text("お気に入りはありません")
                    .padding()
            }
        }

    }
}

#Preview {
    FavoriteList()
}

