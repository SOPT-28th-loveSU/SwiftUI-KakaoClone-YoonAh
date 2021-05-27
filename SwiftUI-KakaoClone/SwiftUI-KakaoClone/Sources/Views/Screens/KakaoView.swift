//
//  KakaoView.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/05/27.
//

import SwiftUI

struct KakaoView: View {
    @State var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            FriendListView()
            .tabItem {
                if selection == 0 {
                    Image("friendTabIconSelected")
                } else {
                    Image("friendTabIcon")
                }
            }
            .tag(0)
        }
        
    }
}

struct KakaoView_Previews: PreviewProvider {
    static var previews: some View {
        KakaoView()
    }
}
