//
//  File.swift
//  
//
//  Created by Subhra Roy on 05/11/21.
//

import Foundation

public protocol TwoSumProtocol {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int]
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
    
}
