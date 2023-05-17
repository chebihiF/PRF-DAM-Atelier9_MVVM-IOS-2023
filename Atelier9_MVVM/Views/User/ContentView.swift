//
//  ContentView.swift
//  Atelier9_MVVM
//
//  Created by CHEBIHI FAYCAL on 17/5/2023.
//

import SwiftUI

struct UserProfileView: View {
    
    @StateObject private var viewModel = UserProfileViewModel()
    
    var body: some View {
        VStack{
            HStack{
                Text(viewModel.username)
                Spacer()
            }
            HStack{
                Text(viewModel.email)
                Spacer()
            }
            Spacer()
        }
        .padding(25)
        .onAppear{
            viewModel.onAppear()
        }
        .navigationTitle("Profile")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
