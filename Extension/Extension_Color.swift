//
//  Extension_Color.swift
//  AR Magic Tile
//
//  Created by พัทธนันท์ ปุ่นน้ำใส on 15/10/20.
//

import UIKit

// Extention UIColor
extension UIColor{
    
    static func whiteAlpha(alpha : CGFloat) -> UIColor{
        return UIColor(white: 1, alpha: alpha)
    }
    
    static func BlackAlpha(alpha : CGFloat) -> UIColor{
        return UIColor(white: 0, alpha: alpha)
    }
    
    static func rgb(red : CGFloat, green : CGFloat, blue : CGFloat) -> UIColor{
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    static func rgbAlpha(red : CGFloat, green : CGFloat, blue : CGFloat, alpha : CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
    public class var random: UIColor {
        return UIColor(red: CGFloat(drand48()),
                       green: CGFloat(drand48()),
                       blue: CGFloat(drand48()), alpha: 1.0)
    }
    
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
    
    // List Color
    // Primary Color
    static var Blue_Primary = UIColor(hex: "#63A2BBFF")
    // Background Color
    static var White_Secondary = UIColor(hex: "#F2F2F2FF")
    // Color Text1
    static var Black_Text = UIColor(hex: "#707070FF")
    // Color Text2
    static var Gray_Text = UIColor(hex: "#C4C4C4FF")
    // Color Red Google
    static var Red_Google = UIColor(hex: "#FF8080FF")

}

