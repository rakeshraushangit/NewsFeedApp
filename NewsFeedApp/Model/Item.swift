//// 	 
//	Item.swift
//	NewsFeed
//
//	Created By Rakesh Raushan on 5/25/22
//

import Foundation

struct Item: Decodable {
    var newsFeeds: [NewsFeed] = []
    
    enum CodingKeys: String, CodingKey {
        case newsFeeds = "items"
    }
}
