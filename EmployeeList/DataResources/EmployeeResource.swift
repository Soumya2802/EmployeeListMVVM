//
//  EmployeeResourse.swift
//  EmployeeList
//
//  Created by Soumya Ammu on 2/3/22.
//

import Foundation

struct EmployeeResource{
    
    
    func getEmployeeList(completion:@escaping(_ result : [EmployeeData]) -> Void){
        let url = URL(string: ApiEndpoints.employees)!
        let httpUtility = HttpUtility()
        httpUtility.getApiData(requestUrl: url, resultType: [EmployeeData].self) { employeeApiData in
            if(employeeApiData.debugDescription.isEmpty == false){
            _ = completion(employeeApiData!)
            }
        }
    }
}
