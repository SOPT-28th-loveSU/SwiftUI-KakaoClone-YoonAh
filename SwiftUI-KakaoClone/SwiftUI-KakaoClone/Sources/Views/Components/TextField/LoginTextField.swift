//
//  LoginTextField.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/05/19.
//

import SwiftUI

struct LoginTextField: View {
    var placeholder: String = ""
    var isSecure: Bool = false
    
    @State private var inputValue: String = ""
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                if inputValue.isEmpty {
                    Text(placeholder)
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                }
                
                if isSecure {
                    SecureField("", text: $inputValue)
                } else {
                    TextField("", text: $inputValue)
                        .font(.system(size: 15))
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                }
            }
            Divider()
                .frame(height: 1.5)
                .background(Color(UIColor.systemGray4))
                .offset(x: 0, y: 8)
        }
    }
}

struct LoginTextField_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextField(placeholder: "email", isSecure: true)
    }
}
