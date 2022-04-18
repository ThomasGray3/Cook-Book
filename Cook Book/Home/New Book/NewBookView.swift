//
//  NewBookView.swift
//  Cook Book
//
//  Created by Thomas Gray on 18/04/2022.
//

import SwiftUI

struct NewBookView: View {
    
    @Environment(\.self.presentationMode) var presentationMode
    
    var body: some View {
        Button {
            self.presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "plus")
                .resizable()
                .padding(10)
                .frame(width: 100, height: 100)
                .foregroundColor(Color.gray)
                .background(Color.white)
                .clipShape(Circle())
                .rotationEffect(.degrees(45))
        }
    }
}
