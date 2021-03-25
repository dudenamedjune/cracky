import XCTest

import crackyTests

var tests = [XCTestCaseEntry]()
tests += crackyTests.__allTests()

XCTMain(tests)
