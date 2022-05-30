//
//  AddView.swift
//  MVVMTodolist
//
//  Created by karma on 5/30/22.
//

import SwiftUI

struct AddView: View {
    @State var taskName: String = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField("Add task..", text: $taskName)
                    .padding(.horizontal)
                    .frame(height:55)
                    .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                .cornerRadius(10)
                Button {
                    print("task saved")
                } label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }

            }
            .padding()
        }
        .navigationTitle("Add an Item 🖊")
        
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
