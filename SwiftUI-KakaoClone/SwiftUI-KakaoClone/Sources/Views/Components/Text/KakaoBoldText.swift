//
//  KakaoBoldText.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/05/19.
//

import SwiftUI

struct KakaoBoldText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20, weight: .semibold, design: .default))
    }
}

extension View {
    func KakaoBoldTextStyle() -> some View {
        modifier(KakaoBoldText())
    }
}
