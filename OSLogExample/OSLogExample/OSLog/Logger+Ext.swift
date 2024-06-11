//
//  Logger+Extension.swift
//  OSLogExample
//
//  Created by 김건우 on 6/11/24.
//

import Foundation
import OSLog

extension Logger {
    static let subsystem = Bundle.main.bundleIdentifier!
    
    static let view = Logger(subsystem: subsystem, category: "View")
    static let reactor = Logger(subsystem: subsystem, category: "Reactor")
    static let network = Logger(subsystem: subsystem, category: "Network")
    static let storage = Logger(subsystem: subsystem, category: "Storage")
    static let none = Logger(subsystem: subsystem, category: "None")
    
    static func custom(_ category: String) -> Logger {
        Logger(subsystem: subsystem, category: category)
    }
}
