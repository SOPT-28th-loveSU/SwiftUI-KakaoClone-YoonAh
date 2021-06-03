//
//  MoreView.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/06/03.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 12)
            FriendHeader()
            .padding(.horizontal, 15)
            
            
        }
    }
}

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}
