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
                   
                   VStack(alignment: .leading) {
                       Text(currentFoodItem.name)
                           .font(.headline)
                       Text(String(format: "$%.2f", currentFoodItem.price))
                           .font(.subheadline)
                           .foregroundColor(.gray)
                   }
                   Spacer()
               }
               .padding(.vertical, 5)
           }
           .listStyle(.plain)
           .navigationTitle(departmentToShow.name)
       }
   }

#Preview {
    NavigationStack{
        DepartmentDetailView(departmentToShow: thisWeeksFlyer.departments[0])
    }
}
