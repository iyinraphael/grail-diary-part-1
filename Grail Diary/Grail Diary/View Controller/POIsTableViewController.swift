//
//  ViewController.swift
//  Grail Diary
//
//  Created by Iyin Raphael on 4/14/20.
//  Copyright © 2020 Iyin Raphael. All rights reserved.
//

import UIKit

class POIsTableViewController: UIViewController {

    @IBOutlet weak var POITableViewController: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

