//
//  TableViewController.swift
//  Biletnik
//
//  Created by Лев Купчинов on 01.11.17.
//  Copyright © 2017 Лев Купчинов. All rights reserved.
//

import UIKit

var cardIndex = 0

class TableViewController: UITableViewController {
    
    let cardsArray =    ["Билет 1", "Билет 2", "Билет 3", "Билет 4", "Билет 5",
                         "Билет 6", "Билет 7", "Билет 8", "Билет 9", "Билет 10",
                         "Билет 11", "Билет 12", "Билет 13", "Билет 14", "Билет 15",
                         "Билет 16", "Билет 17", "Билет 18", "Билет 19", "Билет 20",
                         "Билет 21", "Билет 22", "Билет 23", "Билет 24", "Билет 25"]

    // MARK: - Table view data source
    
    override func viewDidLoad() {
        RateManager.showRatesController()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cardsArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CardTableViewCell else { fatalError() }
        
        cell.setup(with: cardsArray[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cardIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
