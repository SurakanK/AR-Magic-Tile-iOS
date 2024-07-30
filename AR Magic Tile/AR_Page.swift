//
//  AR_Page.swift
//  AR Magic Tile
//
//  Created by พัทธนันท์ ปุ่นน้ำใส on 16/10/20.
//

import UIKit

class AR_Page : UIViewController {
    
    // MARK: Parameter
    
    // MARK: Element
    // Image Test (SceneView Replace)
    var Im_Test : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "charles-deluvio-LyQi9DS7AEg-unsplash").withRenderingMode(.alwaysOriginal)
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    // Button Logout
    var Btn_Logout : UIButton = {
        let btn = UIButton()
        btn.setImage(#imageLiteral(resourceName: "logout").withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = UIColor.White_Secondary
        
        // Add Target
        btn.addTarget(self, action: #selector(Btn_Logout_Click), for: .touchUpInside)
        
        return btn
    }()
    
    // Button Clear
    var Btn_Clear : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor(hex: "#63A2BB80")
        btn.setTitle("CLEAR", for: .normal)
        btn.setTitleColor(UIColor.White_Secondary, for: .normal)
        btn.titleLabel?.font = UIFont.RightousRegular(size: 16)
        
        // Set Corner and Border
        btn.layer.cornerRadius = 5
        btn.layer.borderWidth = 2
        btn.layer.borderColor = UIColor.White_Secondary?.cgColor
        
        return btn
    }()
    
    // Button Remove Ads
    var Btn_RemoveAds : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor(hex: "#63A2BB80")
        btn.setTitle("REMOVE ADS", for: .normal)
        btn.setTitleColor(UIColor.White_Secondary, for: .normal)
        btn.titleLabel?.font = UIFont.RightousRegular(size: 16)
        
        // Set Corner and Border
        btn.layer.cornerRadius = 5
        btn.layer.borderWidth = 2
        btn.layer.borderColor = UIColor.White_Secondary?.cgColor
        
        // Add Target
        btn.addTarget(self, action: #selector(Btn_RemoveAds_Click), for: .touchUpInside)
        
        return btn
    }()
    
    // Button Capture
    var Btn_Capture : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor(hex: "#63A2BB80")
        btn.setImage(#imageLiteral(resourceName: "Camera").withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = UIColor.White_Secondary
        btn.imageView?.contentMode = .scaleAspectFit
        btn.imageEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
        // Set Corner and Border
        btn.layer.cornerRadius = 5
        btn.layer.borderWidth = 2
        btn.layer.borderColor = UIColor.White_Secondary?.cgColor
        
        // Add Target
        btn.addTarget(self, action: #selector(Btn_Capture_Click), for: .touchUpInside)
        
        return btn
    }()
    
    // Button Category
    var Btn_Category : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor(hex: "#63A2BB80")
        btn.setImage(#imageLiteral(resourceName: "Category").withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = UIColor.White_Secondary
        btn.imageView?.contentMode = .scaleAspectFit
        btn.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        // Set Corner and Border
        btn.layer.cornerRadius = 5
        btn.layer.borderWidth = 2
        btn.layer.borderColor = UIColor.White_Secondary?.cgColor
        
        return btn
    }()
    
    
    
    
    // MARK: Func Layout Page
    func Layout_Page(){
        
        // Set Image Test
        view.addSubview(Im_Test)
        Im_Test.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // Set Button Logout
        view.addSubview(Btn_Logout)
        Btn_Logout.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, topConstant: 36, leftConstant: 16, bottomConstant: 0, rightConstant: 0, widthConstant: 34, heightConstant: 34)
        
        // Set Button Clear
        view.addSubview(Btn_Clear)
        Btn_Clear.anchor(view.topAnchor, left: nil, bottom: nil, right: view.rightAnchor, topConstant: 36, leftConstant: 0, bottomConstant: 0, rightConstant: 16, widthConstant: 82, heightConstant: 34)
        
        // Set Button Remove Ads
        view.addSubview(Btn_RemoveAds)
        Btn_RemoveAds.anchor(Btn_Clear.topAnchor, left: nil, bottom: nil, right: Btn_Clear.leftAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 8, widthConstant: 124, heightConstant: 34)
        
        // Set Btn Capture
        view.addSubview(Btn_Capture)
        Btn_Capture.anchorCenter(view.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Btn_Capture.anchor(nil, left: nil, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 16, rightConstant: 0, widthConstant: 88, heightConstant: 48)
        
        // Set Btn Category
        view.addSubview(Btn_Category)
        Btn_Category.anchor(nil, left: nil, bottom: Btn_Capture.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 16, widthConstant: 48, heightConstant: 48)
        
    }
    
    // MARK: Func Config Page
    func Config_Page(){
        
    }
    
    // MARK: Func Life Cycle Page
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Layout Page
        Layout_Page()
        
    }
    
    
    
    
    // MARK: Func Event Button Click
    // Func Btn Log out Click
    @objc func Btn_Logout_Click(){
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    // Func Btn Remove Ads Click
    @objc func Btn_RemoveAds_Click(){
        
        // Next to Remove Page
        self.navigationController?.pushViewController(RemoveAds_Page(), animated: true)
        
        
    }
    
    // Func Btn Capture Click
    @objc func Btn_Capture_Click(){
        
        // Next to Simulation Detial Page
        self.navigationController?.pushViewController(SimulationDetial_Page(), animated: true)
        
    }
    
    
    
    
    // MARK: Normal Func
    // Func Control Animation When Button Click
    func Control_AnimationClick(Btn : UIButton){
        
        // Animation when Click Button
        UIView.animate(withDuration: 0.25) {
            Btn.alpha = 0.5
        } completion: { (_) in
            Btn.alpha = 1
        }

        
    }
    
}
