import XCTest
@testable import LeetCodeRepo

final class LeetCodeRepoTests: XCTestCase {
    /*func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CodeRepo().demoTxt, "This is my first package!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]*/
    
    func testToSum(){
        XCTAssertEqual(CodeRepo().twoSum([2,7,11,15], 9),[0,1])
    }
    
    func testComputeArray(){
       // XCTAssertEqual(ArrayRepo().productExceptSelf([1,2,3,4]), [24,12,8,6])
        XCTAssertEqual(ArrayRepo().productExceptSelf([1,1]), [1,1])
    }
}
