//
//  SimulationDetail_Page.swift
//  AR Magic Tile
//
//  Created by พัทธนันท์ ปุ่นน้ำใส on 22/10/20.
//

import UIKit
import FittedSheets

class SimulationDetial_Page : UIViewController {
    
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
    
    // Label Title Page
    var Lb_TitlePage : UILabel = {
        let label = UILabel()
        label.text = "Simulation Detail"
        label.font = UIFont.RightousRegular(size: 24)
        label.textColor = UIColor.Blue_Primary
        label.textAlignment = .center
        
        // Set Shadow
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 3, height: 3)
        label.layer.shadowOpacity = 0.16
        label.layer.shadowRadius = 6
        
        return label
    }()
    
    // Image Capture
    var Im_Capture : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "charles-deluvio-LyQi9DS7AEg-unsplash").withRenderingMode(.alwaysOriginal)
        image.contentMode = .scaleAspectFill
        
        // Set Corner radius
        image.layer.cornerRadius = 5
        image.layer.masksToBounds = true
        
        return image
    }()
    
    // Image Logo Application
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
        label.text = "AR Magic Tile"
        label.font = UIFont.RightousRegular(size: 16)
        label.textColor = UIColor.Black_Text
        label.textAlignment = .center
        
        // Set Shadow
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 3, height: 3)
        label.layer.shadowOpacity = 0.16
        label.layer.shadowRadius = 6
        
        return label
    }()
    
    // Btn Remove Ads
    var Btn_RemoveAds : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.Blue_Primary
        btn.setImage(#imageLiteral(resourceName: "Remove-Ads").withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = UIColor.White_Secondary
        
        btn.imageView?.contentMode = .scaleAspectFit
        btn.imageEdgeInsets = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        
        // Set Corner
        btn.layer.cornerRadius = 5
        
        // Set Shadow
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 3, height: 3)
        btn.layer.shadowOpacity = 0.16
        btn.layer.shadowRadius = 6
        
        // Add Target
        btn.addTarget(self, action: #selector(Btn_RemoveAds_Click), for: .touchUpInside)
        
        return btn
    }()
    
    // Btn Contact Order
    var Btn_Order : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.Blue_Primary
        btn.setImage(#imageLiteral(resourceName: "Order").withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = UIColor.White_Secondary
        
        btn.imageView?.contentMode = .scaleAspectFit
        btn.imageEdgeInsets = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        
        // Set Corner
        btn.layer.cornerRadius = 5
        
        // Set Shadow
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 3, height: 3)
        btn.layer.shadowOpacity = 0.16
        btn.layer.shadowRadius = 6
        
        // Add Target
        btn.addTarget(self, action: #selector(Btn_Order_Click), for: .touchUpInside)
        
        return btn
    }()
    
    // Btn Share image
    var Btn_Share : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.Blue_Primary
        btn.setImage(#imageLiteral(resourceName: "Share").withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = UIColor.White_Secondary
        
        btn.imageView?.contentMode = .scaleAspectFit
        btn.imageEdgeInsets = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        
        // Set Corner
        btn.layer.cornerRadius = 5
        
        // Set Shadow
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 3, height: 3)
        btn.layer.shadowOpacity = 0.16
        btn.layer.shadowRadius = 6
        
        // Add Target
        //btn.addTarget(self, action: #selector(Control_ViewCalculate), for: .touchUpInside)
        
        return btn
    }()
    
    // Btn Save image
    var Btn_Save : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.Blue_Primary
        btn.setImage(#imageLiteral(resourceName: "Save").withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = UIColor.White_Secondary
        
        btn.imageView?.contentMode = .scaleAspectFit
        btn.imageEdgeInsets = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        
        // Set Corner
        btn.layer.cornerRadius = 5
        
        // Set Shadow
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 3, height: 3)
        btn.layer.shadowOpacity = 0.16
        btn.layer.shadowRadius = 6
        
        // Add Target
        //btn.addTarget(self, action: #selector(Control_ViewCalculate), for: .touchUpInside)
        
        return btn
    }()
    
    // Btn Calculate
    var Btn_Calculate : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.Blue_Primary
        btn.setImage(#imageLiteral(resourceName: "Calculate").withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = UIColor.White_Secondary
        
        btn.imageView?.contentMode = .scaleAspectFit
        btn.imageEdgeInsets = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        
        // Set Corner
        btn.layer.cornerRadius = 5
        
        // Set Shadow
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 3, height: 3)
        btn.layer.shadowOpacity = 0.16
        btn.layer.shadowRadius = 6
        
        // Add Target
        btn.addTarget(self, action: #selector(Control_ViewCalculate), for: .touchUpInside)
        
        return btn
    }()
    
    // Image Product
    var Im_Product : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "Logo-AR-Magic-Tile-1").withRenderingMode(.alwaysOriginal)
        image.contentMode = .scaleAspectFit
        
        // Set Corner Radius
        image.layer.cornerRadius = 5
        image.layer.masksToBounds = true
        
        return image
    }()
    
    // Label Name Product
    var Lb_NameProduct : UILabel = {
        let label = UILabel()
        label.text = "GA-101 (1,900 BAHT/SQM)"
        label.font = UIFont.RightousRegular(size: 16)
        label.textColor = UIColor.Black_Text
        return label
    }()
    
    // Label Area
    var Lb_Area : UILabel = {
        let label = UILabel()
        label.text = "Area : ?? SQM (+?%)"
        label.font = UIFont.RightousRegular(size: 14)
        label.textColor = UIColor.Black_Text
        return label
    }()
    
    // Label Total Price
    var Lb_TotalPrice : UILabel = {
        let label = UILabel()
        label.text = "Total Price : ?? BAHT"
        label.font = UIFont.RightousRegular(size: 14)
        label.textColor = UIColor.Black_Text
        return label
    }()
    
    // Section View Calculate -------
    static var CalculateView = SheetViewController(controller: CalculatePrice_Page())
    // ------------------------------
    
    // MARK: Func Layout Page
    func Layout_Page(){
        
        // Set Color BG
        view.backgroundColor = UIColor.White_Secondary
        
        // Set Image BG
        view.addSubview(Im_BG)
        Im_BG.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // Set Btn Back
        view.addSubview(Btn_Back)
        Btn_Back.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, topConstant: 36, leftConstant: 16, bottomConstant: 0, rightConstant: 0, widthConstant: 24, heightConstant: 24)
        
        // Set Label Title Page
        view.addSubview(Lb_TitlePage)
        Lb_TitlePage.anchorCenter(view.centerXAnchor, AxisY: Btn_Back.centerYAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        
        // Set Image Capture
        view.addSubview(Im_Capture)
        Im_Capture.anchor(Btn_Back.bottomAnchor, left: Btn_Back.leftAnchor, bottom: nil, right: nil, topConstant: 24, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 225, heightConstant: 400)
        
        // Set Image Logo
        view.addSubview(Im_Logo)
        Im_Logo.anchor(Im_Capture.topAnchor, left: Im_Capture.rightAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 100)
        
        // Set Label Name App
        view.addSubview(Lb_NameApp)
        Lb_NameApp.anchor(Im_Logo.bottomAnchor, left: Im_Logo.leftAnchor, bottom: nil, right: Im_Logo.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // Set Btn Calculate
        view.addSubview(Btn_Calculate)
        Btn_Calculate.anchor(nil, left: Im_Logo.leftAnchor, bottom: Im_Capture.bottomAnchor, right: Im_Logo.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 38)
        
        // Set Btn Save
        view.addSubview(Btn_Save)
        Btn_Save.anchor(nil, left: Im_Logo.leftAnchor, bottom: Btn_Calculate.topAnchor, right: Im_Logo.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 12, rightConstant: 0, widthConstant: 0, heightConstant: 38)
        
        // Set Btn Share
        view.addSubview(Btn_Share)
        Btn_Share.anchor(nil, left: Im_Logo.leftAnchor, bottom: Btn_Save.topAnchor, right: Im_Logo.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 12, rightConstant: 0, widthConstant: 0, heightConstant: 38)
        
        // Set Btn Order Contact
        view.addSubview(Btn_Order)
        Btn_Order.anchor(nil, left: Im_Logo.leftAnchor, bottom: Btn_Share.topAnchor, right: Im_Logo.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 12, rightConstant: 0, widthConstant: 0, heightConstant: 38)
        
        // Set Btn Remove Ads
        view.addSubview(Btn_RemoveAds)
        Btn_RemoveAds.anchor(nil, left: Im_Logo.leftAnchor, bottom: Btn_Order.topAnchor, right: Im_Logo.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 12, rightConstant: 0, widthConstant: 0, heightConstant: 38)
        
        // Set Image Product
        view.addSubview(Im_Product)
        Im_Product.anchor(Im_Capture.bottomAnchor, left: Im_Capture.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 92, heightConstant: 92)
        
        // Set Label Name Product
        view.addSubview(Lb_NameProduct)
        Lb_NameProduct.anchor(Im_Product.topAnchor, left: Im_Product.rightAnchor, bottom: nil, right: view.rightAnchor, topConstant: 10, leftConstant: 24, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // Set Label Area
        view.addSubview(Lb_Area)
        Lb_Area.anchor(Lb_NameProduct.bottomAnchor, left: Lb_NameProduct.leftAnchor, bottom: nil, right: Lb_NameProduct.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // Set Label Total Price
        view.addSubview(Lb_TotalPrice)
        Lb_TotalPrice.anchor(Lb_Area.bottomAnchor, left: Lb_Area.leftAnchor, bottom: nil, right: Lb_Area.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
    
    // MARK: Config Page
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
    
    // Func To Remove Ads
    @objc func Btn_RemoveAds_Click(){
        
        self.navigationController?.pushViewController(RemoveAds_Page(), animated: true)
        
    }
    
    // Func To Contact Order (Treetouch)
    @objc func Btn_Order_Click(){
        
        self.navigationController?.pushViewController(ContactTreeTouch(), animated: true)
        
    }
    
    // Func Open Calculate Price Page
    @objc func Control_ViewCalculate(){
        
        // Size Height SheetView
        /*let viewController = CalculatePrice_Page()
        viewController.viewDidLoad()
        viewController.View_Size.layoutIfNeeded()
        let HeightViewSheet : CGFloat = viewController.View_Size.frame.height*/
        //Setting SheetView
        let controller = CalculatePrice_Page()
        SimulationDetial_Page.CalculateView = SheetViewController(controller: controller, sizes: [/*SheetSize.fixed(HeightViewSheet)*/.intrinsic])
        SimulationDetial_Page.CalculateView.overlayColor = UIColor.BlackAlpha(alpha: 0.6)
        SimulationDetial_Page.CalculateView.cornerRadius = 24
        SimulationDetial_Page.CalculateView.gripSize = CGSize(width: 250, height: 10)
        SimulationDetial_Page.CalculateView.gripColor = UIColor.Blue_Primary
        
        self.present(SimulationDetial_Page.CalculateView, animated: true, completion: nil)
        
    }
    
    // MARK: Normal Func
    
    
}
