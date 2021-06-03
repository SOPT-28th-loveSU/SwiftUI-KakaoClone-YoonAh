//
//  FriendHeader.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/05/27.
//

import SwiftUI

struct FriendHeader: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 25,
                              weight: .semibold,
                              design: .default))
            Spacer()
            Button(action: {
                print("click the gear!")
            }) {
                Image(systemName: "gearshape")
                    .font(.system(size: 25,
                                  weight: .light,
                                  design: .default))
                    .foregroundColor(.black)
            }
        }
    }
}

struct FriendHeader_Previews: PreviewProvider {
    static var previews: some View {
        FriendHeader(title: "친구")
    }
}
