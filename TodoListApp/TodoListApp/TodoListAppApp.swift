//
//  TodoListAppApp.swift
//  TodoListApp
//
//  Created by k4keye on 2022/03/13.
//

import SwiftUI

@main
struct TodoListAppApp: App {
    
    @StateObject var listViewModel : ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
            
        }
    }
}
