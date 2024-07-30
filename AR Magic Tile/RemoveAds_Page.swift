//
//  RemoveAds_Page.swift
//  AR Magic Tile
//
//  Created by พัทธนันท์ ปุ่นน้ำใส on 21/10/20.
//

import UIKit

class RemoveAds_Page : UIViewController {
    
    // MARK: Parameter
    
    // MARK: Element
    // Image BG
    var Im_BG : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "Image").withRenderingMode(.alwaysOriginal)
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    // Btn Back
    var Btn_Back : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setImage(#imageLiteral(resourceName: "Back").withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = UIColor.Blue_Primary
        btn.imageView?.contentMode = .scaleAspectFit
        btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        // Set Shadow
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 3, height: 3)
        btn.layer.shadowOpacity = 0.16
        btn.layer.shadowRadius = 6
        
        // Add Target
        btn.addTarget(self, action: #selector(Btn_Back_Click), for: .touchUpInside)
        
        return btn
    }()
    
    // View Remove Ads
    var View_RemoveAds : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        // Set Corner
        view.layer.cornerRadius = 5
        
        // Set Shadow
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        view.layer.shadowOpacity = 0.16
        view.layer.shadowRadius = 6
        
        return view
    }()
    
    // Label Header Remove Ads
    var Lb_H_RemoveAds : UILabel = {
        let label = UILabel()
        label.text = "Remove Ads"
        label.font = UIFont.RightousRegular(size: 34)
        label.textColor = UIColor.Black_Text
        label.textAlignment = .center
        
        return label
    }()
    
    // Image Remove Ads
    var Im_RemoveAds : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "Remove-Ads-1000x1000").withRenderingMode(.alwaysOriginal)
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    // Label Description RemoveAds
    var Lb_Des_RemoveAds : UILabel = {
        let label = UILabel()
        label.text = """
When you Upgade, all advertisements displayed in applications will be closed. Make you use the application more comfortably.
"""
        label.font = UIFont.MontserratRegular(size: 16)
        label.textColor = UIColor.Black_Text
        label.numberOfLines = 0
        return label
    }()
    
    // Btn Purchase Remove Ads
    var Btn_RemoveAds : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.Blue_Primary
        btn.setTitle("0.99 USD", for: .normal)
        btn.titleLabel?.font = UIFont.RightousRegular(size: 24)
        btn.titleLabel?.textColor = UIColor.White_Secondary
        
        // Set Corner
        btn.layer.cornerRadius = 5
        
        // Set Shadow
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 3, height: 3)
        btn.layer.shadowOpacity = 0.16
        btn.layer.shadowRadius = 6
        
        
        return btn
    }()
    
    // MARK: Func Layout Page
    func Layout_Page(){
        
        // Set Bg View
        view.backgroundColor = UIColor.White_Secondary
        
        // Set Image Bg
        view.addSubview(Im_BG)
        Im_BG.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // Set Btn Back
        view.addSubview(Btn_Back)
        Btn_Back.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, topConstant: 36, leftConstant: 16, bottomConstant: 0, rightConstant: 0, widthConstant: 24, heightConstant: 24)
        
        // Set View RemoveAds
        view.addSubview(View_RemoveAds)
        View_RemoveAds.anchor(Btn_Back.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 28, leftConstant: 18, bottomConstant: 0, rightConstant: 18, widthConstant: 0, heightConstant: 0)
        
        // Set Label Header
        View_RemoveAds.addSubview(Lb_H_RemoveAds)
        Lb_H_RemoveAds.anchorCenter(View_RemoveAds.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Lb_H_RemoveAds.anchor(View_RemoveAds.topAnchor, left: nil, bottom: nil, right: nil, topConstant: 18, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // Set Image Remove Ads
        View_RemoveAds.addSubview(Im_RemoveAds)
        Im_RemoveAds.anchorCenter(View_RemoveAds.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Im_RemoveAds.anchor(Lb_H_RemoveAds.bottomAnchor, left: nil, bottom: nil, right: nil, topConstant: 28, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 200, heightConstant: 200)
        
        // Label Description RemoveAds
        View_RemoveAds.addSubview(Lb_Des_RemoveAds)
        Lb_Des_RemoveAds.anchor(Im_RemoveAds.bottomAnchor, left: View_RemoveAds.leftAnchor, bottom: View_RemoveAds.bottomAnchor, right: View_RemoveAds.rightAnchor, topConstant: 28, leftConstant: 16, bottomConstant: 18, rightConstant: 16, widthConstant: 0, heightConstant: 0)
        
        // Set Btn Purchase RemoveAds
        view.addSubview(Btn_RemoveAds)
        Btn_RemoveAds.anchor(View_RemoveAds.bottomAnchor, left: View_RemoveAds.leftAnchor, bottom: nil, right: View_RemoveAds.rightAnchor, topConstant: 18, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 48)
        
    }
    
    // MARK: Func Config Page
    func Config_Page(){
        
    }
    
    // MARK: Func Life Cycle Page
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Layout Page
        Layout_Page()
        
        // Config Page
        Config_Page()
    }
    
    // MARK: Func Event Button
    // Func Btn Back Click
    @objc func Btn_Back_Click(){
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    // MARK: Normal Func
    
    
}
