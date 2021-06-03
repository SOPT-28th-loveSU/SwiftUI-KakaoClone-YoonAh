//
//  KakaoView.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/05/27.
//

import SwiftUI
import UIKit

struct KakaoView: View {
    @State var selection: Int = 0
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.systemGray6
        UITabBar.clearShadow()
    }
    
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
            
            FriendListView()
            .tabItem {
                if selection == 1 {
                    Image("messageTabIconSelected")
                } else {
                    Image("messageTabIcon")
                }
            }
            .tag(1)
            
            FriendListView()
            .tabItem {
                if selection == 2 {
                    Image("searchTabIconSelected")
                } else {
                    Image("searchTabIcon")
                }
            }
            .tag(2)
            
            FriendListView()
            .tabItem {
                if selection == 3 {
                    Image("shopTabIconSelected")
                } else {
                    Image("shopTabIcon")
                }
            }
            .tag(3)
            
            MoreView()
            .tabItem {
                if selection == 4 {
                    Image("detailTabIconSelected")
                } else {
                    Image("detailTabIcon")
                }
            }
            .tag(4)
        }
    }
}

struct KakaoView_Previews: PreviewProvider {
    static var previews: some View {
        KakaoView()
    }
}
