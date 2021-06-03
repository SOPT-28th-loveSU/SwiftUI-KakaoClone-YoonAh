//
//  MoreView.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/06/03.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
                .frame(height: 12)
            FriendHeader(title: "더보기")
            
            MyFriendCell(isFriend: true, image:"friendtabProfileImg", name:"최솝트", statusMessage: "apple@sopt.org")
                .padding(.bottom, 10)
                .padding(.top, 20)
            
            Divider()
                .padding(.bottom, 30)
            
            VGridView()
        }
        .padding(.horizontal, 15)
    }
}

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}
