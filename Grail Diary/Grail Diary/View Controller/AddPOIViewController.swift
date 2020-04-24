//
//  AddPOIViewController.swift
//  Grail Diary
//
//  Created by Iyin Raphael on 4/23/20.
//  Copyright © 2020 Iyin Raphael. All rights reserved.
//

import UIKit

protocol AddPOIDelegate {
    
    func poiWasAdded(_ poi: POI)
}

class AddPOIViewController: UIViewController {
    
    var delegate: AddPOIDelegate?

    @IBOutlet weak var locationTextfield: UITextField!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var clue1TextField: UITextField!
    @IBOutlet weak var clue2TextField: UITextField!
    @IBOutlet weak var clue3TextField: UITextField!
   
    @IBAction func cancelTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveTapped(_ sender: Any) {
        guard let location = locationTextfield.text, let country = countryTextField.text else {
                return
        }
        
        var pOi = POI(location: location, country: country)
        
        if let clue1 = clue1TextField.text {
            pOi.clues.append(clue1)
        }
        if let clue2 = clue2TextField.text {
            pOi.clues.append(clue2)
        }
        if let clue3 = clue3TextField.text {
            pOi.clues.append(clue3)
        }
        
        delegate?.poiWasAdded(pOi)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension AddPOIViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let text = textField.text else {return false}
        
        switch textField {
        case locationTextfield:
            return locationTextfield.resignFirstResponder()
        case countryTextField:
            return countryTextField.resignFirstResponder()
        case clue1TextField:
            return clue1TextField.resignFirstResponder()
        case clue2TextField:
            return clue2TextField.resignFirstResponder()
        case clue3TextField:
            return clue3TextField.resignFirstResponder()
        default:
            return false
        }
    }
}
 
