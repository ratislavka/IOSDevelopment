//
//  ViewController.swift
//  My Favorites
//
//  Created by Ratislav Ovchinnikov on 09.11.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }


}



extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].items.count //return 4
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count // return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell") as! FavoriteItemTableViewCell
        
        let currentItem = data[indexPath.section].items[indexPath.row]
        cell.configure(item: currentItem)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].section
    }
    

}



extension ViewController: UITableViewDelegate {

}


