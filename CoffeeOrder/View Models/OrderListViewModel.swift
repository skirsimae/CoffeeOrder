//
//  OrderListViewModel.swift
//  CoffeeOrder
//
//  Created by Silva Kirsimae on 19/01/2023.
//

import Foundation

class OrderListViewModel: ObservableObject {
    //whenever we change orders, we reactively display it
    @Published var orders = [OrderViewModel]()
    
    init() {
        fetchOrders()
    }
    
    func fetchOrders() {
        WebService().getAllOrders { orders in
            if let orders = orders  {
                self.orders = orders.map(OrderViewModel.init)
            }
        }
    }
}
