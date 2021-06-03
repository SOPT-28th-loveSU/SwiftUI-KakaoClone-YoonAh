//
//  MyFriendCell.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/05/27.
//

import SwiftUI

struct MyFriendCell: View {
    var isFriend: Bool = false
    var image: String
    var name: String
    var statusMessage: String?
    
    var body: some View {
        HStack {
            Image(image)
                .padding(.trailing, 1)
            
            VStack(alignment: .leading) {
                if isFriend {
                    Text(name)
                        .font(.system(size: 15, weight: .bold, design: .default))
            
                    Text(statusMessage ?? "")
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                } else {
                    Text(name)
                        .font(.system(size: 19, weight: .bold, design: .default))
            
                    Text(statusMessage ?? "")
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                        .padding(.top, 1)
                }
            }
        }
    }
}

struct MyFriendCell_Previews: PreviewProvider {
    static var previews: some View {
        MyFriendCell(isFriend: true, image: "profileImage10", name: "김솝트", statusMessage: "상태메세지는 여기에")
    }
}
