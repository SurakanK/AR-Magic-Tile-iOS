//
//  CalculatePrice_Page.swift
//  AR Magic Tile
//
//  Created by พัทธนันท์ ปุ่นน้ำใส on 24/10/20.
//

import UIKit
import BetterSegmentedControl
import ALRadioButtons

class CalculatePrice_Page : UIViewController {
    
    // MARK: Parameter
    
    // MARK: Element
    // View Size
    var View_Size : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    // Image BG
    var Im_BG : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "Image").withRenderingMode(.alwaysOriginal)
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    // Label Title Page
    var Lb_TitlePage : UILabel = {
        let label = UILabel()
        label.text = "Calculate Price"
        label.font = UIFont.RightousRegular(size: 24)
        label.textColor = UIColor.Black_Text
        label.textAlignment = .center
        
        // Set Shadow
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 3, height: 3)
        label.layer.shadowOpacity = 0.16
        label.layer.shadowRadius = 6
        
        return label
    }()
    
    // Segment Area Sty
    var Seg_StyArea : BetterSegmentedControl = {
        let Seg = BetterSegmentedControl(frame: .zero, segments: LabelSegment.segments(withTitles: ["Area", "L x W"], normalFont: UIFont.RightousRegular(size: 16), normalTextColor: UIColor.Black_Text, selectedFont: UIFont.RightousRegular(size: 16), selectedTextColor: UIColor.White_Secondary), index: 0, options: [.backgroundColor(UIColor.white), .indicatorViewBackgroundColor(UIColor.Blue_Primary!)])
        
        // Set Corner Radius and Border
        Seg.layer.borderWidth = 2
        Seg.layer.borderColor = UIColor.Black_Text?.cgColor
        Seg.layer.cornerRadius = 5
        
        // Set Shadow
        Seg.layer.shadowColor = UIColor.black.cgColor
        Seg.layer.shadowOffset = CGSize(width: 3, height: 3)
        Seg.layer.shadowOpacity = 0.16
        Seg.layer.shadowRadius = 6
        
        // Add Target
        //Seg.addTarget(self, action: <#T##Selector#>, for: .valueChanged)
        
        return Seg
    }()
    
    // Label Header Size
    var Lb_H_Size : UILabel = {
        let label = UILabel()
        label.text = "Size :"
        label.font = UIFont.RightousRegular(size: 16)
        label.textColor = UIColor.Black_Text
        return label
    }()
    
    // Txt Area and Lenght
    var Txt_Area : UITextField = {
        let txt = UITextField()
        txt.backgroundColor = UIColor.clear
        txt.font = UIFont.MontserratRegular(size: 16)
        txt.textColor = UIColor.Black_Text
        txt.textAlignment = .center
        txt.keyboardType = .decimalPad
        
        // Set Border and Corner
        txt.layer.borderColor = UIColor.Black_Text?.cgColor
        txt.layer.borderWidth = 2
        txt.layer.cornerRadius = 5
        
        // Set Placeholder
        let centeredParagraphStyle = NSMutableParagraphStyle()
        centeredParagraphStyle.alignment = .center
        txt.attributedPlaceholder = NSAttributedString(string: "Area(SQM)", attributes: [NSAttributedString.Key.font : UIFont.MontserratRegular(size: 16), NSAttributedString.Key.paragraphStyle : centeredParagraphStyle])
        
        return txt
    }()
    
    // Txt Width
    var Txt_Width : UITextField = {
        let txt = UITextField()
        txt.backgroundColor = UIColor.clear
        txt.font = UIFont.MontserratRegular(size: 16)
        txt.textColor = UIColor.Black_Text
        txt.textAlignment = .center
        txt.keyboardType = .decimalPad
        
        // Set Border and Corner
        txt.layer.borderColor = UIColor.Black_Text?.cgColor
        txt.layer.borderWidth = 2
        txt.layer.cornerRadius = 5
        
        // Set Placeholder
        let centeredParagraphStyle = NSMutableParagraphStyle()
        centeredParagraphStyle.alignment = .center
        txt.attributedPlaceholder = NSAttributedString(string: "Width(m)", attributes: [NSAttributedString.Key.font : UIFont.MontserratRegular(size: 16), NSAttributedString.Key.paragraphStyle : centeredParagraphStyle])
        
        return txt
    }()
    
    // Label Header Spare Tile
    var Lb_H_Spare : UILabel = {
        let label = UILabel()
        label.text = "How many percent of spare tile?"
        label.font = UIFont.RightousRegular(size: 16)
        label.textColor = UIColor.Black_Text
        label.textAlignment = .center
        return label
    }()
    
    // Radio Button Spare Tile
    var Radio_SpareTile : ALRadioGroup = {
        let radio = ALRadioGroup(items: [.init(title: "5%"),.init(title: "10%"),.init(title: "15%"),.init(title: "None")], style: .standard)
        radio.selectedIndex = 0
        radio.axis = .horizontal
        radio.cornerRadius = 0
        radio.spacing = 8
        radio.buttonBackgroundColor = .clear
        radio.separatorColor = .clear
        
        // Set Font
        radio.titleFont = UIFont.RightousRegular(size: 16)
        radio.tintColor = UIColor.Black_Text
        
        // Set Ring
        radio.indicatorRingSize = 24
        radio.indicatorRingWidth = 2
        radio.indicatorCircleInset = 0
        
        // Set Unselect
        radio.unselectedTitleColor = UIColor.Black_Text!
        radio.unselectedIndicatorColor = UIColor.Black_Text!
        
        // Set Unselect
        radio.selectedTitleColor = UIColor.Black_Text!
        radio.selectedIndicatorColor = UIColor.Blue_Primary!
        
        // Add Target
        //radio.addTarget(self, action: #selector(<#T##@objc method#>), for: .valueChanged)
        
        return radio
    }()
    
    // View Result
    var View_Result : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        // Set Corner Radius and Border
        view.layer.cornerRadius = 5
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.Black_Text?.cgColor
        
        // Set Shadow
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        view.layer.shadowOpacity = 0.16
        view.layer.shadowRadius = 6
        
        return view
    }()
    
    // Label Result Total Price
    var Lb_TotalPrice : UILabel = {
        let label = UILabel()
        label.text = "??????? BAHT"
        label.font = UIFont.RightousRegular(size: 24)
        label.textColor = UIColor.Black_Text
        label.textAlignment = .center
        return label
    }()
    
    // Btn Save TotalPrice
    var Btn_Save : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.Blue_Primary
        btn.setImage(#imageLiteral(resourceName: "Save").withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = UIColor.White_Secondary
        btn.imageView?.contentMode = .scaleAspectFit
        btn.imageEdgeInsets = UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12)
        
        // Set Corner Radius
        btn.layer.cornerRadius = 5
        
        // Set Shadow
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 3, height: 3)
        btn.layer.shadowOpacity = 0.16
        btn.layer.shadowRadius = 6
        
        return btn
    }()
    
    // MARK: Layout
    func Layout_Page(){
        
        // Set Background Color
        view.backgroundColor = UIColor.White_Secondary
        
        // Set view
        view.addSubview(View_Size)
        View_Size.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // Set Image BG
        view.addSubview(Im_BG)
        Im_BG.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // Set Label Title Page
        view.addSubview(Lb_TitlePage)
        Lb_TitlePage.anchorCenter(view.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Lb_TitlePage.anchor(view.topAnchor, left: nil, bottom: nil, right: nil, topConstant: 42, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 24)
        
        // Set Segment Style Area
        view.addSubview(Seg_StyArea)
        Seg_StyArea.anchor(Lb_TitlePage.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 16, leftConstant: 12, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 38)
        
        // Set Label Header Size
        view.addSubview(Lb_H_Size)
        Lb_H_Size.anchor(Seg_StyArea.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, topConstant: 22, leftConstant: 20, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        // Set Txt Area
        view.addSubview(Txt_Area)
        Txt_Area.anchorCenter(nil, AxisY: Lb_H_Size.centerYAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Txt_Area.anchor(nil, left: Lb_H_Size.rightAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 14, bottomConstant: 0, rightConstant: 0, widthConstant: 134, heightConstant: 38)
        
        // Set Txt Width
        view.addSubview(Txt_Width)
        Txt_Width.anchorCenter(nil, AxisY: Lb_H_Size.centerYAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Txt_Width.anchor(nil, left: Txt_Area.rightAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 20, widthConstant: 134, heightConstant: 38)
        
        // Set label Header Spare Tile
        view.addSubview(Lb_H_Spare)
        Lb_H_Spare.anchorCenter(view.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Lb_H_Spare.anchor(Lb_H_Size.bottomAnchor, left: nil, bottom: nil, right: nil, topConstant: 32, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        // Set Radio Spare Tile
        view.addSubview(Radio_SpareTile)
        Radio_SpareTile.anchorCenter(view.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Radio_SpareTile.anchor(Lb_H_Spare.bottomAnchor, left: nil, bottom: nil, right: nil, topConstant: 16, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 34)
        
        // Set View Result
        view.addSubview(View_Result)
        View_Result.anchor(Radio_SpareTile.bottomAnchor, left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: nil, topConstant: 48, leftConstant: 12, bottomConstant: 16, rightConstant: 0, widthConstant: 0, heightConstant: 48)
        
        // Label Total Price
        View_Result.addSubview(Lb_TotalPrice)
        Lb_TotalPrice.anchorCenter(View_Result.centerXAnchor, AxisY: View_Result.centerYAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 30)
        
        // Btn Save
        view.addSubview(Btn_Save)
        Btn_Save.anchor(View_Result.topAnchor, left: View_Result.rightAnchor, bottom: View_Result.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 82, heightConstant: 48)
        
    }
    
    // MARK: Config Page
    func Config_Page(){
        
    }
    
    // MARK: FuncmLife Cycle Page
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Layout Page
        Layout_Page()
        
        // Config Page
        Config_Page()
        
    }
    
    // MARK: Func Event Button
    
    // MARK: Normal Func
    
    
}
