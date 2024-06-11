//
//  BaseLog.swift
//  OSLogExample
//
//  Created by 김건우 on 6/11/24.
//

import Foundation
import OSLog 

class BaseLog {
    
    enum OSLogLevel {
        case debug
        case info
        case warning
        case error
        case critical
        
        var prefix: String {
            switch self {
            case .debug:
                return "[⚪️Debug]: "
            case .info:
                return "[🟣Info]: "
            case .warning:
                return "[🟡Warning]: "
            case .error:
                return "[🟡Error]: "
            case .critical:
                return "[🔴Critical]: "
            }
        }
    }
    
    enum OSLogCategory {
        case network
        case view
        case reactor
        case storage
        case custom(category: String)
    }
    
    static func logger(_ category: OSLogCategory) -> Logger {
        switch category {
        case .network:
            return Logger.network
        case .view:
            return Logger.view
        case .reactor:
            return Logger.reactor
        case .storage:
            return Logger.storage
        case let .custom(category):
            return Logger.custom(category)
        @unknown default:
            return Logger.none
        }
    }
    
    static func logMessage(
        _ message: Any,
        _ arguments: [Any],
        level: OSLogLevel
    ) -> String {
        let message = level.prefix +  String(describing: message)
        let extraMessage = arguments
            .map { String(describing: $0) }
            .joined(separator: " ")
        return message + extraMessage
    }
    
}
