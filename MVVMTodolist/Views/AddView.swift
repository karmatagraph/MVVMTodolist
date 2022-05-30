//
//  AddView.swift
//  MVVMTodolist
//
//  Created by karma on 5/30/22.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var taskName: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    
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
                    saveButtonTapped()
                    
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
        .environmentObject(listViewModel)
        .alert(isPresented: $showAlert, content: getAlert)
        
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
    
    func saveButtonTapped() {
        if textValidate() {
            listViewModel.addNewTask(title: taskName)
            presentationMode.wrappedValue.dismiss()
        }
        
    }
    
    func textValidate() -> Bool {
        if taskName.count < 3 {
            alertTitle = "New task name should be atleast 3 or more characters long!!!"
            showAlert.toggle()
            return false
        }
        return true
    }
}

struct AddView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
