//
//  AccountView.swift
//  InvestoPal
//
//  Created by April Yang on 5/1/23.
//
//
//import SwiftUI
//
//struct AccountView: View {
//    var body: some View {
//        Text("Account")
//            .navigationBarTitle("Account")
//    }
//}
//
//struct AccountView_Previews: PreviewProvider {
//    static var previews: some View {
//        AccountView()
//    }
//}


import SwiftUI

struct UserProfile {
    let username: String
    let email: String
    let location: String
    let imageUrl: String
}

struct AccountView: View {
    let userProfile = UserProfile(username: "John Doe", email: "johndoe@example.com", location: "San Francisco, CA", imageUrl: "https://via.placeholder.com/150")

    var body: some View {
        VStack {
            // User image
            AsyncImage(url: URL(string: userProfile.imageUrl)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .padding(.top, 50)

            // User details in bars
            VStack(alignment: .leading, spacing: 12) {
                UserInfoBar(title: "Username", value: userProfile.username)
                UserInfoBar(title: "Email", value: userProfile.email)
                UserInfoBar(title: "Location", value: userProfile.location)
            }
            .padding(.top, 30)
            .padding(.horizontal, 16)

            Spacer()
        }
    }
}

struct UserInfoBar: View {
    let title: String
    let value: String

    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
                .foregroundColor(.primary)

            Spacer()

            Text(value)
                .font(.body)
                .foregroundColor(.secondary)
        }
        .padding(.vertical, 8)
        .padding(.horizontal)
        .background(Color(.systemGroupedBackground))
        .cornerRadius(8)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AccountView()
                .navigationBarTitle("Account", displayMode: .inline)
        }
    }
}
