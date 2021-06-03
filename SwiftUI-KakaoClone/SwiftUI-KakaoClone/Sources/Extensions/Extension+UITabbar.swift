//
//  Extension+UITabbar.swift
//  ABLY-iOS
//
//  Created by SHIN YOON AH on 2021/05/21.
//

import UIKit

extension UITabBar {
    static func clearShadow() {
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().backgroundColor = UIColor.systemGray6
    }
}
