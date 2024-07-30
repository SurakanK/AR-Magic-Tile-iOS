//
//  ContactWisdomPage.swift
//  AR Magic Tile
//
//  Created by พัทธนันท์ ปุ่นน้ำใส on 19/10/20.
//

import UIKit

private let Id_Cell = "CollectionCell_Contact"

class ContactWisdomPage : UIViewController,UIScrollViewDelegate {
    
    // MARK: Parameter
    // Data of Contact
    var ContactAll : [Contact] = [Contact(Icon: #imageLiteral(resourceName: "Location").withRenderingMode(.alwaysTemplate), Header: "Location", Description: """
56/23 Seri Thai Road
Ramindra Subdistrict, Khan Na Yao
District 10230
"""),Contact(Icon: #imageLiteral(resourceName: "phone").withRenderingMode(.alwaysTemplate), Header: "Phone", Description: "+6661 823 5619"),Contact(Icon: #imageLiteral(resourceName: "email").withRenderingMode(.alwaysTemplate), Header: "Email", Description: "wisdomchain@gmail.com"),Contact(Icon: #imageLiteral(resourceName: "Line").withRenderingMode(.alwaysTemplate), Header: "Line", Description: "@wisdomchain")]
    
    // MARK: Element
    // Scroll View
    var ScrollView : UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.showsHorizontalScrollIndicator = false
        scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
    
    // View Navigation Top ------------------------------------------------
    // View Top
    var View_Top : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
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
        label.text = "About & Contact Us"
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
    // --------------------------------------------------------------------
    
    // View Logo and Name Wisdomchain -------------------------------------
    // View Logo
    var View_Logo : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    // Image Log Wisdom
    var Im_Logo : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "Wisdom-Chain-Logo_1000x1000").withRenderingMode(.alwaysOriginal)
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    // Label Name Wisdom
    var Lb_NameWisdom : UILabel = {
        let label = UILabel()
        label.text = "WISDOM CHAIN SOLUTION.CO.,LTD"
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
    
    // --------------------------------------------------------------------
    
    // View About Us ------------------------------------------------------
    // View about us
    var View_AboutUs : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    // Title About Us Section -------------
    // View Title About Us
    var Title_AboutUs_View : UIView = {
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
    
    // Label Title About Us
    var Lb_Title_AboutUs : UILabel = {
        let label = UILabel()
        label.text = "About Us"
        label.font = UIFont.RightousRegular(size: 24)
        label.textColor = UIColor.White_Secondary
        label.textAlignment = .center
        return label
    }()
    // -------------------------
    
    // Body About Us Section ------------
    // View Body About
    var Body_AboutUs_View : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "#63A2BB19")
        return view
    }()
    
    // Label Text Description About Us
    var Lb_Des_AboutUs : UILabel = {
        let label = UILabel()
        label.text = """
    Wisdom Chain Solution Co., Ltd. is a company that does technology innovation as well as various online media such as Google ads.

     Wisdom Chain broke the business out of The Treetouch Company, which made tiles by taking problems in the organization to make a product to meet the needs of the organization. Answer questions thoroughly Because the number of people who greeted in each day is quite large But the service staff did not balance out with the customers who greeted them. Therefore produce The chatbot itself came up.

     The next product will be in the form of AR (Augmented Reality) is an app that can simulate tiling, ancient patterns that will allow us to see that tile image. If crab like this will be what form?

     The establishment of Wisdom Chain Solution Co., Ltd. is a step forward. In order to keep pace with today's technology and the future
 """
        label.font = UIFont.MontserratRegular(size: 16)
        label.textColor = UIColor.Black_Text
        label.numberOfLines = 0
        return label
    }()
    // -------------------------
    
    // --------------------------------------------------------------------
    
    // View Award ---------------------------------------------------------
    // View award
    var View_Award : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    // Title Award Section -------------
    // View Title Award
    var Title_Award_View : UIView = {
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
    
    // Label Title Award
    var Lb_Title_Award : UILabel = {
        let label = UILabel()
        label.text = "Award"
        label.font = UIFont.RightousRegular(size: 24)
        label.textColor = UIColor.White_Secondary
        label.textAlignment = .center
        return label
    }()
    // -------------------------
    
    // Body Award Section ------------
    // View Body About
    var Body_Award_View : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "#63A2BB19")
        return view
    }()
    
    // Image Award
    var Im_Award : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "Trophy Wisdom").withRenderingMode(.alwaysOriginal)
        image.contentMode = .scaleAspectFill
        
        // Set Corner
        image.layer.cornerRadius = 5
        image.layer.masksToBounds = true
        
        // Set Shadow
        image.layer.shadowColor = UIColor.black.cgColor
        image.layer.shadowOffset = CGSize(width: 3, height: 3)
        image.layer.shadowOpacity = 0.16
        image.layer.shadowRadius = 6
        
        return image
    }()
    
    // Label Text Description About Us
    var Lb_Des_Award : UILabel = {
        let label = UILabel()
        label.text = "Start Up Award 2019"
        label.font = UIFont.MontserratRegular(size: 12)
        label.textColor = UIColor.Black_Text
        return label
    }()
    // -------------------------
    
    // --------------------------------------------------------------------
    
    // View Contact -------------------------------------------------------
    
    // View Contact
    var View_Contact : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    // Title Contact Section -------------
    // View Title Award
    var Title_Contact_View : UIView = {
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
    
    // Label Title Contact
    var Lb_Title_Contact : UILabel = {
        let label = UILabel()
        label.text = "Contact"
        label.font = UIFont.RightousRegular(size: 24)
        label.textColor = UIColor.White_Secondary
        label.textAlignment = .center
        return label
    }()
    // -------------------------
    
    // Body Contact Section ------------
    // View Body Contact
    var Body_Contact_View : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "#63A2BB19")
        return view
    }()
    
    // Collection List Contact
    lazy var Collection_Contact : UICollectionView = {
        let collection = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        
        // Config Collection View
        collection.delegate = self
        collection.dataSource = self
        
        collection.register(CollectionCell_Contact.self, forCellWithReuseIdentifier: Id_Cell)
        
        // Set Collection Indicate
        collection.backgroundColor = .clear
        collection.alwaysBounceVertical = true
        
        return collection
    }()
    // -------------------------
    
    // --------------------------------------------------------------------
    
    // View Button Link ---------------------------------------------------
    // View Link
    var View_Link : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    // Button Map
    var Btn_Map : UIButton = {
   
        let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setImage(#imageLiteral(resourceName: "Image-Map").withRenderingMode(.alwaysOriginal), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFill
        btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        // Set Corner
        btn.layer.cornerRadius = 5
        
        // Set Shadow
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 3, height: 3)
        btn.layer.shadowOpacity = 0.16
        btn.layer.shadowRadius = 6
        
        // Add Target
        btn.addTarget(self, action: #selector(openMap), for: .touchUpInside)
        
        return btn
    }()
    
    // Label Follow on
    var Lb_FollowOn : UILabel = {
        let label = UILabel()
        label.text = "Follow on :"
        label.font = UIFont.RightousRegular(size: 16)
        label.textColor = UIColor.Black_Text
        return label
    }()
    
    // Button Line
    var Btn_Line : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor(hex: "#13B81AFF")
        btn.setImage(#imageLiteral(resourceName: "Line").withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = UIColor.White_Secondary
        btn.imageView?.contentMode = .scaleAspectFit
        btn.imageEdgeInsets = UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12)
        
        // Set Corner
        btn.layer.cornerRadius = 24
        
        // Set Shadow
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 3, height: 3)
        btn.layer.shadowOpacity = 0.16
        btn.layer.shadowRadius = 6
        
        // Add Target
        btn.addTarget(self, action: #selector(openLine), for: .touchUpInside)

        return btn
    }()
    
    // Button Facebook
    var Btn_Facebook : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.Blue_Primary
        btn.setImage(#imageLiteral(resourceName: "facebook").withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = UIColor.White_Secondary
        btn.imageView?.contentMode = .scaleAspectFit
        btn.imageEdgeInsets = UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12)
        
        // Set Corner
        btn.layer.cornerRadius = 24
        
        // Set Shadow
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 3, height: 3)
        btn.layer.shadowOpacity = 0.16
        btn.layer.shadowRadius = 6
        
        // Add Target
        btn.addTarget(self, action: #selector(openFacebook), for: .touchUpInside)
        return btn
    }()
    
    // --------------------------------------------------------------------
    
    
    // MARK: Layout Page
    func Layout_Page(){
        
        // Change BG Color of View
        view.backgroundColor = UIColor.White_Secondary
        
        // Set ScrollView
        view.addSubview(ScrollView)
        ScrollView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // Set StackView
        let Stackview = UIStackView(arrangedSubviews: [View_Top, View_Logo, View_AboutUs, View_Award, View_Contact, View_Link])
        Stackview.distribution = .fill
        Stackview.axis = .vertical
        Stackview.spacing = 0
        
        ScrollView.addSubview(Stackview)
        Stackview.anchor(ScrollView.topAnchor, left: view.leftAnchor, bottom: ScrollView.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // Set View Top ----------------------------------------
        // Btn Back
        view.addSubview(Btn_Back)
        Btn_Back.anchor(View_Top.topAnchor, left: View_Top.leftAnchor, bottom: View_Top.bottomAnchor, right: nil, topConstant: 36, leftConstant: 16, bottomConstant: 0, rightConstant: 0, widthConstant: 24, heightConstant: 24)
        // Label Title Page
        View_Top.addSubview(Lb_TitlePage)
        Lb_TitlePage.anchorCenter(view.centerXAnchor, AxisY: Btn_Back.centerYAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        // -----------------------------------------------------
        
        // Set View Logo ---------------------------------------
        // Image Logo
        View_Logo.addSubview(Im_Logo)
        Im_Logo.anchorCenter(view.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Im_Logo.anchor(View_Logo.topAnchor, left: nil, bottom: nil, right: nil, topConstant: 28, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 175, heightConstant: 175)
        // Label Name Wisdom
        View_Logo.addSubview(Lb_NameWisdom)
        Lb_NameWisdom.anchorCenter(view.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Lb_NameWisdom.anchor(Im_Logo.bottomAnchor, left: nil, bottom: View_Logo.bottomAnchor, right: nil, topConstant: 16, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        // -----------------------------------------------------
        
        // Set Section About Us -----------------------------------
        
        // View Body About Us
        View_AboutUs.addSubview(Body_AboutUs_View)
        Body_AboutUs_View.anchor(View_AboutUs.topAnchor, left: View_AboutUs.leftAnchor, bottom: View_AboutUs.bottomAnchor, right: View_AboutUs.rightAnchor, topConstant: 48, leftConstant: 12, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 0)
        
        // Set View Title About Us
        View_AboutUs.addSubview(Title_AboutUs_View)
        Title_AboutUs_View.anchorCenter(nil, AxisY: Body_AboutUs_View.topAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Title_AboutUs_View.anchor(nil, left: Body_AboutUs_View.leftAnchor, bottom: nil, right: nil, topConstant: 24, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 48)
        
        // Set Title About Us
        Title_AboutUs_View.addSubview(Lb_Title_AboutUs)
        Lb_Title_AboutUs.anchorCenter(nil, AxisY: Title_AboutUs_View.centerYAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Lb_Title_AboutUs.anchor(nil, left: Title_AboutUs_View.leftAnchor, bottom: nil, right: Title_AboutUs_View.rightAnchor, topConstant: 0, leftConstant: 18, bottomConstant: 0, rightConstant: 18, widthConstant: 0, heightConstant: 0)
        
        // Text Description About Us
        Body_AboutUs_View.addSubview(Lb_Des_AboutUs)
        Lb_Des_AboutUs.anchor(Title_AboutUs_View.bottomAnchor, left: Body_AboutUs_View.leftAnchor, bottom: Body_AboutUs_View.bottomAnchor, right: Body_AboutUs_View.rightAnchor, topConstant: 28, leftConstant: 22, bottomConstant: 28, rightConstant: 22, widthConstant: 0, heightConstant: 0)

        // -----------------------------------------------------
        
        // Set Section Award -----------------------------------
        
        // View Body Award
        View_Award.addSubview(Body_Award_View)
        Body_Award_View.anchor(View_Award.topAnchor, left: View_Award.leftAnchor, bottom: View_Award.bottomAnchor, right: View_Award.rightAnchor, topConstant: 42, leftConstant: 12, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 0)
        
        // View Title Award
        View_Award.addSubview(Title_Award_View)
        Title_Award_View.anchorCenter(nil, AxisY: Body_Award_View.topAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Title_Award_View.anchor(nil, left: Body_Award_View.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 48)
        
        // Label Title Award
        Title_Award_View.addSubview(Lb_Title_Award)
        Lb_Title_Award.anchorCenter(nil, AxisY: Title_Award_View.centerYAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Lb_Title_Award.anchor(nil, left: Title_Award_View.leftAnchor, bottom: nil, right: Title_Award_View.rightAnchor, topConstant: 0, leftConstant: 18, bottomConstant: 0, rightConstant: 18, widthConstant: 0, heightConstant: 0)
        
        // Image Award
        Body_Award_View.addSubview(Im_Award)
        Im_Award.anchorCenter(Body_Award_View.centerXAnchor, AxisY: nil, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Im_Award.anchor(Title_Award_View.bottomAnchor, left: nil, bottom: nil, right: nil, topConstant: 28, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 300, heightConstant: 200)
        
        // Label Des Award
        Body_Award_View.addSubview(Lb_Des_Award)
        Lb_Des_Award.anchor(Im_Award.bottomAnchor, left: Im_Award.leftAnchor, bottom: Body_Award_View.bottomAnchor, right: nil, topConstant: 12, leftConstant: 0, bottomConstant: 28, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        // -----------------------------------------------------
        
        // Section Contact -------------------------------------
        // View Body Contact
        View_Contact.addSubview(Body_Contact_View)
        Body_Contact_View.anchor(View_Contact.topAnchor, left: View_Contact.leftAnchor, bottom: View_Contact.bottomAnchor, right: View_Contact.rightAnchor, topConstant: 42, leftConstant: 12, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 0)
        
        // View Title Contact
        View_Contact.addSubview(Title_Contact_View)
        Title_Contact_View.anchorCenter(nil, AxisY: Body_Contact_View.topAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Title_Contact_View.anchor(nil, left: Body_Contact_View.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 48)
        
        // Label Tilte Contact
        Title_Contact_View.addSubview(Lb_Title_Contact)
        Lb_Title_Contact.anchorCenter(nil, AxisY: Title_Contact_View.centerYAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Lb_Title_Contact.anchor(nil, left: Title_Contact_View.leftAnchor, bottom: nil, right: Title_Contact_View.rightAnchor, topConstant: 0, leftConstant: 18, bottomConstant: 0, rightConstant: 18, widthConstant: 0, heightConstant: 0)
        
        // Collection Contact
        Body_Contact_View.addSubview(Collection_Contact)
        Collection_Contact.anchor(Title_Contact_View.bottomAnchor, left: Body_Contact_View.leftAnchor, bottom: Body_Contact_View.bottomAnchor, right: Body_Contact_View.rightAnchor, topConstant: 24, leftConstant: 22, bottomConstant: 28, rightConstant: 22, widthConstant: 0, heightConstant: 268)
        
        
        // -----------------------------------------------------
        
        // Section Button Link (Follow On) ---------------------
        // Btn Map
        view.addSubview(Btn_Map)
        Btn_Map.anchor(View_Link.topAnchor, left: View_Link.leftAnchor, bottom: nil, right: View_Link.rightAnchor, topConstant: 18, leftConstant: 12, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 156)
        
        // Btn facebook
        view.addSubview(Btn_Facebook)
        Btn_Facebook.anchor(Btn_Map.bottomAnchor, left: nil, bottom: View_Link.bottomAnchor, right: Btn_Map.rightAnchor, topConstant: 18, leftConstant: 0, bottomConstant: 28, rightConstant: 0, widthConstant: 48, heightConstant: 48)
        
        // Btn Line
        view.addSubview(Btn_Line)
        Btn_Line.anchor(Btn_Facebook.topAnchor, left: nil, bottom: Btn_Facebook.bottomAnchor, right: Btn_Facebook.leftAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 8, widthConstant: 48, heightConstant: 48)
        
        // Label Follow on
        View_Link.addSubview(Lb_FollowOn)
        Lb_FollowOn.anchorCenter(nil, AxisY: Btn_Line.centerYAnchor, ConstantAxisX: 0, ConstantAxisY: 0, widthConstant: 0, heightConstant: 0)
        Lb_FollowOn.anchor(nil, left: nil, bottom: nil, right: Btn_Line.leftAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 18, widthConstant: 0, heightConstant: 0)
        
        // -----------------------------------------------------
        
        // Config ContentSize of Scroll View
        ScrollView.contentSize = Stackview.bounds.size
        
    }
    
    // MARK: Func Scroll View in Page
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // Disable Horizontol Scroll
        if scrollView.contentOffset.x != 0 {
            scrollView.contentOffset.x = 0
        }
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
    
    // Func open Link Map
    @objc func openMap(){
       
        if (UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {// google map
            UIApplication.shared.open(URL(string:"comgooglemapsurl://maps.google.com/?q=@13.787323,100.6774031")!)
        } else {// apple map
            UIApplication.shared.open(URL(string: "http://maps.apple.com/?q=13.787323,100.6774031")!)
        }
        
    }
    
    // Func open Link facebook
    @objc func openFacebook(){
        
        let fbUrl = URL(string:"fb://profile/253914298602124")!
        let fbUrlWeb = URL(string:"https://facebook.com/253914298602124")!
        
        if UIApplication.shared.canOpenURL(fbUrl) {// open in facebook app
            UIApplication.shared.open(fbUrl)
        } else {// open in safari
           UIApplication.shared.open(fbUrlWeb)
        }
    }
    
    // Func open link line
    @objc func openLine(){

        let LineUrl = URL(string:"https://line.me/ti/p/~@wisdomchain")!
        let LineDownloadApp = URL(string:"https://apps.apple.com/th/app/line/id443904275?l=th")!
        
        if UIApplication.shared.canOpenURL(URL(string: "line://")!) {// open line
            UIApplication.shared.open(LineUrl)
        } else {// open appstore Line download
           UIApplication.shared.open(LineDownloadApp)
        }
    }
    
    // MARK: Func Normal
    
    
    
    
}

// MARK: Extension
// Extension Collection Contact
extension ContactWisdomPage : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ContactAll.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Id_Cell, for: indexPath) as! CollectionCell_Contact
        
        // Set Data in Cell
        cell.Icon.image = ContactAll[indexPath.row].Icon
        cell.Lb_Contact_H.text = ContactAll[indexPath.row].Header
        cell.Lb_Des_H.text = ContactAll[indexPath.row].Description
        
        return cell
    }
    
    
}
extension ContactWisdomPage : UICollectionViewDelegateFlowLayout {
    // UICollectionViewFlowLayout
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: Collection_Contact.frame.width, height: 87)
        }else {
            return CGSize(width: Collection_Contact.frame.width, height: 48)
        }
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return .zero
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    // Space Vertical of cell
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
}

// MARK: Structure
struct Contact {
    var Icon : UIImage
    var Header : String
    var Description : String
}
