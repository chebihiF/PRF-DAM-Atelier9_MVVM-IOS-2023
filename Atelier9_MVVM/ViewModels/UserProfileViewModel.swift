//
//  UseerProfileViewModel.swift
//  Atelier9_MVVM
//
//  Created by CHEBIHI FAYCAL on 17/5/2023.
//

import Foundation

final class UserProfileViewModel : ObservableObject {
    @Published var username = ""
    @Published var email = ""
    
    private let repository: UserRepositoryProtocol
    init(repository: UserRepositoryProtocol = UserRepository()) {
        self.repository = repository
    }
    
    func onAppear(){
        repository.fetchUser{ user in
            self.username = user.username
            self.email = user.email.lowercased()
        }
    }
}
