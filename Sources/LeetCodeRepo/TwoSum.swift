//
//  File.swift
//  
//
//  Created by Subhra Roy on 05/11/21.
//

import Foundation

public protocol TwoSumProtocol {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int]
    func containsDuplicate(_ nums: [Int]) -> Bool
}

extension TwoSumProtocol{
    
    public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result: [Int] = [Int]()
        for(index , number) in nums.enumerated() {
            let remainder = target - number
            let nextIndex = index + 1
            for i in nextIndex ..< nums.count{
                if remainder == nums[i]{
                    result.append(index)
                    result.append(i)
                    break
                }
            }
        }
        return result
    }
    
    public func containsDuplicate(_ nums: [Int]) -> Bool{
        var uniqueDict: [Int: Int] = [Int: Int]()
        //var duplicateCounter: Int = 0
        for (_ , item) in nums.enumerated(){
            if uniqueDict[item] == item {
               // duplicateCounter = duplicateCounter + 1
                return true
            }else{
                uniqueDict[item] = item
            }
        }
        return false
    }
    
}
