//
//  VGridView.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/06/03.
//

import SwiftUI

struct VGridView: View {
    private var title: [String] = ["메일", "캘린더", "서랍", "카카오콘", "메이커스", "선물하기", "이모티콘", "프렌즈", "쇼핑하기", "스타일", "주문하기", "멜론티켓", "게임", "멜론", "헤어샵", "전체서비스"]
    
    var body: some View {
        GeometryReader { geometry in
            LazyVGrid(columns: [
                GridItem(.adaptive(minimum: geometry.size.width/4)),
                GridItem(.adaptive(minimum: geometry.size.width/4)),
                GridItem(.adaptive(minimum: geometry.size.width/4)),
                GridItem(.adaptive(minimum: geometry.size.width/4))
            ] , spacing: 25, content: {
                ForEach(title, id: \.self) { id in
                    MoreCell(title: id)
                }
            })
        }
    }
}

struct VGridView_Previews: PreviewProvider {
    static var previews: some View {
        VGridView()
    }
}
