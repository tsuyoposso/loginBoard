//
//  ViewController.swift
//  loginBoard
//
//  Created by 長坂豪士 on 2019/09/30.
//  Copyright © 2019 Tsuyoshi Nagasaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passWordtextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passWordLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // userNameTextFieldが、UITextFieldDelegateに準拠したViewControllerクラスのメソッドが使えるように指定する
        userNameTextField.delegate = self
        passWordtextField.delegate = self
        
        
    }

    @IBAction func login(_ sender: Any) {
        
        logoImageView.image = UIImage(named: "loginOK")
        
        userNameLabel.text = userNameTextField.text
        passWordLabel.text = passWordtextField.text
        
        
    }
    
    // タッチでキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    // returnを押したらキーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // キーボードを閉じるよ
        textField.resignFirstResponder()
        return true
    }
    
    
}

