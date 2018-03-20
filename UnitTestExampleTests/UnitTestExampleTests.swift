//
//  UnitTestExampleTests.swift
//  UnitTestExampleTests
//
//  Created by Firoj Shaikh on 20/03/18.
//  Copyright © 2018 Firoj Shaikh. All rights reserved.
//

import XCTest
@testable import UnitTestExample

class UnitTestExampleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testUserInfo() {
        let firstVC  = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as? ViewController
        let userInfo = firstVC?.prepareRegisterObject()
        XCTAssertFalse(firstVC!.isValidEmail(strEmail: userInfo?.emailAdd ?? ""), "invalid email address")
        print("userinfo  = \(String(describing: userInfo))")
    }
    
}
