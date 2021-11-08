//
//  File.swift
//  
//
//  Created by Subhra Roy on 08/11/21.
//

import Foundation

public protocol ComputeArrayProtocol {
    func productExceptSelf(_ nums: [Int])-> [Int]
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
