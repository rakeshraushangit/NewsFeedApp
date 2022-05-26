//// 	 
//	HTTPRequest.swift
//	NewsFeed
//
//	Created By Rakesh Raushan on 5/25/22
//	

import Foundation

class HTTPRequest {
    
    private init() {}
    
    static var shared: HTTPRequest = HTTPRequest()
    
    // Fetch News Feed from API
    func doRequestForNewsFeed() async -> Item {
        
        let url = URL(string: "https://api.rss2json.com/v1/api.json?rss_url=http://www.abc.net.au/news/feed/51120/rss.xml")
        guard let url = url else {
            return Item()
        }
        
        let (data, _) = try! await URLSession.shared.data(from: url)
        do {
            let result = try JSONDecoder().decode(Item.self, from: data)
            return result
        }catch{
            print(error.localizedDescription)
            return Item()
        }
    }
}
