//
//  UseerProfileViewModel.swift
//  Atelier9_MVVM
//
//  Created by CHEBIHI FAYCAL on 17/5/2023.
//

import Foundation

final class UserProfileViewModel : ObservableObject {
   
    @Published var users: [User] = []
    
    private let repository: UserRepositoryProtocol
    init(repository: UserRepositoryProtocol = UserRepository()) {
        self.repository = repository
    }
    
    func onAppear(){
        repository.fetchUser{ users in
            self.users = users
        }
    }
    
    func shuffleOrder(){
        users.shuffle()
    }
    
    func reverseOrder(){
        users.reverse()
    }
    
    func removeLastUser(){
        self.repository.deleteUser()
    }
    
    func removeFirstUser(){
        users.removeFirst()
    }
}
