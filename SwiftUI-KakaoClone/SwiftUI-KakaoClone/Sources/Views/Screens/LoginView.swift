//
//  LoginView.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/05/19.
//

import SwiftUI

struct LoginView: View {
    @State var presentingModal = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("카카오톡을 시작합니다")
                    .KakaoBoldTextStyle()
                    .padding(.bottom, 10)
                Text("사용하던 카카오계정이 있다면\n이메일 또는 전화번호로 로그인해주세요.")
                    .font(.system(size: 15))
                    .foregroundColor(Color(UIColor.darkGray))
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 80)
                
                LoginTextField(placeholder: "이메일 또는 전화번호")
                    .padding(.bottom, 20)
                LoginTextField(placeholder: "비밀번호", isSecure: true)
                    .padding(.bottom, 30)
                
                Button(action: {
                    self.presentingModal = true
                }) {
                    Text("카카오계정 로그인")
                }
                    .buttonStyle(LoginButtonStyle())
                    .padding(.bottom, 3)
                    .fullScreenCover(isPresented: $presentingModal, content: {
                        KakaoView()
                    })
                
                NavigationLink(
                    destination: RegisterView()) {
                    Text("새로운 카카오계정 만들기")
                }.buttonStyle(LoginButtonStyle())
         
                Spacer()
            }
            .padding(.horizontal, 20)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
