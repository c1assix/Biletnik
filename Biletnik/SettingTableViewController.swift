//
//  SettingTableViewController.swift
//  Biletnik
//
//  Created by Лев Купчинов on 19.02.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func writeEmail(_ sender: UIButton) {
        let email = "lev.kupchinov@yandex.ru"
        if let url = URL(string: "mailto:\(email)"){
            UIApplication.shared.open(url)
        }
    }
    
    
}
