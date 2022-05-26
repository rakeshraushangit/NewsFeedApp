//// 	 
//	NewsFeed.swift
//	NewsFeed
//
//	Created By Rakesh Raushan on 5/25/22
//


import Foundation

struct NewsFeed: Decodable {
    var description: String = ""
    var fullDate: String = ""
    var imageURL: String = ""
    
    enum CodingKeys: String, CodingKey {
        case description = "title"
        case fullDate = "pubDate"
        case imageURL = "thumbnail"
    }
    
    var date: String {
        return fullDate.toDate("yyyy-MM-dd HH:mm:ss")?.toString("MMM d, yyyy") ?? ""
    }
    
    var time: String {
        return fullDate.toDate("yyyy-MM-dd HH:mm:ss")?.toString("h:mm a") ?? ""
    }
}

