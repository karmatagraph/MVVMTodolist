//
//  MVVMTodolistApp.swift
//  MVVMTodolist
//
//  Created by karma on 5/30/22.
//

import SwiftUI

@main
struct MVVMTodolistApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
