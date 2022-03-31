//
//  EmployeeViewModel.swift
//  EmployeeList
//
//  Created by Soumya Ammu on 2/3/22.
//

import Foundation

protocol EmployeeViewModelDelegate{
    func didRecieveEmployeeData(employeeResponse:[EmployeeData])
}

struct EmployeeViewModel{
    var delegate : EmployeeViewModelDelegate?
    func getEmployeeList(){
        let employeeResource = EmployeeResource()
        employeeResource.getEmployeeList { employeeApiResponse in
            delegate?.didRecieveEmployeeData(employeeResponse: employeeApiResponse)
        }
       
    }
    
    
    
}
