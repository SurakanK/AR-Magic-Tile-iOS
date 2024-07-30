//
//  Present_Page.swift
//  AR Magic Tile
//
//  Created by พัทธนันท์ ปุ่นน้ำใส on 15/10/20.
//

import UIKit

class Present_Page : UIViewController {
    
    // MARK: Parameter
    
    // MARK: Element in Page
    // Image Background
    var Im_BG : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "Image").withRenderingMode(.alwaysOriginal)
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    // View Logo ---------------------------------
    // View Logo Present
    var View_Logo : UIView = {
        let view = UIView()
        view.alpha = 0
        view.backgroundColor = .clear
        return view
    }()
    // Image Logo
    var Im_Logo : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "Logo-AR-Magic-Tile-1").withRenderingMode(.alwaysOriginal)
        image.contentMode = .scaleAspectFit
        
        // Set Shadow
        image.layer.shadowColor = UIColor.black.cgColor
        image.layer.shadowOffset = CGSize(width: 3, height: 3)
        image.layer.shadowOpacity = 0.16
        image.layer.shadowRadius = 6
        
        return image
    }()
    // Label Name App
    var Lb_NameApp : UILabel = {
        let label = UILabel()
        label.font = UIFont.RightousRegular(size: 48)
        label.text = "AR Magic Tile"
        label.textColor = UIColor.Black_Text
        label.textAlignment = .center
        return label
    }()
    // ---------------------------------------------
    
    // MARK: Func Layout Page
    func Layout_Page(){
        
        // Set Color View
        view.backgroundColor = UIColor.White_Secondary
        
        // Image BG
        view.addSubview(Im_BG)
        Im_BG.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // View Logo Present --------------------------------------
        // View Logo
        view.addSubview(View_Logo)
        View_Logo.anchorCenter(view.centerXAnchor, AxisY: view.centerYAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        // Im Logo
        View_Logo.addSubview(Im_Logo)
        Im_Logo.anchorCenter(View_Logo.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Im_Logo.anchor(View_Logo.topAnchor, left: nil, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 256, heightConstant: 256)
        // Label Name App
        View_Logo.addSubview(Lb_NameApp)
        Lb_NameApp.anchor(Im_Logo.bottomAnchor, left: View_Logo.leftAnchor, bottom: View_Logo.bottomAnchor, right: View_Logo.rightAnchor, topConstant: 24, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)

        
        
    }
    
    
    // MARK: Func Config Page
    func Config_Page(){
        
        // Animation of Present Logo App
        UIView.animate(withDuration: 0.5) {
            // Show Logo Application
            self.View_Logo.alpha = 1
        }
        
        // Hide Logo Application When Present and Next to Login Page
        UIView.animate(withDuration: 0.5, delay: 2, options: .curveEaseInOut) {
            self.View_Logo.alpha = 0
        } completion: { (_) in
            
            // Present Login Page
            self.Into_LoginPage()
            
        }

        
        
        
    }
    
    
    // MARK: Func Lift Cycle Page
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Layout Page
        Layout_Page()
        
        // Config Page
        Config_Page()
        
        
    }
    
    // MARK: Normal Func
    // Func Next to Login Page
    func Into_LoginPage(){
        
        let Nav_LoginPage = UINavigationController(rootViewController: Login_Page())
        Nav_LoginPage.isNavigationBarHidden = true
        Nav_LoginPage.modalPresentationStyle = .fullScreen
        self.present(Nav_LoginPage, animated: true, completion: nil)
        
    }
    
}
