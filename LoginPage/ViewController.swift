//
//  ViewController.swift
//  LoginPage
//
//  Created by WEMA on 08/12/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PasswordErrorLabel: UILabel!
    @IBOutlet weak var EmailErrorLabel: UILabel!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var StatusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        StatusLabel.text = ""
        PasswordErrorLabel.text = ""
        EmailErrorLabel.text = ""
    }

    @IBAction func LoginButton(_ sender: UIButton) {
        let emailDefault = "pt@gmail.com"
        let passwordDefault = "123456"
        
        PasswordErrorLabel.text = ""
        EmailErrorLabel.text = "" 
        
        let emailInput = EmailTextField.text!
        let passwordInput = PasswordTextField.text!
        
        if emailInput.isEmpty{
            EmailErrorLabel.text = "Supply your email"
        }else if passwordInput.isEmpty{
            PasswordErrorLabel.text = "Supply your password"
        }else{
            if (emailInput != emailDefault || passwordInput != passwordDefault){
                StatusLabel.text = "Invalid login details"
            }else{
                StatusLabel.text = "Login successful"
                EmailTextField.text = ""
                PasswordTextField.text = ""
            }
        }
    }
}

