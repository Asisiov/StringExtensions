//
//  StringExtensions.swift
//  LiveMetric
//
//  Created by Aleksandr Sisiov on 12/6/18.
//  Copyright © 2018 Provision Lab. All rights reserved.
//

import Foundation

// MARK: -
// MARK: Date
extension String {
  func stringToDate() -> Date {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyyMMdd"
    return formatter.date(from: self)!
  }
  
  func formatterStringToDate(_ format: String) -> Date {
    let formatter = DateFormatter()
    formatter.dateFormat = format
    formatter.timeZone = TimeZone(abbreviation: "GMT+0:00")
    return formatter.date(from: self)!
  }
}
