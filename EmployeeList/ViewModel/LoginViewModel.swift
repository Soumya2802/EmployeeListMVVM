//
//  LoginViewModel.swift
//  EmployeeList
//
//  Created by Soumya Ammu on 2/2/22.
//

import Foundation

protocol LoginViewModelDelegate{
    func didRecieveLoginResponse(loginResponse:LoginResponse)
}

struct LoginViewModel
{
    var delegate : LoginViewModelDelegate?
    
    func loginUser(loginRequest:LoginRequest){
        let validationResult = LoginValidation().Validate(loginRequest: loginRequest)
        
        if (validationResult.success){
            //use login resource to call login API
            
            let loginResource = LoginResource()
            loginResource.loginUser(loginRequest: loginRequest) { (loginApiResponse) in
                DispatchQueue.main.async {
                    self.delegate?.didRecieveLoginResponse(loginResponse: loginApiResponse)
                }
            }
        }
        self.delegate?.didRecieveLoginResponse(loginResponse: LoginResponse(errorMessage: validationResult.error, data: nil))
    }
}
