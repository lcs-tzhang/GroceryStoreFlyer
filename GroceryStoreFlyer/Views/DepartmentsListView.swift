//
//  ContentView.swift
//  GroceryStoreFlyer
//
//  Created by xinyu zhang on 2025-02-03.
//

import SwiftUI

struct DepartmentsListView: View {
    var body: some View {
        NavigationStack{
            List(thisWeeksFlyer.departments){currentDepartment in 
                NavigationLink {
                    DepartmentDetailView(departmentToShow: currentDepartment)
                } label: {
                    Text(currentDepartment.name)
                        .font(.headline)
                }

            }
            .navigationTitle("Weekly Flyer")
        }
    }
}

#Preview {
    DepartmentsListView()
}
