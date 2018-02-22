//
//  SettingsViewController.swift
//  Biletnik
//
//  Created by Лев Купчинов on 02.11.17.
//  Copyright © 2017 Лев Купчинов. All rights reserved.
//

import UIKit



class SettingsViewController: UIViewController {
    
    @IBOutlet weak var nightStyleSwitch: UISwitch!
    @IBOutlet weak var nigthStyleLabel: UILabel!
    
    let darkBackgroundColor = UIColor(red: 34.0/255.0, green: 34.0/255.0, blue: 50.0/255.0, alpha: 1.0)
    let navigationBarDarkBackgroundColor = UIColor(red: 34.0/255.0, green: 34.0/255.0, blue: 60.0/255.0, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Настройки"
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    @IBAction func nightStyleSwitchAction(_ sender: Any) {
        if (nightStyleSwitch.isOn == true){
            self.view.backgroundColor = darkBackgroundColor
            self.nigthStyleLabel.textColor = UIColor.white
            navigationController?.navigationBar.barTintColor = navigationBarDarkBackgroundColor
            UserDefaults.standard.set(true, forKey: "Theme")
        } else{
            textColor = UIColor.black
            self.view.backgroundColor = UIColor.white
            self.nigthStyleLabel.textColor = UIColor.black
            navigationController?.navigationBar.barTintColor = appMainColor
            UserDefaults.standard.set(false, forKey: "Theme")
        }
    }
    
}
