import XCTest
@testable import LeetCodeRepo

final class LeetCodeRepoTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(LeetCodeRepo().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
