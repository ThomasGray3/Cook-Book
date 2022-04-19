//
//  HomeView.swift
//  Cook Book
//
//  Created by Thomas Gray on 18/04/2022.
//

import SwiftUI

struct HomeView: View {
    
    @State var plusTapped = false
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            Text(self.viewModel.cookBook?.title ?? "")
            .navigationTitle("Cookbook")
        }
        .sheet(isPresented: .constant(self.viewModel.cookBook == nil)) {
            NewBookView(viewModel: viewModel)
        }
        
    }
}
