//
//  WelcomeScreenView.swift
//  InvestoPal
//
//  Created by April Yang on 4/21/23.
//

import SwiftUI

// Colors!
let lightBlue = Color(red: 135/255, green: 206/255, blue: 250/255)
let lavender = Color(red: 220/255, green: 208/255, blue: 255/255)
let fontColor1 = Color(red: 254/255, green: 219/255, blue: 253/255)


struct WelcomeScreenView: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [lightBlue, lavender]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Logo()
                    .padding(.top, -100)
                    .padding(.bottom, 50)
                    Spacer()
                    PrimaryButton(title: "Get Started")
                    
                    NavigationLink(
                        destination: SignInScreenView().navigationBarHidden(true),
                        label: {
                            Text("Log In")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ButtonColor1"))
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                .padding(.bottom, 30)
                        })
                        .navigationBarHidden(true)
                    
//                    HStack {
//                        Text("New around here? ")
//                        Text("Sign in")
//                            .foregroundColor(Color("PrimaryColor"))
//                    }
                }
                .padding()
            }
        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
