//
//  ContentView.swift
//  SwiftUIStudy_StackCardView
//
//  Created by k4keye on 2022/03/06.
//

import SwiftUI

struct ContentView: View {
    @State var isNavigationBarHidden : Bool = false
    
    var body: some View {
        
        NavigationView{
            
            
            ZStack(alignment: .bottomTrailing){
                
                VStack(alignment: .leading, spacing: 0){
                    
                    HStack{
                        NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)){
                            Image(systemName: "line.3.horizontal")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                       
                        Spacer()
                        Image(systemName: "person.crop.circle")
                            .font(.largeTitle)
                    }
                    .padding(20)
                     
                    
                    Text("할일 목록 리스트")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding(.horizontal, 20)
                    ScrollView{
                    
                        VStack{
                            MyProjectCard()
                            MyCard(icon: "tray.fill", title: "책상 정리", start: "10 PM", end: "11 PM", bgColor: Color.blue)
                            MyCard(icon: "book.fill", title: "책 읽기", start: "1 PM", end: "4 PM", bgColor: Color.green)
                            MyCard(icon: "cart.fill", title: "장보기", start: "3 AM", end: "11 PM", bgColor: Color.red)
                            MyCard(icon: "tray.fill", title: "책상 정리", start: "10 PM", end: "11 PM", bgColor: Color.purple)
                            
                        }.padding()
                    }
                }
              
              
                Circle()
                    .foregroundColor(Color.yellow)
                    .frame(width:60, height: 60)
                    .overlay{
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(Color.white)
                    }
                    .padding(0)
                    .shadow(radius: 20)
            }//zstack
            
            .navigationTitle("메인 화면")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{
                self.isNavigationBarHidden = true
            }
            
        }//nav view
        
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
