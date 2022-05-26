//// 	 
//	Date.swift
//	NewsFeed
//
//	Created By Rakesh Raushan on 5/25/22
//	

import Foundation

extension String {
    
    // It returns date from string in custom format
    func toDate(_ customFormat: String) -> Date?{
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        dateFormatter.dateFormat = customFormat
        return dateFormatter.date(from: self)
    }
}

extension Date {
    
    // It returns string from date of custom format
    func toString(_ customFormat: String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        dateFormatter.dateFormat = customFormat
        return dateFormatter.string(from: self)
    }
}
