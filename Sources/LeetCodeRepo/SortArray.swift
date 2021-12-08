//
//  File.swift
//  
//
//  Created by Subhra Roy on 08/12/21.
//

import Foundation

public protocol SortArrayProtocol {
    func sort(array: [Int]) -> [Int]
}

extension SortArrayProtocol{
    public func sort(array: [Int]) -> [Int]{
        
        guard array.count > 0 else { return array }
        var tempArray = array
        var isSwape : Bool = true
        
        repeat{
            isSwape = false
            for index in 1 ..< array.count{
                if tempArray[index] < tempArray[index - 1]{
                    tempArray.swapAt(index, index - 1)
                    isSwape = true
                }
            }
            
        }while isSwape
        
        return tempArray
    }
}

