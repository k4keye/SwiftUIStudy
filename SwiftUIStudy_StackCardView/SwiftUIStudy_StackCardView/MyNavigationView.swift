//
//  MyNavigationView.swift
//  SwiftUIStudy_StackCardView
//
//  Created by k4keye on 2022/03/09.
//

import SwiftUI

struct MyNavigationView: View{
    var body: some View{
        
        NavigationView{
            Text("My Nav View")
                //.navigationTitle("안녕하세요")
                .navigationBarItems(leading:
                    Button(action: {
                    print("호호")
                    
                }, label: {
                    Text("하하")
                })
                , trailing:
                                        NavigationLink(destination: {
                    Text("넘어온 화면")
                }, label: {
                    Image(systemName: "bookmark.fill")
                    
                })
                )
                
        }
       
    }
}



struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
