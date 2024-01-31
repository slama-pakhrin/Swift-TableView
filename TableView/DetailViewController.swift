//
//  DetailViewController.swift
//  TableView
//
//  Created by Arii on 2024-01-30.
//

import Foundation
import UIKit

class DetailViewController: UIViewController{
    @IBOutlet weak var afterTouchLabel: UILabel!
    var selectedItem: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Specific Item"
        afterTouchLabel.text = selectedItem
    }
}
