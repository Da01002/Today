//
//  Color+.swift
//  Today
//
//  Created by 장다영 on 2023/03/28.
//

import UIKit

enum appColor: Int {
    
    // background
    case background = 0
    
    // cell
    case warm1 = 1
    case warm2 = 2
    case warm3 = 3
    case cool1 = 4
    case cool2 = 5
    case cool3 = 6

    // font
    case font = 7
    
    
}

extension UIColor {
    static func customColor(_ name: appColor) -> UIColor {
        switch name {
        case .background:
            return #colorLiteral(red: 0.9607843757, green: 0.9607842565, blue: 0.9607842565, alpha: 1)
        case .warm1:
            return #colorLiteral(red: 0.9490196078, green: 0.9176470588, blue: 0.9019607843, alpha: 1)
        case .warm2:
            return #colorLiteral(red: 0.9098039216, green: 0.8666666667, blue: 0.8470588235, alpha: 1)
        case .warm3:
            return #colorLiteral(red: 0.8745098039, green: 0.8117647059, blue: 0.7843137255, alpha: 1)
        case .cool1:
            return #colorLiteral(red: 0.9058823529, green: 0.9254901961, blue: 0.9333333333, alpha: 1)
        case .cool2:
            return #colorLiteral(red: 0.7882352941, green: 0.831372549, blue: 0.8509803922, alpha: 1)
        case .cool3:
            return #colorLiteral(red: 0.7294117647, green: 0.7843137255, blue: 0.8078431373, alpha: 1)
        case .font:
            return #colorLiteral(red: 0.6431372549, green: 0.6431372549, blue: 0.6431372549, alpha: 1)

        }
    }
}
