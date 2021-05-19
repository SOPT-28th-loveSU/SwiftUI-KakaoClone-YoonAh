//
//  RegisterView.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/05/19.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            Text("카카오톡을 시작합니다")
                .KakaoBoldTextStyle()
                .padding(.bottom, 10)
            
            Spacer()
                .frame(height: 100)
            
            LoginTextField(placeholder: "이메일 또는 전화번호")
                .padding(.bottom, 20)
            LoginTextField(placeholder: "비밀번호", isSecure: true)
                .padding(.bottom, 20)
            LoginTextField(placeholder: "비밀번호 확인", isSecure: true)
                .padding(.bottom, 30)
        
            Button(action: {
                print("button clicked!")
            }) {
                Text("새로운 카카오계정 만들기")
            }.buttonStyle(LoginButtonStyle())
            
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
