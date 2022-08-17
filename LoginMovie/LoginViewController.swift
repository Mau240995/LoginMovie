//
//  LoginViewController.swift
//  LoginMovie
//
//  Created by user216116 on 16/08/22.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {
    

    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldUser: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldUser.delegate = self
        textFieldPassword.delegate = self
        
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
        let user: String
        let password: String
        
        user = textFieldUser.text!
        password = textFieldPassword.text!
        
        if (user == "Mauricio" && password == "123456789"){
            
            performSegue(withIdentifier: "Movies", sender: nil)
            lblMessage.text = "Sesion Iniciada Correctamente"
            
        }else{
            lblMessage.text = " Invalid username ond / or password: You Did not provide a valid login"
            if(user.isEmpty && password.isEmpty){
                lblMessage.text = "Por favor llenar Campos"
            }
            
        }
    }
    
   

}
