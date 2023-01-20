//
//  ContentView.swift
//  CoffeeOrder
//
//  Created by Silva Kirsimae on 19/01/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var orderListVM = OrderListViewModel()
    
    var body: some View {
        NavigationView {
            OrderListView(orders: self.orderListVM.orders)
                .navigationTitle("Coffee Orders")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
