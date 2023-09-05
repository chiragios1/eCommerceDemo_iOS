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
extension UIViewController {
    
    func displayAlert(title: String?, message: String?, buttonName: String = AlertTitleMessage.ok, completion: (()->())?) {
        
        let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let actionButton = UIAlertAction(title: buttonName, style: .cancel) { (action) in
            completion?()
        }
        controller.addAction(actionButton)
        DispatchQueue.main.async {
            guard  let topViewController = UIApplication.dotTopViewController() else  { return }
            topViewController.present(controller, animated: true, completion: nil)
        }
    }
    
    func displayAlert(title: String?, message: String?, alertActions action: [UIAlertAction]) {
        let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        action.forEach({ controller.addAction($0) })
        DispatchQueue.main.async {
            guard  let topViewController = UIApplication.dotTopViewController() else  { return }
            topViewController.present(controller, animated: true, completion: nil)
        }
    }
    
    func displayActionSheet(title: String?, message: String?, alertActions action: [UIAlertAction]) {
        let actionController = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        action.forEach({ actionController.addAction($0) })
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: {
            guard  let topViewController = UIApplication.dotTopViewController() else  { return }
            topViewController.present(actionController, animated: true, completion: nil)
        })
    }
}
extension UIApplication {
   
    class func dotTopViewController(_ base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return dotTopViewController(nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return dotTopViewController(selected)
            }
        }
        if let presented = base?.presentedViewController {
            return dotTopViewController(presented)
        }
        return base
    }
    class func getTopMostViewController() -> UIViewController? {
        let keyWindow = UIApplication.shared.windows.filter { $0.isKeyWindow }.first
        if var topController = keyWindow?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            return topController
        } else {
            return nil
        }
    }
}
