//
//  signup login.swift
//  SkillSwap
//
//  Created by Teniola Oluwaseyitan on 9/2/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isLoggedIn = false // Track login state
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all) // Background color
                
                VStack(alignment: .leading) {
                    Spacer()
                    
                    // SkillSwap Logo
                    Image(systemName: "person.2.circle.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.top, 40)
                    
                    Text("Welcome to SkillSwap")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.top, 10)
                    
                    Text("Learn and share skills effortlessly.")
                        .padding(.bottom, 20)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    HStack {
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.gray)
                        TextField("Email", text: $email)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(8)
                            .padding(.horizontal)
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        HStack {
                            Image(systemName: "lock.fill")
                                .foregroundColor(.gray)
                            SecureField("Password", text: $password)
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(8)
                                .padding(.horizontal)
                        }
                        
                        NavigationLink(destination: ForgotPasswordView()) {
                            Text("Forgot Password?")
                                .foregroundColor(.blue)
                                .padding(.trailing, 16)
                        }
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        // Simulate login success
                        isLoggedIn = true
                    }) {
                        Text("Login")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .shadow(radius: 10)
                    }
                    .padding(.horizontal)
                    .padding(.top, 10)
                    
                    // NavigationLink to HomepageView
                    NavigationLink(destination: HomepageView(), isActive: $isLoggedIn) {
                        EmptyView() // Invisible link, activated when isLoggedIn is true
                    }
                    
                    Spacer()
                    
                    HStack {
                        line
                        Text("or login with")
                            .foregroundColor(.gray)
                        line
                    }
                    .padding(.vertical)
                    
                    Spacer()
                    Spacer()
                    
                    HStack {
                        socialLoginButton(imageName: "facebook", color: Color.blue)
                        socialLoginButton(imageName: "google", color: Color.red)
                        socialLoginButton(imageName: "apple", color: Color.black)
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                    
                    HStack {
                        Text("Don't have an account on SkillSwap?")
                        NavigationLink(destination: CreateAccountView()) {
                            Text("Create account")
                                .foregroundColor(.blue)
                        }
                        .navigationBarBackButtonHidden(true) // Hide back button for CreateAccountView
                    }
                    .padding()
                }
            }
            .navigationBarHidden(true) // Hide navigation bar for LoginView
        }
    }
    
    private var line: some View {
        VStack {
            Divider()
                .background(Color.gray)
        }
        .padding(.horizontal)
    }
    
    private func socialLoginButton(imageName: String, color: Color) -> some View {
        Button(action: {
            // Handle social login action
        }) {
            HStack {
                Image(systemName: imageName)
                Text(imageName.capitalized)
            }
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(color)
            .cornerRadius(8)
            .shadow(radius: 5)
        }
    }
}
struct ForgotPasswordView: View {
    @State private var emailOrPhone = ""
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all) // Background color
            
            VStack(alignment: .leading) {
                Text("Forgot Password")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .padding([.top, .leading], 20)
                
                Text("Enter your email or phone, we will send the verification code to reset your password.")
                    .foregroundColor(.white)
                    .padding([.top, .leading, .trailing], 20)
                    .padding(.bottom, 20)
                Spacer()
                
                TextField("Email or Phone", text: $emailOrPhone)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .foregroundColor(.white)
                    .accentColor(.white)
                
                NavigationLink(destination: ResetWithPhoneNumberView()) {
                    Text("Reset with phone number")
                        .foregroundColor(.blue)
                        .padding(.leading, 20)
                        .padding(.top, 10)
                }
                Spacer()
                Spacer()
                
                Button(action: {
                    // Handle request code action
                }) {
                    Text("Request Code")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(8)
                }
                .padding(.horizontal)
                .padding(.top, 20)
                
                Spacer()
            }
        }
    }
}

struct ResetWithPhoneNumberView: View {
    @State private var phoneNumber = ""
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all) // Background color
            
            VStack(alignment: .leading) {
                Text("Reset with Phone Number")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .padding([.top, .leading], 20)
                
                Text("Enter your phone number, we will send the verification code to reset your password.")
                    .foregroundColor(.white)
                    .padding([.top, .leading, .trailing], 20)
                    .padding(.bottom, 20)
                Spacer()
                
                TextField("Phone Number", text: $phoneNumber)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .foregroundColor(.white)
                    .accentColor(.white)
                Spacer()
                Spacer()
                
                Button(action: {
                    // Handle request code action
                }) {
                    Text("Request Code")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(8)
                }
                .padding(.horizontal)
                .padding(.top, 20)
                
                Spacer()
            }
        }
    }
}


// Placeholder for HomepageView
struct HomePageView: View {
    var body: some View {
        Text("Welcome to the Homepage!")
            .font(.largeTitle)
            .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
