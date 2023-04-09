//
//  Font+.swift
//  Today
//
//  Created by 장다영 on 2023/03/28.
//

import UIKit

extension UIFont {
    
    enum FontWeight: String {
        case Bold, ExtraLight, Light, Regular, SemiBold
    }
    
    static func maruburi(size: CGFloat = 10, weight: FontWeight = .Regular) -> UIFont {
        return UIFont(name: "MaruBuri-\(weight)", size: size)!
    }
}
