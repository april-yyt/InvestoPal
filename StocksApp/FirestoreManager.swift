//
//  FirestoreManager.swift
//  StocksApp
//
//  Created by April Yang on 5/1/23.
//

import Foundation
import Firebase
import FirebaseFirestore

class FirestoreManager {
    private let db = Firestore.firestore()

    // Save user data
    func saveUserData(user: UserProfile, completion: @escaping (Result<Void, Error>) -> Void) {
        let userData: [String: Any] = [
            "username": user.username,
            "email": user.email,
            "location": user.location,
            "imageUrl": user.imageUrl
        ]

        db.collection("users").document(user.email).setData(userData) { error in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(()))
            }
        }
    }

    // Fetch user data
    func fetchUserData(email: String, completion: @escaping (Result<UserProfile, Error>) -> Void) {
        db.collection("users").document(email).getDocument { snapshot, error in
            if let error = error {
                completion(.failure(error))
            } else if let snapshot = snapshot, let data = snapshot.data() {
                let user = UserProfile(
                    username: data["username"] as? String ?? "",
                    email: data["email"] as? String ?? "",
                    location: data["location"] as? String ?? "",
                    imageUrl: data["imageUrl"] as? String ?? ""
                )
                completion(.success(user))
            } else {
                completion(.failure(NSError(domain: "No data found", code: -1, userInfo: nil)))
            }
        }
    }

    // Save user's selected stocks
    func saveSelectedStocks(email: String, stocks: [String], completion: @escaping (Result<Void, Error>) -> Void) {
        db.collection("users").document(email).updateData(["selectedStocks": stocks]) { error in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(()))
            }
        }
    }

    // Fetch user's selected stocks
    func fetchSelectedStocks(email: String, completion: @escaping (Result<[String], Error>) -> Void) {
        db.collection("users").document(email).getDocument { snapshot, error in
            if let error = error {
                completion(.failure(error))
            } else if let snapshot = snapshot, let data = snapshot.data(), let stocks = data["selectedStocks"] as? [String] {
                completion(.success(stocks))
            } else {
                completion(.failure(NSError(domain: "No data found", code: -1, userInfo: nil)))
            }
        }
    }
}
