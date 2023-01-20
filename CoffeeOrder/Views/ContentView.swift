//
//  ContentView.swift
//  CoffeeOrder
//
//  Created by Silva Kirsimae on 19/01/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var orderListVM = OrderListViewModel()
    
    @State private var showModal: Bool = false
    
    var body: some View {
        NavigationView {
            OrderListView(orders: self.orderListVM.orders)
                .navigationTitle("Coffee Orders")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: reloadOrders) {
                            Image(systemName: "arrow.clockwise")
                                .foregroundColor(.white)
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: showAddCoffeeOrderView) {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                        }
                    }
                }
                .sheet(isPresented: self.$showModal) {
                    AddCoffeeOrderView(isPresented: self.$showModal)
                }
        }
    }
    
    private func reloadOrders() {
        self.orderListVM.fetchOrders()
    }
    
    private func showAddCoffeeOrderView() {
        self.showModal = true
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
