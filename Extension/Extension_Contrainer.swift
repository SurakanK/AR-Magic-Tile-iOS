//
//  Extension_Contrainer.swift
//  AR Magic Tile
//
//  Created by พัทธนันท์ ปุ่นน้ำใส on 15/10/20.
//

import UIKit

// Extention Of UIView
extension UIView {
    
    // Func Add Constraint of Element Top,left,bottom,right
    func anchor(_ top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, topConstant : CGFloat = 0, leftConstant : CGFloat = 0, bottomConstant : CGFloat = 0, rightConstant : CGFloat = 0, widthConstant : CGFloat = 0, heightConstant : CGFloat = 0){
        
        _ = anchorPositionReturn(top, left: left, bottom: bottom, right: right, topConstant: topConstant, leftConstant: leftConstant, bottomConstant: bottomConstant, rightConstant: rightConstant, widthConstant: widthConstant, heightConstant: heightConstant)
        
    }
    
    func anchorPositionReturn(_ top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, topConstant : CGFloat = 0, leftConstant : CGFloat = 0, bottomConstant : CGFloat = 0, rightConstant : CGFloat = 0, widthConstant : CGFloat = 0, heightConstant : CGFloat = 0) -> [NSLayoutConstraint] {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        var anchors = [NSLayoutConstraint]()
        
        // Set Constraint top, left, bottom, right, wight, height
        if let top = top {
            anchors.append(topAnchor.constraint(equalTo: top, constant: topConstant))
        }
        if let left = left {
            anchors.append(leftAnchor.constraint(equalTo: left, constant: leftConstant))
        }
        if let bottom = bottom {
            anchors.append(bottomAnchor.constraint(equalTo: bottom, constant: -bottomConstant))
        }
        if let right = right {
            anchors.append(rightAnchor.constraint(equalTo: right, constant: -rightConstant))
        }
        
        // Set Constraint Width, Height
        if widthConstant > 0 {
            anchors.append(widthAnchor.constraint(equalToConstant: widthConstant))
        }
        if heightConstant > 0 {
            anchors.append(heightAnchor.constraint(equalToConstant: heightConstant))
        }
        
        anchors.forEach({$0.isActive = true})
        
        return anchors
        
    }
    
    // Func add Constriant Center X, Center Y, Width, Height
    func anchorCenter(_ AxisX: NSLayoutXAxisAnchor? = nil, AxisY : NSLayoutYAxisAnchor? = nil, ConstantAxisX : CGFloat = 0, ConstantAxisY : CGFloat, widthConstant : CGFloat = 0, heightConstant : CGFloat = 0){
        
        _ = anchorCenterPositionReturn(AxisX, AxisY: AxisY, ConstantAxisX: ConstantAxisX, ConstantAxisY: ConstantAxisY, widthConstant: widthConstant, heightConstant: heightConstant)
        
    }
    
    func anchorCenterPositionReturn(_ AxisX: NSLayoutXAxisAnchor? = nil, AxisY : NSLayoutYAxisAnchor? = nil, ConstantAxisX : CGFloat = 0, ConstantAxisY : CGFloat, widthConstant : CGFloat = 0, heightConstant : CGFloat = 0) -> [NSLayoutConstraint] {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        var anchors = [NSLayoutConstraint]()
        
        if let AxisX = AxisX {
            anchors.append(centerXAnchor.constraint(equalTo: AxisX, constant: ConstantAxisX))
        }
        if let AxisY = AxisY {
            anchors.append(centerYAnchor.constraint(equalTo: AxisY, constant: ConstantAxisY))
        }
        
        // Set Constraint Width, Height
        if widthConstant > 0 {
            anchors.append(widthAnchor.constraint(equalToConstant: widthConstant))
        }
        if heightConstant > 0 {
            anchors.append(heightAnchor.constraint(equalToConstant: heightConstant))
        }
        
        anchors.forEach({$0.isActive = true})
        return anchors
        
    }
}


