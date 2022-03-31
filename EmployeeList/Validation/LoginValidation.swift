//
//  LoginValidation.swift
//  EmployeeList
//
//  Created by Soumya Ammu on 2/2/22.
//

import Foundation

struct LoginValidation{
    func Validate(loginRequest:LoginRequest) -> ValidationResult
    {
        if(loginRequest.userEmail!.isEmpty)
        {
            return ValidationResult(success: false, error: "UserName is Empty.")
        }
        
        if(loginRequest.userPassword!.isEmpty)
        {
            return ValidationResult(success: false, error: "Password is Empty.")
        }
        
        return ValidationResult(success: true, error: nil)
    }
}
