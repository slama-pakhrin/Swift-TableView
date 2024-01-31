//
//  ViewController.swift
//  TableView
//
//  Created by Arii on 2024-01-30.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let items : [String] = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8",]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = items[indexPath.row]
        cell.iconImageView.image = UIImage(systemName: "paperplane.circle.fill")
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Items"
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = items[indexPath.row]
        // progammatically
        //1. Creating Storyboard
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                
                // 2. Creating View Controller with Identifier
                let viewController = storyboard.instantiateViewController(identifier: "MyDetailViewController") as! DetailViewController
                
                // 3. Updating data
                viewController.selectedItem = selectedItem
                
                // 4. Pushing to navigation stack
                navigationController?.pushViewController(viewController, animated: true)
    }
}

