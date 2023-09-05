//
//  SearchProductVCTests.swift
//  eCommerceDemoTests
//
//  Created by admin on 05/09/23.
//

import XCTest


@testable import eCommerceDemo
 class SearchProductVCTests: XCTestCase {

   private var viewControllerUnderTest : SearchProductVC!
     var collectionView: UICollectionView?
    override  func setUp() {
        super .setUp()
        
        viewControllerUnderTest = SearchProductVC()
        viewControllerUnderTest.loadView()
        collectionView = UICollectionView(frame: CGRect(), collectionViewLayout: UICollectionViewLayout())
    }
    
    override func tearDown() {
        super.tearDown()
        viewControllerUnderTest = nil
        collectionView = nil
    }
     
     func testViewConntrollerNotNil() {
         
         XCTAssertNotNil(viewControllerUnderTest)
     }
     func testGetRequestBody() {
         
         XCTAssertNotNil(viewControllerUnderTest.getRequestBody())
              
     }
    

     func testNumberOfRows() {
         let rows = viewControllerUnderTest?.collectionView(collectionView!, numberOfItemsInSection: viewControllerUnderTest?.hitsArray.count ?? 0)
         XCTAssertEqual(rows, 0)
         
     }
     
     func testAPIWorking() {
         let expectation = XCTestExpectation.init(description: "POST \(APIURL.search)?with_metas=false")
         let aRequestSearchBody = viewControllerUnderTest.getRequestBody()
         
         ApiServicesCommon.PostURL(url: "\(APIURL.search)?with_metas=false", dict: aRequestSearchBody) {  responceData, success, error in
             
             if !success   {
                 
                 XCTFail("Fail")
             }
             expectation.fulfill()
         }
        
     
     }
     func testCollectionViewConformsToCollectionViewDataSourceProtocol() {
         
         XCTAssertTrue(viewControllerUnderTest!.conforms(to: UICollectionViewDelegate.self))
         XCTAssertTrue(viewControllerUnderTest!.conforms(to: UICollectionViewDataSource.self))
         XCTAssertTrue(viewControllerUnderTest!.conforms(to:UICollectionViewDelegateFlowLayout.self))
         
     }
     
     
   
}
