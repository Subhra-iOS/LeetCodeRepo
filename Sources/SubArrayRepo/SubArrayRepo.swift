//
//  File.swift
//  
//
//  Created by Subhra Roy on 10/11/21.
//

import Foundation

public protocol ArrayProtocol: SubArrayProtocol, SearchProtocol{}

public struct SubArrayRepo: ArrayProtocol {
    public init(){}
}

public struct MissingRepo: MissingProtocol{
    public init(){}
}

public struct ClimbStairRepo: ClimbingStairsProtocol{
    public init(){}
}

public class Node<T>: LinkListProtocol{
    public typealias DataType = T
    
    public var value: DataType
    public var next: Node<DataType>?
    
    public init(value: T, next: Node<DataType>? = nil){
        self.value = value
        self.next = next
    }
    
}

extension Node{
    public func search(value: DataType) -> Bool{
        
        return false
    }
    
    public func searchMultipleOccuranceCount(for value: DataType) -> Int{
        return 0
    }
}
