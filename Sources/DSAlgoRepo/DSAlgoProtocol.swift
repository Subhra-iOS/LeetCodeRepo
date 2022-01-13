//
//  File.swift
//  
//
//  Created by Subhra Roy on 13/01/22.
//

import Foundation

public protocol DSAlgoProtocol{
    func mergeIntervals(input: [[Int]]) -> [[Int]]
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
}
