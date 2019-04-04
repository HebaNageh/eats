//
//  SignOutVC.swift
//  eats
//
//  Created by mac on 23/07/1440 AH.
//  Copyright © 1440 mac. All rights reserved.
//

import UIKit

class SignOutVC: UIViewController {

    @IBOutlet weak var rePasswordTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var phoneTf: UITextField!
    @IBOutlet weak var nameTf: UITextField!
    @IBOutlet weak var avatarBtn: UIButton!
    @IBOutlet weak var termsAndConditionsBtn: UIButton!
    @IBOutlet weak var acceptanceSwitch: UISwitch!
    @IBOutlet weak var registerBtn: CustomUIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        registerBtn.layer.cornerRadius = 15
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
