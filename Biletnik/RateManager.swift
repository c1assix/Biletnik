//
//  RateManager.swift
//  Biletnik
//
//  Created by Лев Купчинов on 06.11.17.
//  Copyright © 2017 Лев Купчинов. All rights reserved.
//

import UIKit
import StoreKit

@available(iOS 10.3, *)
class RateManager{
    class func incrementCount()  {
        let count = UserDefaults.standard.integer(forKey: "run_count")
        if count < 3{
            UserDefaults.standard.set(count + 1, forKey: "run_count")
            UserDefaults.standard.synchronize()
        }
    }
    
    class func showRatesController(){
        let count = UserDefaults.standard.integer(forKey: "run_count")
        if count == 3 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
            SKStoreReviewController.requestReview()
            })
        }
    }
}
