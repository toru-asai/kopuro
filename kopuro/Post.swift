//
//  Post.swift
//  kopuro
//
//  Created by junpei ono on 2020/01/22.
//  Copyright © 2020 坂本雅大. All rights reserved.
//

import Foundation

struct Post: Decodable, Identifiable {
    let id: Int
    let title: String
    let link: String
    
    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case link
    }

    private enum TitleKeys: String, CodingKey {
        case rendered
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(Int.self, forKey: .id)
        link = try values.decode(String.self, forKey: .link)
        let titleValue = try values.nestedContainer(keyedBy: TitleKeys.self, forKey: .title)
        title = try titleValue.decode(String.self, forKey: .rendered)
    }
}
