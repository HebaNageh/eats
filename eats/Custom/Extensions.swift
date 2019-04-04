//
//  Extensions.swift
//  myOffersTest
//
//  Created by mac on 3/10/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
import UIKit

extension CustomUIButton: CSButtonCustomMethods {

    func mainBtnCustomize() {
        
        backgroundColor = MyColors.btnBlue
        self.layer.cornerRadius = 15
        self.titleLabel?.textColor = UIColor.white
    }

}
