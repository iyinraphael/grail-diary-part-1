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
        
        if segue.identifier == "ShowPOIDetailSegue" {
            guard let destinationVC = segue.destination as? AddPOIViewController else {return}
            destinationVC.delegate = self
        }
    }


}


extension POIsTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}


extension POIsTableViewController: AddPOIDelegate {
    
    func poiWasAdded(_ poi: POI) {
        pOiArray.append(poi)
        self.dismiss(animated: true, completion: poiTableViewController.reloadData)
    }
    
    
    
}

