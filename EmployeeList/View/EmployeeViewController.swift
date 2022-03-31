//
//  EmployeeViewController.swift
//  EmployeeList
//
//  Created by Soumya Ammu on 2/2/22.
//

import UIKit

class EmployeeViewController: UIViewController,EmployeeViewModelDelegate,UITableViewDelegate,UITableViewDataSource {
   
    
    
    @IBOutlet weak var employeeTableView: UITableView!
    
    var employeeViewModel = EmployeeViewModel()
    var employeeData : [EmployeeData]?

    override func viewDidLoad() {
        super.viewDidLoad()
        employeeViewModel.delegate = self
        employeeViewModel.getEmployeeList()
        employeeTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
    }
    
    func didRecieveEmployeeData(employeeResponse: [EmployeeData]) {
        employeeData = employeeResponse
        DispatchQueue.main.async{
            self.employeeTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = employeeData?[indexPath.row].name ?? ""
        return cell
    }

  

}
