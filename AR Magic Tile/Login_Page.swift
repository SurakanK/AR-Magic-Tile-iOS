//
//  Login_Page.swift
//  AR Magic Tile
//
//  Created by พัทธนันท์ ปุ่นน้ำใส on 15/10/20.
//

import UIKit

class Login_Page : UIViewController {
    
    // MARK: Parameter
    
    // State Permiss
    var State_Permiss : Bool = false
    
    // MARK: Element
    // Image BG
    var Im_BG : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "Image").withRenderingMode(.alwaysOriginal)
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    // Label Name Application
    var Lb_NameApp : UILabel = {
        let label = UILabel()
        label.font = UIFont.RightousRegular(size: 24)
        label.text = "AR Magic Tile"
        label.textColor = UIColor.Black_Text
        label.textAlignment = .center
        
        // Set Shadow
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 3, height: 3)
        label.layer.shadowOpacity = 0.16
        label.layer.shadowRadius = 6
        
        return label
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
    
    // Label Welcome
    var Lb_Welcome : UILabel = {
        let label = UILabel()
        label.font = UIFont.RightousRegular(size: 48)
        label.text = "Welcome to"
        label.textColor = UIColor.Black_Text
        label.textAlignment = .center
        
        // Set Shadow
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 3, height: 3)
        label.layer.shadowOpacity = 0.16
        label.layer.shadowRadius = 6
        
        return label
    }()
    
    
    // View Btn Login FaceBook -------------------------------
    // View Facbook
    var View_Facebook : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.Blue_Primary
        
        // Set Corner
        view.layer.cornerRadius = 5
        
        // Set Shadow
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        view.layer.shadowOpacity = 0.16
        view.layer.shadowRadius = 6
        
        return view
    }()
    // Icon Facebook
    var Icon_Facebook : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "facebook").withRenderingMode(.alwaysTemplate)
        image.tintColor = UIColor.White_Secondary
        image.contentMode = .scaleAspectFit
        return image
    }()
    // Label Facebook
    var Lb_Facebook : UILabel = {
        let label = UILabel()
        label.font = UIFont.RightousRegular(size: 14)
        label.text = "SIGN IN WITH FACEBOOK"
        label.textColor = UIColor.White_Secondary
        label.textAlignment = .center
        return label
    }()
    // Btn Facebook
    var Btn_Facebook : UIButton = {
        let Btn = UIButton()
        Btn.backgroundColor = .clear
        return Btn
    }()
    // -------------------------------------------------------
    
    // View Btn Login Google -------------------------------
    // View Google
    var View_Google : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.Red_Google
        
        // Set Corner
        view.layer.cornerRadius = 5
        
        // Set Shadow
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        view.layer.shadowOpacity = 0.16
        view.layer.shadowRadius = 6
        
        return view
    }()
    // Icon Google
    var Icon_Google : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "Google").withRenderingMode(.alwaysTemplate)
        image.tintColor = UIColor.White_Secondary
        image.contentMode = .scaleAspectFit
        return image
    }()
    // Label Google
    var Lb_Google : UILabel = {
        let label = UILabel()
        label.font = UIFont.RightousRegular(size: 14)
        label.text = "SIGN IN WITH GOOGLE"
        label.textColor = UIColor.White_Secondary
        label.textAlignment = .center
        return label
    }()
    // Btn Google
    var Btn_Google : UIButton = {
        let Btn = UIButton()
        Btn.backgroundColor = .clear
        
        // Add Target
        //Btn.addTarget(self, action: #selector(Btn_Skip_Click), for: .touchUpInside)
        
        return Btn
    }()
    // -------------------------------------------------------
    
    // View Check Permiss New -------------------------------
    // View Permiss
    var View_Permiss : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    // Icon Cehck Box
    var Icon_Check : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "Box-UnCheck").withRenderingMode(.alwaysTemplate)
        image.tintColor = UIColor.Black_Text
        image.contentMode = .scaleAspectFit
        return image
    }()
    // Label Permiss
    var Lb_Permiss : UILabel = {
        let label = UILabel()
        label.font = UIFont.MontserratRegular(size: 14)
        label.text = "Yes, Please keep me update on AR Magic Tile new, event and offer"
        label.textColor = UIColor.Black_Text
        label.numberOfLines = 3
        
        return label
    }()
    // Btn Permiss
    var Btn_Permiss : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        
        // Add Target Button
        btn.addTarget(self, action: #selector(Btn_Permiss_Click), for: .touchUpInside)
        
        return btn
    }()
    // -------------------------------------------------------
    
    // Btn Skip
    var Btn_Skip : UIButton = {
        let Btn = UIButton()
        Btn.backgroundColor = UIColor.White_Secondary
        Btn.setTitle("SKIP", for: .normal)
        Btn.setTitleColor(UIColor.Black_Text, for: .normal)
        Btn.titleLabel?.font = UIFont.RightousRegular(size: 16)
        
        // Set Corner and Border
        Btn.layer.cornerRadius = 5
        Btn.layer.borderWidth = 2
        Btn.layer.borderColor = UIColor.Black_Text?.cgColor
        
        // Set Shadow
        Btn.layer.shadowColor = UIColor.black.cgColor
        Btn.layer.shadowOffset = CGSize(width: 3, height: 3)
        Btn.layer.shadowOpacity = 0.16
        Btn.layer.shadowRadius = 6
        
        // Add Target
        Btn.addTarget(self, action: #selector(Btn_Skip_Click), for: .touchUpInside)
        
        return Btn
    }()
    
    // Btn Contact and About Us
    var Btn_ContactAbout : UIButton = {
        let Btn = UIButton()
        Btn.backgroundColor = .clear
        let attributedString = NSAttributedString(string: "ABOUT AND CONTACT US", attributes:[
            NSAttributedString.Key.font : UIFont.RightousRegular(size: 16),
            NSAttributedString.Key.foregroundColor : UIColor.Black_Text!,
            NSAttributedString.Key.underlineStyle: 2])
        Btn.setAttributedTitle(attributedString, for: .normal)
        
        // Add Target
        Btn.addTarget(self, action: #selector(Btn_AboutContact_Click), for: .touchUpInside)
        
        return Btn
    }()
    
    // MARK: Func Layout Page
    func Layout_Page(){
        
        // Set BG view
        view.backgroundColor = UIColor.White_Secondary
        
        // Set Image BG
        view.addSubview(Im_BG)
        Im_BG.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // Set Label Name Application
        view.addSubview(Lb_NameApp)
        Lb_NameApp.anchorCenter(view.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Lb_NameApp.anchor(nil, left: nil, bottom: view.centerYAnchor, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 28, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // Set Image Logo App
        view.addSubview(Im_Logo)
        Im_Logo.anchorCenter(view.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Im_Logo.anchor(nil, left: nil, bottom: Lb_NameApp.topAnchor, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 24, rightConstant: 0, widthConstant: 128, heightConstant: 128)
        
        // Set Label Welcome
        view.addSubview(Lb_Welcome)
        Lb_Welcome.anchorCenter(view.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Lb_Welcome.anchor(nil, left: nil, bottom: Im_Logo.topAnchor, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 34, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // Set StackView
        let Stackview = UIStackView(arrangedSubviews: [View_Facebook, View_Google, View_Permiss])
        Stackview.axis = .vertical
        Stackview.distribution = .fill
        Stackview.spacing = 16
        
        view.addSubview(Stackview)
        Stackview.anchorCenter(view.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Stackview.anchor(view.centerYAnchor, left: nil, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 308, heightConstant: 0)
        
        // Set View Btn Facebook -----------------------------------------------
        // Icon Facebook
        View_Facebook.addSubview(Icon_Facebook)
        Icon_Facebook.anchorCenter(nil, AxisY: View_Facebook.centerYAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Icon_Facebook.anchor(View_Facebook.topAnchor, left: View_Facebook.leftAnchor, bottom: View_Facebook.bottomAnchor, right: nil, topConstant: 12, leftConstant: 45, bottomConstant: 12, rightConstant: 0, widthConstant: 24, heightConstant: 24)
        
        // Label Facebook
        View_Facebook.addSubview(Lb_Facebook)
        Lb_Facebook.anchorCenter(nil, AxisY: Icon_Facebook.centerYAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Lb_Facebook.anchor(nil, left: Icon_Facebook.rightAnchor, bottom: nil, right: View_Facebook.rightAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 45, widthConstant: 0, heightConstant: 0)
        
        // Btn Facebook
        View_Facebook.addSubview(Btn_Facebook)
        Btn_Facebook.anchor(View_Facebook.topAnchor, left: View_Facebook.leftAnchor, bottom: View_Facebook.bottomAnchor, right: View_Facebook.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // ---------------------------------------------------------------------
        
        // Set View Btn Google -----------------------------------------------
        // Icon Google
        View_Google.addSubview(Icon_Google)
        Icon_Google.anchorCenter(nil, AxisY: View_Google.centerYAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Icon_Google.anchor(View_Google.topAnchor, left: View_Google.leftAnchor, bottom: View_Google.bottomAnchor, right: nil, topConstant: 12, leftConstant: 45, bottomConstant: 12, rightConstant: 0, widthConstant: 24, heightConstant: 24)
        
        // Label Google
        View_Google.addSubview(Lb_Google)
        Lb_Google.anchorCenter(nil, AxisY: Icon_Google.centerYAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Lb_Google.anchor(nil, left: Icon_Google.rightAnchor, bottom: nil, right: View_Google.rightAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 45, widthConstant: 0, heightConstant: 0)
        
        // Btn Google
        View_Google.addSubview(Btn_Google)
        Btn_Google.anchor(View_Google.topAnchor, left: View_Google.leftAnchor, bottom: View_Google.bottomAnchor, right: View_Google.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // ---------------------------------------------------------------------
        
        // Set View Btn Permiss -----------------------------------------------
        // Icon Check Permiss
        View_Permiss.addSubview(Icon_Check)
        Icon_Check.anchor(View_Permiss.topAnchor, left: View_Permiss.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 18, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        // Label Permiss
        View_Permiss.addSubview(Lb_Permiss)
        Lb_Permiss.anchor(Icon_Check.topAnchor, left: Icon_Check.rightAnchor, bottom: View_Permiss.bottomAnchor, right: View_Permiss.rightAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 18, widthConstant: 0, heightConstant: 0)
        
        // Btn Permiss
        View_Permiss.addSubview(Btn_Permiss)
        Btn_Permiss.anchor(Icon_Check.topAnchor, left: Icon_Check.leftAnchor, bottom: Lb_Permiss.bottomAnchor, right: Lb_Permiss.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // ---------------------------------------------------------------------
        
        // Set Btn Skip -----------------------------------------------
        view.addSubview(Btn_Skip)
        Btn_Skip.anchorCenter(view.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Btn_Skip.anchor(Stackview.bottomAnchor, left: nil, bottom: nil, right: nil, topConstant: 16, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 128, heightConstant: 34)
        // ---------------------------------------------------------------------
        
        // Set Btn Contact and About Us
        view.addSubview(Btn_ContactAbout)
        Btn_ContactAbout.anchorCenter(view.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Btn_ContactAbout.anchor(nil, left: nil, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 32, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        
        
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
    
    // MARK: Func Button
    // Func Button Event Click
    @objc func Btn_Permiss_Click(){
        
        // Change State Permiss
        State_Permiss = !State_Permiss
        
        // Check Icon Check Box
        if State_Permiss {
            Icon_Check.image = #imageLiteral(resourceName: "Box-Check").withRenderingMode(.alwaysTemplate)
        }else {
            Icon_Check.image = #imageLiteral(resourceName: "Box-UnCheck").withRenderingMode(.alwaysTemplate)
        }
        
        
    }
    
    // Func Button Skip Cleck
    @objc func Btn_Skip_Click(){
        
        // Animation when Click Button
        Control_AnimationClick(Btn: Btn_Skip)
        
        // Next to AR Page
        self.navigationController?.pushViewController(AR_Page(), animated: true)
        
    }

    // Func Button About&Contact Us
    @objc func Btn_AboutContact_Click(){
        
        self.navigationController?.pushViewController(ContactWisdomPage(), animated: true)
        
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
