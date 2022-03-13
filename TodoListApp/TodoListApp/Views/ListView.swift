//
//  ListView.swift
//  TodoListApp
//
//  Created by k4keye on 2022/03/14.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "this is the first item",
        "this is the second item",
        "this is the third item"
    ]
    var body: some View {
        List{
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
            
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
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        
    }
}


