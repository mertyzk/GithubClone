//
//  Date+Ext.swift
//  GithubFollowers
//
//  Created by Macbook Air on 13.10.2022.
//

import Foundation

extension Date {
    
//    func convertToMonthYearFormat() -> String {
//        let dateFormatter           = DateFormatter()
//        dateFormatter.dateFormat    = "MMM yyyy"
//        return dateFormatter.string(from: self)
//    }
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
}
