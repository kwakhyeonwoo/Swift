//
//  MyTextView.swift
//  SecondPractice
//
//  Created by 곽현우 on 6/23/24.
//

import SwiftUI

struct MyTextView: View{
    
    //@State 값의 변화 감지 -> 뷰에 적용하기
    @State
    private var index: Int = 0
    
    //배경색 배열 준비
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View{
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity,
                       minHeight: 0, maxHeight: .infinity)
            
            Spacer()
        }
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.top)
        .onTapGesture {
            print("배경아이템이 클릭 됨")
            
            if(self.index == self.backgroundColors.count - 1){
                self.index = 0
            } else {
                self.index += 1
            }
        }
    }
}

struct MyTextView_Previews: PreviewProvider{
    static var previews: some View{
        MyTextView()
    }
}
