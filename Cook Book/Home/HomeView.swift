//
//  HomeView.swift
//  Cook Book
//
//  Created by Thomas Gray on 18/04/2022.
//

import SwiftUI

struct HomeView: View {
    
    @State var plusTapped = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button {
                    self.plusTapped.toggle()
                } label: {
                    Image(systemName: "plus")
                        .resizable()
                        .padding(10)
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.gray)
                        .background(Color.white)
                        .clipShape(Circle())
                }.sheet(isPresented: $plusTapped) {
                    NewBookView()
                }
            }
            .navigationTitle("Cookbook")
        }
    }
}
