//
//  UIColor.swift
//  TeamMob
//
//  Created by DVT on 2018/04/24.
//  Copyright © 2018 dvt. All rights reserved.
//

import UIKit

extension UIColor {
    
    // Setup custom colours we can use throughout the app using hex values
    static let seemuBlue = UIColor(hex: 0x00adf7)
    static let teamBlue = UIColor(hex: 0x0291d2)
    static let androidGreen = UIColor(hex:0xA4C639)
    static let iosBlue = UIColor(hex: 0x5fc9f8)
    static let meanYellow = UIColor(hex:0xfd9426)
    static let transparentBlack = UIColor(hex: 0x000000, a: 0.5)
    
    // Create a UIColor from RGB
    convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: a
        )
    }
    
    // Create a UIColor from a hex value (E.g 0x000000)
    convenience init(hex: Int, a: CGFloat = 1.0) {
        self.init(
            red: (hex >> 16) & 0xFF,
            green: (hex >> 8) & 0xFF,
            blue: hex & 0xFF,
            a: a
        )
 }
}
