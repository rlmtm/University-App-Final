//
//  APIService.swift
//  MySecureApp
//
//  Created by MILLER, Maximilian on 29/12/2021.
//

import Foundation
import SwiftUI

class APIService {
    static let shared = APIService()

    func login(credentials: Credentials,
               completion: @escaping (Result<Bool,Authentication.AuthenticationError>) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            print(credentials.username)
            print(credentials.user)
            print(credentials.password)
            print(credentials.pass)
            if credentials.username == "MaxM" && credentials.password == "Password123" || credentials.username == credentials.user && credentials.password == credentials.pass {
                completion(.success(true))
            } else {
                completion(.failure(.invalidCredentials))
            }
        }
    }
}

//(credentials.username == "User" && credentials.password == "pass") ||
//credentials.username == credentials.user && credentials.password == credentials.pass)
