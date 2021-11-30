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
    
    func testMinElement(){
        XCTAssertEqual(SubArrayRepo().findMin([4,5,6,7,0,1,2]), 0)
        XCTAssertEqual(SubArrayRepo().findMin([3,4,5,1,2]), 1)
    }
    
    func testSearchElement(){
        XCTAssertEqual(SubArrayRepo().search([4,5,6,7,0,1,2], 0), 4)
        XCTAssertEqual(SubArrayRepo().search([4,5,6,7,0,1,2], 3), -1)
    }
    func testSearchStatus(){
        XCTAssertEqual(SubArrayRepo().search(in: [4,5,6,7,0,1,2], 0), true)
        XCTAssertEqual(SubArrayRepo().search(in: [4,5,6,7,0,1,2], 3), false)
    }
    
    func testMaxWaterContanier(){
        XCTAssertEqual(WaterContanier().maxWaterArea([1,8,6,2,5,4,8,3,7]), 49)
        XCTAssertEqual(WaterContanier().maxWaterArea([4,3,2,1,4]), 16)
    }
    
    func testMaxIncreasingArrayCount(){
        XCTAssertEqual(ArrayRepo().lengthOfLIS([10,9,2,5,3,7,101,18]),4)
        XCTAssertEqual(ArrayRepo().lengthOfLIS([0,1,0,3,2,3]),4)
    }
    
    func testMissingNumberFromCollection(){
        XCTAssertEqual(MissingRepo().missingNumber([9,6,4,2,3,5,7,0,1]),8)
        XCTAssertEqual(MissingRepo().missingNumber([3,0,1]),2)
        XCTAssertEqual(MissingRepo().missingNumber([0]),1)
    }
    
    func testClimbStairWayCount(){
        XCTAssertEqual(ClimbStairRepo().climbStairs(3),3)
        XCTAssertEqual(ClimbStairRepo().climbStairs(4),5)
    }
}
