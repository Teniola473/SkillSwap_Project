//
//  OnboardingView.swift
//  SkillSwap
//
//  Created by Teniola Oluwaseyitan on 9/2/24.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Background color
                Color.black
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer() // Spacer to push content to the top
                    Image("SkillSwap")
                    Text("Welcome")
                        .font(.system(size: 50))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(color: .gray, radius:10, x:0, y:7)
                        .padding(3)
                    Text("to")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(color: .gray, radius:10, x: 0, y:7)
                        .padding(3)
                    Text("SkillSwap")
                        .font(.system(size: 60))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(color: .gray, radius:10, x: 0, y:7)
                        .padding(3)
                    
                    
                    Spacer() // Spacer to add some space between text and button
                    
                    NavigationLink(destination: LoginView()) {
                        Text("Get Started")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 50) // Adjust the bottom padding as needed
                }
                .padding(.horizontal) // Add horizontal padding to the VStack
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

