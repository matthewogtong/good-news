//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Matthew Ogtong on 1/17/22.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    let webService = Webservice()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setup()
        
    }
    
    private func setup() {
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url: URL = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=4c2c350016944d68834b38fcc151cbe3")!
        
        webService.getArticles(url: url)
        
    }
}
