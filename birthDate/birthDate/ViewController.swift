//
//  ViewController.swift
//  birthDate
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var birthYearLabel: UILabel!
    
    @IBOutlet weak var birthYearTextArea: UITextField!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var ageTextArea: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: Any) {
        let yearOfBirthText = birthYearTextArea.text
        let currentYear = 2025

        if let yearText = yearOfBirthText, let yearOfBirth = Int(yearText) {
            let age = currentYear - yearOfBirth
            ageTextArea.text = "\(age)"
        } else {
            ageTextArea.text = "Invalid year"
        }
    }


}
