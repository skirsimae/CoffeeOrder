//
//  OrderViewModel.swift
//  CoffeeOrder
//
//  Created by Silva Kirsimae on 19/01/2023.
//

import Foundation

class OrderViewModel {
    //the items of a list should be unique, so we give an unique id
    let id = UUID()
    
    var order: Order
    
    init(order: Order) {
        self.order = order
    }
    
    var name: String {
        return self.order.name
    }
    
    var size: String {
        return self.order.size
    }
    
    var coffeeName: String {
        return self.order.coffeeName
    }
    
    var total: Double {
        return self.order.total
    }
}
