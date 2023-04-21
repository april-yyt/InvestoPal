//
//  SignUpScreenView.swift
//  InvestoPal
//
//  Created by April Yang on 4/21/23.
//

import SwiftUI

struct SignUpScreenView: View {
    @State private var lastname: String = "" // by default it's empty
    @State private var firstname: String = "" // by default it's empty
    @State private var phonenumber: String = "" // by default it's empty
    @State private var email: String = "" // by default it's empty
    @State private var password: String = "" // by default it's empty
    var body: some View {
        ZStack {
//            LinearGradient(gradient: Gradient(colors: [lightBlue, lavender]), startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
            Color("BgColor").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                
                VStack {
                    Text("Create Account")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 3)
                    
                    Text("Hello, welcome to your new account!")
                        .padding(.bottom, 20)
                    
                    TextField("Last Name", text: $lastname)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical, 3)
                    
                    TextField("First Name", text: $firstname)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical, 3)
                    
                    TextField("Email Address", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical, 3)
                    

                    TextField("Password", text: $password)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical, 3)
                    
                    TextField("Enter Phone Number", text: $phonenumber)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical, 3)
                    
                    
                    SecondaryButton(title: "Register")
                    
                }
                
                Spacer()
                Divider()
                Spacer()
                
//                Text("You are completely safe.")
//                Text("Read our Terms & Conditions.")
//                    .foregroundColor(Color("PrimaryColor"))
                
                LogoLight()
                Spacer()
                
            }
            .padding()
        }
    }
}

struct SignUpScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}

