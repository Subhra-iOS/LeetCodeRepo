//
//  File.swift
//  
//
//  Created by Subhra Roy on 10/11/21.
//

import Foundation

public protocol SubArrayProtocol {
    func maxProduct(_ nums: [Int]) -> Int
}

extension SubArrayProtocol{ //[2,3,-2,4]
    public func maxProduct(_ nums: [Int]) -> Int{
        var currentValue = 0 , maxValue = 0
        for (index , _) in nums.enumerated(){
            let nextIndex = index + 1
            guard nextIndex < nums.count else { break }
            currentValue = max(currentValue, (nums[index] * nums[nextIndex]))
            maxValue = max(maxValue, currentValue)
        }
        return maxValue
    }
}
