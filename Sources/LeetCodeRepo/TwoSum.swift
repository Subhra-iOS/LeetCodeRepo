//
//  File.swift
//  
//
//  Created by Subhra Roy on 05/11/21.
//

import Foundation

protocol TwoSumProtocol {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int]
}

extension TwoSumProtocol{
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result: [Int] = [Int]()
        for(index ,_) in nums.enumerated() {
            let nextIndex = index + 1
            if nextIndex < nums.count, nums[index] + nums[nextIndex] == target{
                result.append(index)
                result.append(nextIndex)
            }
        }
        return result
    }
    
}
