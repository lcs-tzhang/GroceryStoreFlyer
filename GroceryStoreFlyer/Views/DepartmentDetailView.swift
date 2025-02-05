//
//  DepartmentDetailView.swift
//  GroceryStoreFlyer
//
//  Created by xinyu zhang on 2025-02-03.
//

import SwiftUI

struct DepartmentDetailView: View {
    
    let departmentToShow: Department
    
    var body: some View {
           List(departmentToShow.items) { currentFoodItem in
               HStack {
                   Image(currentFoodItem.image)
                       .resizable()
                       .scaledToFit()
                       .frame(width: 80, height: 80)
                       .cornerRadius(8)
                       .shadow(radius: 5)
                   
                   VStack(alignment: .leading) {
                       Text(currentFoodItem.name)
                           .font(.headline)
                       Text(String(format: "$%.2f", currentFoodItem.price))
                           .font(.subheadline)
                           .foregroundColor(.red)
                       Text(currentFoodItem.weight)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                   }
                   Spacer()
                   Button(action: {}) {
                       Image(systemName: "plus.circle.fill")
                           .foregroundColor(.green)
                           .font(.title2)
                   }
               }
               .padding(.vertical, 8)
           }
           .listStyle(.insetGrouped)
           .navigationTitle(departmentToShow.name)
       }
   }

#Preview {
    NavigationStack{
        DepartmentDetailView(departmentToShow: thisWeeksFlyer.departments[0])
    }
}
