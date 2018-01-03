//
//  ValidateOldKanjiCharactersTests.swift
//  ValidateOldKanjiCharactersTests
//
//  Created by MURAKAMI on 2018/01/03.
//  Copyright © 2018年 MURAKAMI. All rights reserved.
//

import XCTest
@testable import ValidateOldKanjiCharacters

class ValidateOldKanjiCharactersTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testValidateOldKanjiCharacters() {
        let str = "高崎"
        XCTAssertFalse(str.containsOldKanji())
    }
    
    func testValidateOldKanjiCharacters2() {
        let str = "髙﨑"
        XCTAssertTrue(str.containsOldKanji())
    }}
