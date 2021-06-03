//
//  MoreCell.swift
//  SwiftUI-KakaoClone
//
//  Created by SHIN YOON AH on 2021/06/03.
//

import SwiftUI

struct MoreCell: View {
    var title: String
    
    var body: some View {
        VStack {
            Image("messageTabIcon")
                .resizable()
                .frame(width: 23, height: 23)
                
            Text(title)
                .font(.system(size: 11))
                .foregroundColor(.black)
                .padding(.top, 1)
        }
    }
}

struct MoreCell_Previews: PreviewProvider {
    static var previews: some View {
        MoreCell(title: "메일")
    }
}
