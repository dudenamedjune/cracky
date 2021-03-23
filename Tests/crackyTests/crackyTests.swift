import XCTest
@testable import cracky

final class crackyTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(cracky().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
