//
//  MoviesVC.swift
//  Tab-Bar-Favorites
//
//  Created by Ratislav Ovchinnikov on 21.11.2025.
//

import UIKit

class MoviesVC: UIViewController {
 

    @IBOutlet var tableView: UITableView!
    
    var items: [Item] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        items = data[0].items
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.rowHeight = UITableView.automaticDimension
        
        title = "Movies"
        navigationItem.largeTitleDisplayMode = .always
    }
    

}



extension MoviesVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell") as! FavoriteItemTableViewCell
        let item = items[indexPath.row]
        cell.configure(with: item.image, title: item.title, subtitle: item.subtitle, review: item.review)
        return cell
    }
}



extension MoviesVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedItem = items[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: selectedItem)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail",
           let detailVC = segue.destination as? DetailsVC,
           let item = sender as? Item {
            detailVC.item = item
        }
    }
}
