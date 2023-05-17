//
//  UserApiService.swift
//  Atelier9_MVVM
//
//  Created by CHEBIHI FAYCAL on 17/5/2023.
//

import Foundation

protocol UserApiServiceProtocol{
    func fetchUser(completion: ([User]) -> Void)
    func deleteUser()
}

final class UserApiService : UserApiServiceProtocol{
    
    var users = [
        User(username: "Jon Snow", email: "j.snow@gmail.com"),
        User(username: "Robert Snow", email: "r.snow@gmail.com"),
        User(username: "Cersei Lannister", email: "Cersei@gmail.com"),
        User(username: "Daenarys targaryen", email: "Daenarys@gmail.com"),
    ]
    
    func fetchUser(completion: ([User]) -> Void) {
        // TODO: fetch user from API ...
        completion(.init(
            users
        ))
    }
    
    func deleteUser() {
        users.removeLast()
    }
}
