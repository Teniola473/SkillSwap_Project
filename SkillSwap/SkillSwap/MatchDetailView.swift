//
//  MatchDetailView.swift
//  SkillSwap
//
//  Created by Teniola Oluwaseyitan on 9/2/24.
//

import SwiftUI

struct MatchDetailView: View {
    var skillSwap: (offered: String, wanted: String)
    @State private var isConnected = false
    
    var body: some View {
        ZStack {
            // Gradient background
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.purple]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                Text("Skill Offered: \(skillSwap.offered)")
                    .font(.largeTitle)
                    .padding(.horizontal)
                    .padding(.top)
                Text("Skill Wanted: \(skillSwap.wanted)")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.top, 2)
                Text("Description: Looking for someone to teach me \(skillSwap.wanted) in exchange for \(skillSwap.offered) lessons. I am experienced in \(skillSwap.offered.lowercased()).")
                    .foregroundColor(.white.opacity(0.9))
                    .padding(.horizontal)
                    .padding(.top, 2)
                Spacer()
                Button(action: {
                    // Handle skill match
                    self.isConnected = true
                }) {
                    Text("Connect")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]),
                                                   startPoint: .leading,
                                                   endPoint: .trailing))
                        .cornerRadius(10)
                        .shadow(radius: 10)
                        .scaleEffect(isConnected ? 1.1 : 1.0)
                        .animation(.spring(), value: isConnected)
                        .frame(maxWidth: .infinity)
                }
                .padding()
                .sheet(isPresented: $isConnected) {
                    SuccessView()
                }
            }
            .padding(.vertical)
        }
    }
}

struct SuccessView: View {
    var body: some View {
        ZStack {
            // Gradient background
            LinearGradient(gradient: Gradient(colors: [Color.green, Color.black]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("You have successfully connected with this user!")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                    .padding(.bottom, 50)
            }
        }
    }
}

struct MatchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MatchDetailView(skillSwap: (offered: "Cooking", wanted: "Guitar Lessons"))
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}

