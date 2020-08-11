//
//  CuckooSampleTests.swift
//  CuckooSampleTests
//
//  Created by yaiwamoto on 10/08/2020.
//  Copyright © 2020 Yasutaka Iwamoto. All rights reserved.
//

import XCTest
import Cuckoo
@testable import CuckooSample

class CuckooSampleTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let mock = MockUserRepository()
        
        // スタブ作成
        stub(mock) { stub in
            // メソッドの振る舞いを変更
            when(stub.getName(id: anyInt())).thenReturn("stub name")
            when(stub.getAge(id: anyInt())).thenReturn(18)
        }
        
        XCTAssertEqual(mock.getName(id: 1), "stub name")
        XCTAssertEqual(mock.getAge(id: 1), 18)
        
        // verifyは何回メソッドが呼ばれたとか、引数が正しいとかの検証を行う
        // 引数が１で１回呼ばれたことを検証
        verify(mock).getName(id: 1)
    }
}
