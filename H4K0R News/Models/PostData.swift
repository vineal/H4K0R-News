//
//  PostData.swift
//  H4K0R News
//
//  Created by Vineal Viji Varghese on 25/07/20.
//  Copyright © 2020 Vineal Viji Varghese. All rights reserved.
//

import Foundation
struct Results : Decodable {
    let hits : [Post]
}

struct Post : Decodable, Identifiable{
    var id : String {
        return objectID
    }
    let title : String
    let points : Int
    let objectID : String
    let url : String?
}
