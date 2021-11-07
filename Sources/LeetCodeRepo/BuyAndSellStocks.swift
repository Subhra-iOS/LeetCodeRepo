//
//  File.swift
//  
//
//  Created by Subhra Roy on 07/11/21.
//

import Foundation

public protocol BuyAndSellStocksProtocol {
    func maxProfit(_ prices: [Int]) -> Int
}

extension BuyAndSellStocksProtocol{
    
    public func maxProfit(_ prices: [Int]) -> Int{
        if let minimumPriceObject: Int = prices.min(),
           let index: Int = prices.firstIndex(of: minimumPriceObject),
           index < prices.count {
            var maxProfit: Int = 0
            for i in 0 ..< prices.count{
                guard i > index else{ continue } 
                let price = prices[i]
                let profit = price - minimumPriceObject
                if maxProfit < profit{
                    maxProfit = profit
                }
            }
            return maxProfit
        }else{
            return 0
        }
    }
}
