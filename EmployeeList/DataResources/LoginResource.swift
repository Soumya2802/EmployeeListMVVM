//
//  LoginResource.swift
//  EmployeeList
//
//  Created by Soumya Ammu on 2/2/22.
//

import Foundation

struct LoginResource
{
    func loginUser(loginRequest:LoginRequest,completion:@escaping(_ result : LoginResponse) -> Void){
        
        let loginUrl = URL(string: ApiEndpoints.login)!
        let httpUtility = HttpUtility()
        do {
            let encoder = JSONEncoder()
            
            let loginPostBody = try encoder.encode(loginRequest)
            httpUtility.postApiData(requestUrl:loginUrl, requestBody: loginPostBody, resultType: LoginResponse.self) { (loginApiResponse) in
                
                _ = completion(loginApiResponse)
                
            }
            
        }catch{
            debugPrint(error)
        }
    }
}
