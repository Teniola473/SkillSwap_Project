import SwiftUI

struct CreateAccountView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var password = ""
    @State private var age = ""
    @State private var countryCode = ""
    @State private var acceptTerms = false
    @State private var accountCreated = false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all) // Background color
            
            VStack(alignment: .leading, spacing: 20) {
                if accountCreated {
                    AccountCreatedView() // Displays the AccountCreatedView if the account is created
                } else {
                    Text("Create Account")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .bold()
                        .padding([.top, .leading], 20)
                    
                    Text("Join SkillSwap to share and learn new skills!")
                        .foregroundColor(.gray)
                        .padding([.leading, .trailing], 20)
                    
                    Group {
                        Text("First Name")
                            .foregroundColor(.gray)
                            .padding([.leading, .trailing], 20)
                        HStack {
                            Image(systemName: "person.fill")
                                .foregroundColor(.gray)
                            TextField("", text: $firstName)
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(8)
                        }
                        .padding(.horizontal)
                        
                        Text("Last Name")
                            .foregroundColor(.gray)
                            .padding([.leading, .trailing], 20)
                        HStack {
                            Image(systemName: "person.fill")
                                .foregroundColor(.gray)
                            TextField("", text: $lastName)
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(8)
                        }
                        .padding(.horizontal)
                        
                        Text("Phone")
                            .foregroundColor(.gray)
                            .padding([.leading, .trailing], 20)
                        HStack {
                            TextField("Code", text: $countryCode)
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(8)
                            TextField("Number", text: $phone)
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(8)
                        }
                        .padding(.horizontal)
                        
                        Text("Age")
                            .foregroundColor(.gray)
                            .padding([.leading, .trailing], 20)
                        HStack {
                            Image(systemName: "calendar")
                                .foregroundColor(.gray)
                            TextField("", text: $age)
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(8)
                        }
                        .padding(.horizontal)
                        
                        Text("Email")
                            .foregroundColor(.gray)
                            .padding([.leading, .trailing], 20)
                        HStack {
                            Image(systemName: "envelope.fill")
                                .foregroundColor(.gray)
                            TextField("", text: $email)
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(8)
                        }
                        .padding(.horizontal)
                        
                        Text("Password")
                            .foregroundColor(.gray)
                            .padding([.leading, .trailing], 20)
                        HStack {
                            Image(systemName: "lock.fill")
                                .foregroundColor(.gray)
                            SecureField("", text: $password)
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(8)
                        }
                        .padding(.horizontal)
                    }
                    
                    HStack {
                        Button(action: {
                            acceptTerms.toggle()
                        }) {
                            Image(systemName: acceptTerms ? "checkmark.square" : "square")
                                .foregroundColor(.blue)
                        }
                        Text("I accept the")
                            .foregroundColor(.gray)
                        NavigationLink(destination: TermsAndConditionsView()) {
                            Text("terms and conditions")
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(.horizontal)
                    
                    Button(action: {
                        // Simulate create account action for demo
                        self.accountCreated.toggle()
                    }) {
                        Text("Create Account")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .shadow(radius: 10)
                    }
                    .padding(.horizontal)
                    .padding(.top, 20)
                    
                    Spacer()
                    
                    HStack {
                        Text("Already have an account?")
                            .foregroundColor(.gray)
                        Button(action: {
                            presentationMode.wrappedValue.dismiss() // Dismiss the view
                        }) {
                            Text("Go back")
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct AccountCreatedView: View {
    var body: some View {
        VStack {
            // Placeholder for app logo
            Image(systemName: "person.2.circle.fill") // Replace with your image
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
                .padding(.top, 40)
            
            Text("Successfully Created")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding()
            
            Text("You can now share and learn skills with ease!")
                .foregroundColor(.gray)
                .padding()
            
            NavigationLink(destination: HomepageView()) { // Navigate to HomepageView
                Text("Let's Explore")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(8)
                    .shadow(radius: 10)
            }
            .padding()
        }
    }
}

struct TermsAndConditionsView: View {
    var body: some View {
        Text("Terms and Conditions content goes here.")
            .foregroundColor(.gray)
            .padding()
            .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}

struct SkillSwapCreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
