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
        List(departmentToShow.items){currentFoodItem in
            
            Text(currentFoodItem.name )
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
