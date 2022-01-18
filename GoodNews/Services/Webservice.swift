//
//  Webservice.swift
//  GoodNews
//
//  Created by Matthew Ogtong on 1/17/22.
//

import Foundation

class Webservice {
    
    func getArticles(url: URL) {
        
        let session = URLSession.init(configuration: .default)
        
        let task = session.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
            } else {
                if let data = data {
                    print(data)
                }
            }
            
        }
        
        task.resume()
        
    }
    
}
