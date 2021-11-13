//
//  File.swift
//  
//
//  Created by Subhra Roy on 12/11/21.
//

import Foundation

public protocol SearchProtocol {
    func search(_ nums: [Int], _ target: Int) -> Int
    func search(in nums: [Int], _ target: Int) -> Bool
}

extension SearchProtocol{
    public func search(_ nums: [Int], _ target: Int) -> Int{
        guard nums.count > 0 else {
            return -1
        }
        var searchIndex = -1
        for(index, element) in nums.enumerated(){
            if element == target{
                searchIndex = index
                break
            }
        }
        return searchIndex
    }
    
    public func search(in nums: [Int], _ target: Int) -> Bool{
        guard nums.count > 0 else {
            return false
        }
        let pivotIndex = (nums.count / 2)
        let pivotElement = nums[pivotIndex]
        let leftArray = nums.filter({$0 < pivotElement})
        let rightArray = nums.filter({$0 > pivotElement})
        if pivotElement == target { return true }
        else if target > pivotElement{
            return search(in: rightArray, target)
        }else if target < pivotElement{
            return search(in: leftArray, target)
        }else{
            return false
        }
    }
}