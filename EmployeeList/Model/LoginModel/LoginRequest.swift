//
//  LoginRequest.swift
//  EmployeeList
//
//  Created by Soumya Ammu on 2/2/22.
//

import Foundation

struct LoginRequest : Encodable
{
    var userEmail, userPassword : String?
}
