//
//  CollectionCell_Contact.swift
//  AR Magic Tile
//
//  Created by พัทธนันท์ ปุ่นน้ำใส on 20/10/20.
//

import UIKit

class CollectionCell_Contact : UICollectionViewCell {
    
    // MARK: Parameter
    
    // MARK: Element
    // Icon
    var Icon : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "Order").withRenderingMode(.alwaysTemplate)
        image.tintColor = UIColor.Black_Text
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    // Label Contact Header
    var Lb_Contact_H : UILabel = {
        let label = UILabel()
        label.text = "Test"
        label.font = UIFont.RightousRegular(size: 16)
        label.textColor = UIColor.Black_Text
        
        return label
    }()
    
    // Label Description Header
    var Lb_Des_H : UILabel = {
        let label = UILabel()
        label.text = "???????????????????????????????????????????????????????????????????????"
        label.font = UIFont.MontserratRegular(size: 14)
        label.textColor = UIColor.Black_Text
        
        label.numberOfLines = 3
        
        return label
    }()
    
    // MARK: Layout
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Set BG Cell
        backgroundColor = .clear
        
        // Set Icon
        addSubview(Icon)
        Icon.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 24, heightConstant: 24)
        
        // Set label Contact Header
        addSubview(Lb_Contact_H)
        Lb_Contact_H.anchorCenter(nil, AxisY: Icon.centerYAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Lb_Contact_H.anchor(nil, left: Icon.rightAnchor, bottom: nil, right: rightAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // Set Label Description Contact
        addSubview(Lb_Des_H)
        Lb_Des_H.anchor(Lb_Contact_H.bottomAnchor, left: Lb_Contact_H.leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
