//
//  FoodItemsListView.swift
//  GroceryStoreFlyer
//
//  Created by Ahmet Kaan Caliskan on 2025-01-07.
//

import SwiftUI

struct FoodItemsListView: View {
    let departmentToShow: Department
    var body: some View {
        List(departmentToShow.items){
            currentItem in
            Text(currentItem.name)
            Image(currentItem.image)
                .resizable()
                .scaledToFit()
            Text("\(currentItem.price)$ per \(currentItem.size)")
        }
        .navigationTitle(departmentToShow.name)
    }
}

#Preview {
    FoodItemsListView(departmentToShow: thisWeeksFlyer.departments[1])
}
