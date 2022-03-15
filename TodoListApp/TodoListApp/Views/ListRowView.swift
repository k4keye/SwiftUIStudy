//
//  ListRowView.swift
//  TodoListApp
//
//  Created by k4keye on 2022/03/14.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? Color.green : Color.red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}
struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title:  "this is the first item", isCompleted: false)
    static var item2 = ItemModel(title:  "this is the second item", isCompleted: true)
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
        
    }
}
