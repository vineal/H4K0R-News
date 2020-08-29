//
//  NetworkManager.swift
//  H4K0R News
//
//  Created by Vineal Viji Varghese on 25/07/20.
//  Copyright © 2020 Vineal Viji Varghese. All rights reserved.
//

import Foundation
class NetworkManager: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchData() {
        let urlString = "https://hn.algolia.com/api/v1/search?tags=front_page"
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do{
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                            print(results)
                        }
                        catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
