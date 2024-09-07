//
//  Profile View.swift
//  SkillSwap
//
//  Created by Teniola Oluwaseyitan on 9/3/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var showSetup = false
    @State private var yourName=""
    @State private var bio = "A short bio about yourself."
    @State private var skillsOffered = "Cooking, Photography"
    @State private var skillsWanted = "Guitar Lessons, Web Development"
    @State private var availability = "Weekends"
    @State private var location = "San Francisco, CA"
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.indigo, Color.black]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .foregroundColor(.white)
                    .padding(.top, 50)
                
                Text("Your Name")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.top, 10)
                
                Text(bio)
                    .font(.body)
                    .foregroundColor(.white.opacity(0.7))
                    .padding(.horizontal)
                    .padding(.top, 10)
                
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text("Skills Offered:")
                            .font(.headline)
                            .foregroundColor(.white)
                        Spacer()
                        Text(skillsOffered)
                            .foregroundColor(.white.opacity(0.7))
                    }
                    
                    HStack {
                        Text("Skills Wanted:")
                            .font(.headline)
                            .foregroundColor(.white)
                        Spacer()
                        Text(skillsWanted)
                            .foregroundColor(.white.opacity(0.7))
                    }
                    
                    HStack {
                        Text("Availability:")
                            .font(.headline)
                            .foregroundColor(.white)
                        Spacer()
                        Text(availability)
                            .foregroundColor(.white.opacity(0.7))
                    }
                    
                    HStack {
                        Text("Location:")
                            .font(.headline)
                            .foregroundColor(.white)
                        Spacer()
                        Text(location)
                            .foregroundColor(.white.opacity(0.7))
                    }
                }
                .padding()
                .background(Color.black.opacity(0.3))
                .cornerRadius(10)
                .padding()
                
                Spacer()
            }
            
            if showSetup {
                ProfileSetupView(isPresented: $showSetup, yourName: $yourName, bio: $bio, skillsOffered: $skillsOffered, skillsWanted: $skillsWanted, availability: $availability, location: $location)
                    .transition(.move(edge: .trailing))
            }
            
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Button(action: {
                        withAnimation {
                            showSetup.toggle()
                        }
                    }) {
                        Image(systemName: "chevron.right.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                            .rotationEffect(.degrees(showSetup ? 180 : 0))
                    }
                    .padding()
                }
            }
        }
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

