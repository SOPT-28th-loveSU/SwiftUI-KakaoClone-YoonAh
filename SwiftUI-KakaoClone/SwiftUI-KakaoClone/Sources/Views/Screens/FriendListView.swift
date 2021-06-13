//
//  FriendListView.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/05/27.
//

import SwiftUI

struct FriendListView: View {
    @State var presentingModal = false
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 30)
            
            FriendHeader(title: "친구")
            .padding(.horizontal, 15)
            
            List {
                MyFriendCell(image:"friendtabProfileImg",name: "김솝트",statusMessage:"상태메세지는 여기에")
                
                ForEach(1...10, id: \.self) { index in
                    Button(action: {
                        self.presentingModal = true
                    }, label: {
                        MyFriendCell(isFriend: true,image:"profileImage\(index)",name:"최솝트", statusMessage:"스유는왜이렇게 어려워요?")
                    })
                    .fullScreenCover(isPresented: $presentingModal, content: {
                        ProfileView(name: "최솝트", image: "profileImage\(index)")
                    })
                }
            }
        }
    }
}

struct FriendListView_Previews: PreviewProvider {
    static var previews: some View {
        FriendListView()
    }
}
