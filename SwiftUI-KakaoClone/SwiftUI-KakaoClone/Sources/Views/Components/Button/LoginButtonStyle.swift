//
//  LoginButtonStyle.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/05/19.
//

import SwiftUI

struct LoginButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 15, weight: .bold))
            .frame(maxWidth: .infinity, maxHeight: 50)
            .foregroundColor(Color.black)
            .background(Color(UIColor.systemGray6))
            .cornerRadius(5)
    }
}

struct LoginButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("button clicked!")
        }) {
            Text("카카오계정 로그인")
        }.buttonStyle(LoginButtonStyle())
    }
}
