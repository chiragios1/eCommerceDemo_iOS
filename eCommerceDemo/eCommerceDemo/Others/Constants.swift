//
//  Constants.swift
//  eCommerceDemo
//
//  Created by admin on 04/09/23.
//

import Foundation
import  UIKit

struct APIURL
{
    //Base URL
    static let BASEURL : String = Configuration.environment.hostUrl
    static let search : String = BASEURL + "search"
    
}
enum AlertTitleMessage {
     static let INTERNET_ERROR = "You are browsing offline. Please check your internet connection!"
     static let ERROR = "Opps! Something went wrong."
    static let success = "Success"
    static let ok = "OK"
    static let gotIt = "Got It !"
    static let dismiss = "Dismiss"
    static let yes = "Yes"
    static let no = "No"
    static let cancel = "Cancel"
    static let save = "Save"
     static let logout = "Are you sure you want to Logout?"
}
enum StoryboardId {
    // Login Flow Id's
     static let SearchProductVC = "SearchProductVC"
    
   
    
}


enum CellId {
    
    
    // Table View Cell Id's
     static let ProductCollectionViewCell = "ProductCollectionViewCell"
  
    
    // Collection View Cell id's
}



enum Storyboard: String {
    case main = "Main"
  
    var storyboard: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: nil)
    }
}
