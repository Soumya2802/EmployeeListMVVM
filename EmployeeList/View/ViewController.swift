//
//  ViewController.swift
//  EmployeeList
//
//  Created by Soumya Ammu on 2/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userName : UITextField!
    @IBOutlet weak var password : UITextField!
    private var loginViewModel = LoginViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        loginViewModel.delegate = self
        
    }

    @IBAction func didTapOnLoginButton(_ sender:Any){
        
        let request = LoginRequest(userEmail: userName.text, userPassword: password.text)
        loginViewModel.loginUser(loginRequest: request)
    }
    

    

}

