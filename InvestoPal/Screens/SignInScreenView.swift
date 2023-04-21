//
//  SignInScreenView.swift
//  InvestoPal
//
//  Created by April Yang on 4/21/23.
//

import SwiftUI


import SwiftUI

struct SignInScreenView: View {
    @State private var email: String = "" // by default it's empty
    @State private var password: String = "" // by default it's empty
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [lightBlue, lavender]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                VStack {
                    Text("Login Account")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 3)
                    
                    Text("Hello, welcome back to your account!")
                        .padding(.bottom, 30)
                    
                    TextField("Email address", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.top)

                    TextField("Password", text: $password)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical, 3)
                    
                    Text("Forgot password?")
                        .foregroundColor(Color.black.opacity(0.4))
                        .multilineTextAlignment(.trailing)
                        .padding(.bottom)
                    
                    
                    SecondaryButton(title: "Login")
                    
                    Text("Or sign up with")
                        .foregroundColor(Color.black.opacity(0.4))
                    
                    HStack{
                        SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "apple")), text: Text("Apple"))
                        
                        SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "google")), text: Text("Google").foregroundColor(Color("PrimaryColor")))
                    }.padding(.vertical)
                    
                    HStack{
                        Text("Not registered yet?")
                            .foregroundColor(Color.black.opacity(0.4))
                        Text("Create Account")
                            .foregroundColor(Color.black)
                    }
                    
                    
            
                    
                }
                
                Spacer()
                Divider()
                Spacer()
//                Text("You are completely safe.")
//                Text("Read our Terms & Conditions.")
//                    .foregroundColor(Color("PrimaryColor"))
                
                Logo()
                Spacer()
                
            }
            .padding()
        }
    }
}

struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}


struct SocalLoginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
    }
}
