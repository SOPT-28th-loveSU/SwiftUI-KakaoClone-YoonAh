//
//  ChatView.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/06/15.
//

import SwiftUI

struct ChatView: View {
    let name: String
    let image: String
    let chat: String
    
    var body: some View {
        Text(chat)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(name: "최솝트", image: "friendtabProfileImg", chat:"안녕")
    }
}

