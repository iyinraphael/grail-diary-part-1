//
//  POITableViewCell.swift
//  Grail Diary
//
//  Created by Iyin Raphael on 4/23/20.
//  Copyright © 2020 Iyin Raphael. All rights reserved.
//

import UIKit

class POITableViewCell: UITableViewCell {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var clueCountLabel: UILabel!
    
    var pOi: POI? {
        
        didSet {
            updateView()
        }
    }

    func updateView() {
       
        if let pOi = pOi {
            locationLabel.text = pOi.location
            countryLabel.text = pOi.country
            clueCountLabel.text = String(pOi.clues.count)
        }
    }
}
