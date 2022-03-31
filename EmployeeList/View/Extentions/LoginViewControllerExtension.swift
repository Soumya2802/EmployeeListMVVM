//
//  LoginViewControllerExtension.swift
//  EmployeeList
//
//  Created by Soumya Ammu on 2/2/22.
//

import Foundation
import UIKit

extension ViewController : LoginViewModelDelegate{
    func didRecieveLoginResponse(loginResponse:LoginResponse){
        
        if(loginResponse.errorMessage == nil && loginResponse.data != nil)
        {
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "EmployeeViewController") as! EmployeeViewController
            newViewController.modalPresentationStyle = .fullScreen
            self.present(newViewController, animated: true, completion: nil)
            
        }else if (loginResponse.errorMessage != nil){
            
            let alert = UIAlertController(title: Constants.ErrorAlertTitle, message: loginResponse.errorMessage, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: Constants.OkAlertTitle, style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
