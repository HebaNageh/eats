//
//  CustomUIButton.swift
//  myOffersTest
//
//  Created by mac on 3/10/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

protocol CSButtonCustomMethods: class {
    func mainBtnCustomize()
}
class CustomUIButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var indexPath: IndexPath?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        mainBtnCustomize()// To set the button color and text size
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        mainBtnCustomize()// To set the button color and text size
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        mainBtnCustomize()
    }

}
