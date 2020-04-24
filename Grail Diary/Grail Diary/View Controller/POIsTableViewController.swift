//
//  ViewController.swift
//  Grail Diary
//
//  Created by Iyin Raphael on 4/14/20.
//  Copyright © 2020 Iyin Raphael. All rights reserved.
//

import UIKit

class POIsTableViewController: UIViewController {

    var pOiArray = [POI]()

    @IBOutlet weak var poiTableViewController: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AddPOIModalSegue" {
            guard let destinationVC = segue.destination as? AddPOIViewController else {return}
            destinationVC.delegate = self
        } else if segue.identifier == "ShowPOIDetailSegue" {
            guard let destinationVc = segue.destination as? POIDetailViewController else {return}
            guard let indexPath = poiTableViewController.indexPathForSelectedRow else {return}
            destinationVc.pOi = pOiArray[indexPath.row]
        }
    }


}


extension POIsTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pOiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "POICell") as! POITableViewCell
        let poi = pOiArray[indexPath.row]
        cell.pOi = poi
        return cell
    }
    
    
}


extension POIsTableViewController: AddPOIDelegate {
    
    func poiWasAdded(_ poi: POI) {
        pOiArray.append(poi)
        self.dismiss(animated: true, completion: poiTableViewController.reloadData)
    }
    
    
    
}

