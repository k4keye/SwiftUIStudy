//
//  MyList.swift
//  SwiftUIStudy_StackCardView
//
//  Created by k4keye on 2022/03/06.
//

import SwiftUI

struct MyList : View{
    
    @Binding var isNavigationBarHidden : Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)){
        if #available(iOS 14.0, *){

        }else{
            UITableView.appearance().tableFooterView = UIView()
        }
        UITableView.appearance().separatorStyle = .none
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View{
//        List{
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//        }
        
//        List{
//            ForEach(1...10, id: \.self){
//                Text("마이리스트 \($0)")
//            }
//        }
        
        List{
            Section(
                header: Text("해더 입니다").font(.headline).foregroundColor(Color.black)
                    , footer: Text("footer")){
                ForEach(1...3, id: \.self){ itemIndex in
                    MyCard(icon: "book.fill", title: "책읽기 \(itemIndex)", start: "1시 PM", end: "3시 PM", bgColor: Color.green)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(header: Text("바디 입니다").font(.headline).foregroundColor(Color.black)){
                ForEach(1...20, id: \.self){ itemIndex in
                    MyCard(icon: "book.fill", title: "책읽기 \(itemIndex)", start: "1시 PM", end: "3시 PM", bgColor: Color.blue)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 30, bottom: 10, trailing: 10))
            .listRowBackground(Color.yellow)
           
        }
        //.listStyle(GroupedListStyle())
        .listStyle(PlainListStyle())
        .navigationBarTitle("내 목록")
        //.navigationBarHidden(self.isNavigationBarHidden)
        .onAppear{
            self.isNavigationBarHidden = false
        }
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
