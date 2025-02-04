//
//  ContentView.swift
//  GroceryStoreFlyer
//
//  Created by xinyu zhang on 2025-02-03.
//

import SwiftUI

struct DepartmentsListView: View {
    var body: some View {
        NavigationStack {
            
            List(thisWeeksFlyer.departments) { currentDepartment in
                NavigationLink {
                    DepartmentDetailView(departmentToShow: currentDepartment)
                } label: {
                    HStack {
                        Image(systemName: "cart.fill")
                            .foregroundColor(.blue)
                        Text(currentDepartment.name)
                            .font(.headline)
                    }
                    .padding(5)
                }
            }
            .navigationTitle("Weekly Flyer")
            .background(Color(.systemGroupedBackground))
        }
    }
}

#Preview {
    DepartmentsListView()
}
