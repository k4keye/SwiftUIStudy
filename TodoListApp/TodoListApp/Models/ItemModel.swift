//
//  ItemModel.swift
//  TodoListApp
//
//  Created by k4keye on 2022/03/15.
//

import Foundation

struct ItemModel : Identifiable {
    let id : String = UUID().uuidString
    let title:String
    let isCompleted : Bool
}
