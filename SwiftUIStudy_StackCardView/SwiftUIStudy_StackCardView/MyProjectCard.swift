//
//  MyProjectCard.swift
//  SwiftUIStudy_StackCardView
//
//  Created by k4keye on 2022/03/06.
//

import SwiftUI

struct MyProjectCard : View{
    
    @State var shouldShowAlert: Bool = false
    
    var body: some View{
        
        VStack(alignment: .leading, spacing: 0){
            Rectangle().frame(height: 0)
            Text("유튜브 프로젝트")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom, 5)
            Text("10 AM - 11 AM")
                .foregroundColor(.secondary)
                .padding(.bottom, 10)
            HStack{
                Image("1")
                    .resizable() //사이즈에 맞춰서 이미지를 조절해라
                    .frame(width: 50, height: 50)
                    .clipShape(Circle()) //이미지를 동그랗게 짤라라
                    .overlay{
                        Circle().stroke(lineWidth: 5)
                            .foregroundColor(Color.orange)
                    }
                Image("2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle()) //이미지를 동그랗게 짤라라
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle()) //이미지를 동그랗게 짤라라
                
                Spacer() //오른쪽으로 밀기위해 존재
                
                Button(action: {
                    //액션
                    print("확인버튼 클릭 되었다.")
                    self.shouldShowAlert = true
                    
                }){
                    //버튼의 스타일
                    Text("확인")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                        
                }.alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("알림창 입니다."))
                })
                
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
        
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
