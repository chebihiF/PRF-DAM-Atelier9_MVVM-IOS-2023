//
//  UserApiService.swift
//  Atelier9_MVVM
//
//  Created by CHEBIHI FAYCAL on 17/5/2023.
//

import Foundation

protocol UserApiServiceProtocol{
    func fetchUser(completion: (User) -> Void)
}

final class UserApiService : UserApiServiceProtocol{
    func fetchUser(completion: (User) -> Void) {
        // TODO: fetch user from API ...
        completion(.init(username: "Chebihi Fayçal", email: "F.Chebihi@gmail.com"))
    }
}
