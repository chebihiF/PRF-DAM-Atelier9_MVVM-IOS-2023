//
//  UserRepository.swift
//  Atelier9_MVVM
//
//  Created by CHEBIHI FAYCAL on 17/5/2023.
//

import Foundation

protocol UserRepositoryProtocol {
    func fetchUser(completion: (User) -> Void) // IOC
}

final class UserRepository: UserRepositoryProtocol {
    
    private let apiService: UserApiServiceProtocol // Get Data from API
    
    init(apiService: UserApiServiceProtocol = UserApiService()){ //IOC
        self.apiService = apiService
    }
    
    func fetchUser(completion: (User) -> Void) {
        apiService.fetchUser(completion: completion)
    }
}

