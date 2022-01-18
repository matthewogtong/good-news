//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Matthew Ogtong on 1/17/22.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setup()
        
    }
    
    private func setup() {
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    }
}
