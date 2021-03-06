//
//  Common.swift
//  EmployeeList
//
//  Created by Soumya Ammu on 2/2/22.
//

import Foundation

struct Constants{
    
    static let ErrorAlertTitle = "Error"
    static let OkAlertTitle = "Ok"
    static let CancelAlertTitle = "Cancel"
}

struct ApiEndpoints
{
    static let login = "https://api-dev-scus-demo.azurewebsites.net/api/User/Login"
    static let employees = "https://api-dev-scus-demo.azurewebsites.net/api/User/GetUser"
    
}
