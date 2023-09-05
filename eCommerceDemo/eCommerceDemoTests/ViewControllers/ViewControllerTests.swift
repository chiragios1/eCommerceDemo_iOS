//
//  ViewControllerTests.swift
//  eCommerceDemoTests
//
//  Created by admin on 05/09/23.
//

import XCTest
@testable import eCommerceDemo
 class ViewControllerTests: XCTestCase {

   private var viewControllerUnderTest : ViewController!
     
    override  func setUp() {
        super .setUp()
        
        viewControllerUnderTest = ViewController()
        viewControllerUnderTest.loadView()
        
    }
    
    override func tearDown() {
        super.tearDown()
        viewControllerUnderTest = nil
        
    }
     
     func testViewConntrollerNotNil() {
         
         XCTAssertNotNil(viewControllerUnderTest)
     }
     func testStartAction() {
         
         XCTAssertTrue(viewControllerUnderTest!.responds(to: #selector(viewControllerUnderTest!.navigateSearchVC(_:))))

     }
     
   
}
