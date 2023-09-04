//
//  Helper.swift
//  eCommerceDemo
//
//  Created by admin on 04/09/23.
//

import Foundation
import Reachability
import SystemConfiguration

class ReachabilityHelper: NSObject {
    static let sharedSingleTon = ReachabilityHelper()
    
    class func isInternetAvailable() -> Bool {
        var status: Bool
        let reachability =  try! Reachability()
        switch reachability.connection
        {
        case .none:
            debugPrint("Network unreachable")
            status = false
        case .wifi:
            debugPrint("Network reachable through WiFi")
            status = true
        case .cellular:
            status = true
            debugPrint("Network reachable through Cellular Data")
        case .unavailable:
            debugPrint("Network unreachable")
            status = false
        }
        return status
    }
}
