//
//  String+Ext.swift
//  GithubFollowers
//
//  Created by Macbook Air on 13.10.2022.
//

// ******************************************************************************
// The createdAt variable changed value from string to Date in Model > User.swift
// We no longer need to use this extension.

/*
import Foundation

extension String {
    
    func convertToDate() -> Date? {
        let dateFormatter           = DateFormatter()
        dateFormatter.dateFormat    = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale        = Locale(identifier: "en_US")
        dateFormatter.timeZone      = .current
        return dateFormatter.date(from: self)
    }
    
    func convertToDisplayFormat() -> String {
        guard let date = self.convertToDate() else { return "N/A" }
        return date.convertToMonthYearFormat()
    }
    
}
*/

// The createdAt variable changed value from string to Date in Model > User.swift
// We no longer need to use this extension.
// ******************************************************************************
