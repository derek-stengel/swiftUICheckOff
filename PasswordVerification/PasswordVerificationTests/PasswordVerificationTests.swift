//
//  PasswordVerificationTests.swift
//  PasswordVerificationTests
//
//  Created by Derek Stengel on 6/10/24.
//

////  TEST CASES
/*
 Contain 8-30 characters
 Contains Uppercase AND lowercase characters
 */

import Foundation
import XCTest

@testable import PasswordVerification

final class PasswordVerificationTests: XCTestCase {
    var validationController: ValidationController!
    
    override func setUp() {
        super.setUp()
        validationController = ValidationController()
    }
    
    func testPasswordGreaterThan8Passes() {
        XCTAssert(validationController.passwordHasProperNumberOfCharacters("12345678"))
    }
    
    func testPasswordGreaterThan8Fails() {
        XCTAssertFalse(validationController.passwordHasProperNumberOfCharacters("123"))
    }
    
    func testPasswordGreaterThan30Fails() {
        XCTAssertFalse(validationController.passwordHasProperNumberOfCharacters("qwertyuiopqwertyuiopqwertyuiop12345"))
    }
    
    func testPasswordLessThan30Passes() {
        XCTAssert(validationController.passwordHasProperNumberOfCharacters("qwertyuiopqwertyuiopqwertyuiop"))
    }
    
    func testPasswordContainsLowercaseLettersFails() throws {
        XCTAssertFalse(validationController.passwordHasLowercaseAndUppercase("derek"))
    }
    
    func testPasswordContainsUppercaseLettersFails() throws {
        XCTAssertFalse(validationController.passwordHasLowercaseAndUppercase("DEREK"))
    }
    
    func testPasswordContainsNumbersFails() throws {
        XCTAssertFalse(validationController.passwordHasLowercaseAndUppercase("12345"))
    }
    
    func testPasswordContainsLowercaseAndUppercaseLetterPasses() throws {
        XCTAssert(validationController.passwordHasLowercaseAndUppercase("Derek"))
    }
}
