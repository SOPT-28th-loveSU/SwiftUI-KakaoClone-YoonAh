//
//  MenuStack.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/06/13.
//

import SwiftUI

struct MenuStack: View {
    var body: some View {
        HStack(spacing: 50) {
            VStack {
                Image("profileTalkImg")
                    .frame(width: 30, height: 30)
                Text("나와의 채팅")
                    .font(.system(size: 10))
                    .foregroundColor(.white)
            }
            
            VStack {
                Image("profileEditImg")
                    .frame(width: 30, height: 30)
                Text("프로필 편집")
                    .font(.system(size: 10))
                    .foregroundColor(.white)
            }
            
            VStack {
                Image("profileStoryImg")
                    .frame(width: 30, height: 30)
                Text("카카오스토리")
                    .font(.system(size: 10))
                    .foregroundColor(.white)
            }
        }
    }
}

struct MenuStack_Previews: PreviewProvider {
    static var previews: some View {
        MenuStack()
    }
}
