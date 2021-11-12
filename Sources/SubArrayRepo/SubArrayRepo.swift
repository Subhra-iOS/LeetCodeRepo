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
