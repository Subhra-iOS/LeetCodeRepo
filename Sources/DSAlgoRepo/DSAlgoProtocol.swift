//
//  File.swift
//  
//
//  Created by Subhra Roy on 13/01/22.
//

import Foundation

public protocol DSAlgoProtocol{
    func mergeIntervals(input: [[Int]]) -> [[Int]]
    func spiralTraverse(_ matrix: [[Int]]) -> [Int]
}

/**
 Given an array of intervals where intervals[i] = [start_i, end_i], merge all overlapping intevals and return an array of non overlapping intervals that cover all the intervals in the input
 */

extension DSAlgoProtocol{
    //Time complexity : O(nlogn)
    public func mergeIntervals(input: [[Int]]) -> [[Int]]{
        guard input.count > 1 else {
            return input
        }
        //nlog
        let sortedIntervals = input.sorted { (item1, item2) -> Bool in
            return item1[0] < item2[0]
        }
        
        var result = [[Int]]()
        result.reserveCapacity(sortedIntervals.count)
        
        result.append(sortedIntervals[0])
        //n
        for i in 1 ..< sortedIntervals.count{
            let current = sortedIntervals[i]
            let lastInterval = result.last!
            
            if current[0] >= lastInterval[0],
               current[0] <= lastInterval[1]{
                result.removeLast()
                result.append([
                    min(current[0], lastInterval[0]),
                    max(current[1], lastInterval[1])
                ])
            }else{
                result.append(current)
            }
        }
        return result
    }
    
    /**
     Given an m X n matrix, return all elements of the matrix in spiral order.
     */
    public func spiralTraverse(_ matrix: [[Int]]) -> [Int]{
        
        guard matrix.count > 0 else { return [] }
                
        let totalElementCount = matrix[0].count * matrix.count
        //var result: [Int?] = Array(repeating: nil, count: totalElementCount)
        var result: [Int] = [Int]()
        
        var left = 0
        var right = matrix[0].count - 1
        var top = 0
        var bottom = matrix.count - 1
        
        while result.count < totalElementCount {
            // Go left to right
            for col in stride(from: left, through: right, by: 1){
                result.append(matrix[top][col])
            }
            //Go top to bottom
            for row in stride(from: top + 1 , through: bottom, by: 1){
                result.append(matrix[row][right])
            }
            //Go right to left
            for col in stride(from: right - 1 , through: left, by: -1){
                result.append(matrix[bottom][col])
            }
            //Go up
            for row in stride(from: bottom - 1 , through: top + 1, by: -1){
                result.append(matrix[row][left])
            }
            
            left += 1
            top += 1
            right -= 1
            bottom -= 1
        }
        
        return result
    }
}
