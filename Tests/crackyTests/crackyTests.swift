import XCTest
@testable import cracky

final class crackyTests: XCTestCase {
    
        func test_isUnique() {
    
            XCTAssertEqual(cracky().arraysAndStrings.isUnique(str: "asdf"), true)
        }
        
        func testCheckPermutation() {
            
            XCTAssertEqual(cracky().arraysAndStrings.checkPermutation("abc", "cbad"), false, "should return false when strings arent the same length")
            XCTAssertEqual(cracky().arraysAndStrings.checkPermutation("abc", "aac"), false, "should return false when strings dont contain all characters")
            XCTAssertEqual(cracky().arraysAndStrings.checkPermutation("abc", "cba"), true, "should return true when characters used match all characters in strings")
            XCTAssertEqual(cracky().arraysAndStrings.checkPermutation("aaaaaabbbbbbcc", "ababababacbabc"), true, "should return true when characters used match all characters in strings")
            
        }


    static var allTests = [
        ("testCheckPermutation", testCheckPermutation),
        ("test_isUnique", test_isUnique),
    ]
}
