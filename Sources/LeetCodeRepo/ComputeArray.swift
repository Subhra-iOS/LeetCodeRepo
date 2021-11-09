//
//  File.swift
//  
//
//  Created by Subhra Roy on 08/11/21.
//

import Foundation

public protocol ComputeArrayProtocol {
    func productExceptSelf(_ nums: [Int])-> [Int]
    func maxSubArray(_ nums: [Int]) -> Int
}

extension ComputeArrayProtocol{
    
    public func productExceptSelf(_ nums: [Int])-> [Int]{
       var result = [Int]()
        
        var i = 0
        while i < nums.count {
            var exceptSelfArr = nums
            exceptSelfArr.remove(at: i)
            if exceptSelfArr.count > 0 { result.append(recurssiveMultiplerWith(index: 0, items: exceptSelfArr)) }
            else{
                result.append(0)
            }
            i = i + 1
        }
       return result
    }
    
    private func recurssiveMultiplerWith(index: Int, items: [Int]) -> Int{
        guard (index + 1) < items.count else { return items[index] }
        return items[index] * recurssiveMultiplerWith(index: (index + 1), items: items)
    }
    
}

extension ComputeArrayProtocol{
    
   /* public func maxSubArray(_ nums: [Int]) -> Int{
        
        var  max_so_far = 0
        var  max_ending_here = 0
        
        for (_ , number) in nums.enumerated(){
            max_ending_here = max_ending_here + number
            if max_so_far < max_ending_here {
                max_so_far = max_ending_here
            }
            if max_ending_here < 0 { max_ending_here = 0 }
        }
        return max_so_far
    }*/
    
    public func maxSubArray(_ nums: [Int]) -> Int {
        var curSum = nums[0], maxSum = nums[0]
        for i in 1..<nums.count {
            curSum = max(nums[i], curSum + nums[i])
            maxSum = max(maxSum, curSum)
        }
        return maxSum
    }
}
