//
//  File.swift
//  
//
//  Created by Subhra Roy on 30/11/21.
//

import Foundation

public protocol ClimbingStairsProtocol{
    func climbStairs(_ n: Int) -> Int
}

extension ClimbingStairsProtocol{
    
    public func climbStairs(_ n: Int) -> Int{
        
        guard n > 3 else{ return n }
        
        var stairSequence: [Int] = [1,1]
        
        for i in 2 ... n{
            stairSequence.append(stairSequence[i - 1] + stairSequence[i - 2])
        }
        
        return stairSequence[n]
    }
}
