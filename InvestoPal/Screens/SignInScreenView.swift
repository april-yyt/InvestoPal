//
//  SignInScreenView.swift
//  InvestoPal
//
//  Created by April Yang on 4/21/23.
//

import SwiftUI

struct SignInScreenView: View {
    @State private var email: String = "" // by default it's empty
    @State private var password: String = "" // by default it's empty
    @State private var phonenumber: String = "" // by default it's empty
    @State private var signInOption = 0 // 0 for email, 1 for phone
    @State private var isLoggedIn = false

    var body: some View {
        ZStack {
//            LinearGradient(gradient: Gradient(colors: [lightBlue, lavender]), startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
            Color("BgColor").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                
                VStack {
                    Text("Login Account")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 3)
                    
                    Text("Hello, welcome back to your account!")
                        .padding(.bottom, 30)
                    
                    HStack {
                                            SegmentedPicker(options: ["Email", "Phone"], selection: $signInOption)
                                        }
                                        .padding(.horizontal)
                                        .padding(.top)
                    
                    if signInOption == 0 { // Email option selected
                                            TextField("Email address", text: $email)
                                                .font(.title3)
                                                .padding()
                                                .frame(maxWidth: .infinity)
                                                .background(Color.white)
                                                .cornerRadius(10.0)
                                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                                .padding(.top)
                        
                                            TextField("Password", text: $password)
                                                .font(.title3)
                                                .padding()
                                                .frame(maxWidth: .infinity)
                                                .background(Color.white)
                                                .cornerRadius(10.0)
                                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                                .padding(.vertical, 3)
                                            
                                            Text("Forgot password?")
                                                .foregroundColor(Color.black.opacity(0.4))
                                                .multilineTextAlignment(.trailing)
                                                .padding(.bottom)
                        
//                                            NavigationLink(
//                                                destination: HomeScreenView(),
//                                                isActive: $isLoggedIn,
//                                                label: {
//                                                    SecondaryButton(title: "Login")
//                                                })
                        
                                        NavigationLink(
                                            destination: HomeScreenView(),
                                            label: {
                                                SecondaryButton(title: "Login")
                                            })
                                            .statusBarHidden()

//                                            SecondaryButton(title: "Login")
                        
                                        } else { // Phone option selected
                                            TextField("Phone number", text: $phonenumber)
                                                .font(.title3)
                                                .padding()
                                                .frame(maxWidth: .infinity)
                                                .background(Color.white)
                                                .cornerRadius(10.0)
                                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                                .padding(.top)
                                            
                                            SecondaryButton(title: "Send OTP")
                                            
                                        }
                    
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
                
                LogoLight()
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



