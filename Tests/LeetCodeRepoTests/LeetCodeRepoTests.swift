import XCTest
@testable import LeetCodeRepo
@testable import SubArrayRepo

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
        XCTAssertEqual(ArrayRepo().productExceptSelf([1,2,3,4]), [24,12,8,6])
        XCTAssertEqual(ArrayRepo().productExceptSelf([1,1]), [1,1])
    }
    
    func testMaxSubArray(){
        XCTAssertEqual(ArrayRepo().maxSubArray([-2,1,-3,4,-1,2,1,-5,4]), 6)
        XCTAssertEqual(ArrayRepo().maxSubArray([5,4,-1,7,8]), 23)
    }
    
    func testMaxProductSubArray(){
        XCTAssertEqual(SubArrayRepo().maxProduct([2,3,-2,4]), 6)
        XCTAssertEqual(SubArrayRepo().maxProduct([-2,0,-1]), 0)
    }
}
