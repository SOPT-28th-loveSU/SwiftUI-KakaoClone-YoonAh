//
//  ProfileView.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/06/09.
//

import SwiftUI

struct ProfileView: View {
    let name: String
    let image: String
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color(UIColor.systemGray)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center) {
                HStack {
                    Spacer()
                        .frame(width: 20)
                    
                    Button(action: {
                        print("dismiss")
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    })
                    
                    Spacer()
                }
                
                Spacer()
                
                Image(image)
                    .resizable()
                    .frame(width: 97, height: 97)
                
                Text(name)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding(.bottom, 42)
                
                Divider()
                    .background(Color.white)
                    .padding(.bottom, 20)
                
                MenuStack()
                    .padding(.bottom, 30)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(name: "최솝트", image: "friendtabProfileImg")
    }
}
