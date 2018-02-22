//
//  ViewController.swift
//  Biletnik
//
//  Created by Лев Купчинов on 01.11.17.
//  Copyright © 2017 Лев Купчинов. All rights reserved.
//

import UIKit


    var darkStyleBoolean = false
    var questionIndex = 0
    let appMainColor = UIColor(red: 51.0/255.0, green: 102.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    var textColor = UIColor.black
    let darkBackgroundColor = UIColor(red: 34.0/255.0, green: 34.0/255.0, blue: 50.0/255.0, alpha: 1.0)

    let theme = UserDefaults.standard.bool(forKey: "Theme")

class ViewController: UIViewController {

    @IBOutlet weak var cardTextView: UITextView!
    
    @IBOutlet weak var numberOfCardControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        cardTextView.textColor = textColor
        cardTextLoader(questionIndex: numberOfCardControl.selectedSegmentIndex) //
        numberOfCardControl.setTitleTextAttributes([NSAttributedStringKey.font: UIFont.systemFont(ofSize: 20)], for: .normal)
        self.numberOfCardControl.layer.borderColor = appMainColor.cgColor
        numberOfCardControl.layer.cornerRadius = 0.0
        numberOfCardControl.layer.borderWidth = 1
        self.navigationItem.title = "Билет \(cardIndex + 1)"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @IBAction func numberOfCardControlAction(_ sender: Any) {
        switch numberOfCardControl.selectedSegmentIndex {
        case 0:
            cardTextLoader(questionIndex: numberOfCardControl.selectedSegmentIndex)
        case 1:
            cardTextLoader(questionIndex: numberOfCardControl.selectedSegmentIndex)
        case 2:
            cardTextLoader(questionIndex: numberOfCardControl.selectedSegmentIndex)
        default:
            cardTextLoader(questionIndex: numberOfCardControl.selectedSegmentIndex)
        }
    }
    
    func cardTextLoader(questionIndex: Int){
            if let rtfPath = Bundle.main.url(forResource: "\(cardIndex + 1)_\(questionIndex + 1)", withExtension: "rtf") {
                do {
                    let attributedStringWithRtf: NSAttributedString = try NSAttributedString(url: rtfPath, options: [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.rtf], documentAttributes: nil)
                    self.cardTextView.attributedText = attributedStringWithRtf
                    self.cardTextView.scrollRangeToVisible(NSRange(location:0, length:0))
                    print(rtfPath)
                    
                } catch let error {
                    print("Got an error \(error)")
                }
            }
    }
    
    @IBAction func showShort(_ sender: UIBarButtonItem) {
        
    }
    
    
}

