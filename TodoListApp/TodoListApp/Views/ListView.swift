//
//  ListView.swift
//  TodoListApp
//
//  Created by k4keye on 2022/03/14.
//

import SwiftUI

struct ListView: View {

    
    @State var items: [ItemModel] = [
        ItemModel(title:  "this is the first item", isCompleted: false),
        ItemModel(title:  "this is the second item", isCompleted: true),
        ItemModel(title:  "this is the third item", isCompleted: false)

    ]
    var body: some View {
        List{
            ForEach(items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
            
        }
        .listStyle(PlainListStyle())
        //이모지키 컨트롤+커맨드+스페이스
        .navigationTitle("Todo List 📝")
        //네비게이션 바 왼쪽 오른쪽 버튼 설정
        .navigationBarItems(leading: EditButton(),
                            trailing:
                                NavigationLink("Add", destination: AddView())
        )
    }
    
    func deleteItem(indexSet : IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from : IndexSet, to : Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        
    }
}


