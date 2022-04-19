//
//  NewBookView.swift
//  Cook Book
//
//  Created by Thomas Gray on 18/04/2022.
//

import SwiftUI

struct NewBookView: View {
    
    @Environment(\.self.presentationMode) var presentationMode
    @StateObject var viewModel: HomeViewModel
    @State var title: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "plus")
                        .resizable()
                        .padding(2)
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color.gray)
                        .background(Color.white)
                        .clipShape(Circle())
                        .rotationEffect(.degrees(45))
                }
                .padding(.top, 65)
                .padding(.trailing, 20)
            }
            VStack {
                Spacer()
                TextField("Enter cookbook name...", text: $title)
                    .padding(.all)
                    .background(Color(red: 255/255, green: 235/255, blue: 156/255))
                    .padding(.horizontal, 50)
                
                Button {
                    self.viewModel.cookBook = CookBook(title: title)
                } label: {
                    Text("Create recipe book")
                }
                Spacer()
            }
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color(red: 255/255, green: 250/255, blue: 240/255))
        .interactiveDismissDisabled()
    }
}
