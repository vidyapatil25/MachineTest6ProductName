//
//  ViewController.swift
//  MachineTest6ProductName
//
//  Created by Felix-ITS016 on 30/11/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    var dic = [String:String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        if section == 0
        {
         return productNameArray.count
        }
        else
        {
             return productNumberArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell(style: .value1, reuseIdentifier: "cell")
        cell.textLabel?.text = productNameArray[indexPath.row]
        cell.detailTextLabel?.text = productNumberArray[indexPath.row]
        let switch1 = UISwitch()
        cell.accessoryView = switch1
        switch1.addTarget(self, action: #selector(switchPressed(sender:)), for: .valueChanged)
        switch1.accessibilityLabel = cell.textLabel?.text
        switch1.accessibilityIdentifier = cell.detailTextLabel?.text
        return cell
    }
    
    
    
    @objc func switchPressed(sender:UISwitch)  {
        if sender.isOn
        {
            print("switch is on ")
            dic[sender.accessibilityIdentifier!] = sender.accessibilityLabel!
            print("productname selected = \(sender.accessibilityLabel!)")
        }
        else
        {
            print("switch is off")
            
        }
        print(dic)
    }

    
    let productNumberArray = ["1","2","3","4","5",]
    let productNameArray = ["Biscuit","Cakes","Dairy","Soup","Snack"]
    
        
        @IBOutlet weak var tableView: UITableView!
   
        
        
        
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

