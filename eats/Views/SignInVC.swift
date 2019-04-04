//
//  SignInVC.swift
//  eats
//
//  Created by mac on 23/07/1440 AH.
//  Copyright © 1440 mac. All rights reserved.
//

import UIKit

class SignInVC: UIViewController {

    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var phoneNoTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var forgotPwdBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        signInBtn.layer.cornerRadius = 15
        signInBtn.backgroundColor = MyColors.darkGray
        infoView.backgroundColor = MyColors.liteGray
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
