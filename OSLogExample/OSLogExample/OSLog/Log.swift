//
//  Logger.swift
//  OSLogExample
//
//  Created by 김건우 on 6/11/24.
//

import Foundation
import OSLog

final class Log: BaseLog { }

extension Log {
    
    static func debug(
        _ message: Any,
        _ arguments: Any...,
        category: OSLogCategory
    ) {
        let logger = logger(category)
        let logMessage = logMessage(
            message,
            arguments,
            level: .debug
        )
        logger.debug("\(logMessage, privacy: .public)")
    }
    
    static func info(
        _ message: Any,
        _ arguments: Any...,
        category: OSLogCategory
    ) {
        let logger = logger(category)
        let logMessage = logMessage(
            message,
            arguments,
            level: .info
        )
        logger.info("\(logMessage, privacy: .public)")
    }
    
    static func warning(
        _ message: Any,
        _ arguments: Any...,
        category: OSLogCategory
    ) {
        let logger = logger(category)
        let logMessage = logMessage(
            message,
            arguments,
            level: .warning
        )
        logger.warning("\(logMessage, privacy: .public)")
    }
    
    static func error(
        _ message: Any,
        _ arguments: Any...,
        category: OSLogCategory
    ) {
        let logger = logger(category)
        let logMessage = logMessage(
            message,
            arguments,
            level: .error
        )
        logger.error("\(logMessage, privacy: .public)")
    }
    
    static func critical(
        _ message: Any,
        _ arguments: Any...,
        category: OSLogCategory
    ) {
        let logger = logger(category)
        let logMessage = logMessage(
            message,
            arguments,
            level: .critical
        )
        logger.critical("\(logMessage, privacy: .public)")
    }
    
}
