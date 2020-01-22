//
//  NetworkManager.swift
//  kopuro
//
//  Created by junpei ono on 2020/01/22.
//  Copyright © 2020 坂本雅大. All rights reserved.
//

import Foundation
import Alamofire

class NetworkManager {
    
    static func featchPosts(completion: @escaping (Error?, [Post]) -> Void) {
        AF.request("http://kininarukotomatome.com/wp-json/wp/v2/posts").responseJSON { response in
            switch response.result {
            case .success:
                guard let data = response.data else { return }
                guard let posts = try? JSONDecoder().decode([Post].self, from: data) else {
                    return
                }
                completion(nil, posts)
            case .failure(let error):
                print(error)
            }
        }
    }
}
