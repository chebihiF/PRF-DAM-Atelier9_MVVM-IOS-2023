//
//  ContentView.swift
//  Atelier9_MVVM
//
//  Created by CHEBIHI FAYCAL on 17/5/2023.
//

import SwiftUI

struct UserProfileView: View {
    
    @ObservedObject private var viewModel = UserProfileViewModel()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView{
                ForEach(viewModel.users, id: \.username) { user in
                    HStack{
                        Text(user.username).font(.title2).fontWeight(.bold)
                        Spacer()
                        Text(user.email)
                    }.padding(12)
                }
            }.onAppear{
                viewModel.onAppear()}
            Menu("Menu"){
                Button("Reverse", action: {viewModel.reverseOrder()})
                Button("Suffle", action: {viewModel.shuffleOrder()})
                Button("Remove Last", action: {viewModel.removeLastUser()})
                Button("Remove First", action: {viewModel.removeFirstUser()})
            }
        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
