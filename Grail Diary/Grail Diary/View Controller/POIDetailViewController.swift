//
//  POIDetailViewController.swift
//  Grail Diary
//
//  Created by Iyin Raphael on 4/23/20.
//  Copyright © 2020 Iyin Raphael. All rights reserved.
//

import UIKit

class POIDetailViewController: UIViewController {

    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var cluesTextView: UITextView!
    
    var pOi: POI?
    override func viewDidLoad() {
        
        super.viewDidLoad()

        updateViews()
    }
    
    private func updateViews() {
        
        if !isViewLoaded {return}
        
        guard let pOi = pOi else {return}
        
        countryLabel.text = pOi.country
        locationLabel.text = pOi.location
        
        for str in pOi.clues {
            cluesTextView.text = "\(str) \n"
        }
        
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
