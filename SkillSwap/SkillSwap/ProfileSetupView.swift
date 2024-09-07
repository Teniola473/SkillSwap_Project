//
//  ProfileSetupView.swift
//  SkillSwap
//
//  Created by Teniola Oluwaseyitan on 9/3/24.
//

import SwiftUI

struct ProfileSetupView: View {
    @Binding var isPresented: Bool
    @Binding var yourName: String
    @Binding var bio: String
    @Binding var skillsOffered: String
    @Binding var skillsWanted: String
    @Binding var availability: String
    @Binding var location: String
    
    var body: some View {
        VStack {
            Text("Profile Setup")
                .font(.largeTitle)
                .padding(.top, 50)
            
            Image(systemName: "person.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 120)
                .padding()
            
            TextField("Your Name", text: $yourName)
                .font(.title)
                .foregroundColor(.blue)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            TextField("Bio", text: $bio)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            TextField("Skills Offered", text: $skillsOffered)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            TextField("Skills Wanted", text: $skillsWanted)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            TextField("Availability", text: $availability)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            TextField("Location", text: $location)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            Button(action: {
                withAnimation {
                    isPresented = false
                }
            }) {
                Text("Save Profile")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 20)
        .padding(.horizontal, 40)
        .padding(.vertical, 50)
    }
}

struct ProfileSetupView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSetupView(isPresented: .constant(true), yourName: .constant(""), bio: .constant(""), skillsOffered: .constant(""), skillsWanted: .constant(""), availability: .constant(""), location: .constant(""))
    }
}

