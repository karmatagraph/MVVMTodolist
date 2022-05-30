//
//  ListView.swift
//  MVVMTodolist
//
//  Created by karma on 5/30/22.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "this is the first task",
        "this is the second task"
    ]
    
    var body: some View {
        List {
            ForEach(items,id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add",destination: AddView() ) )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
