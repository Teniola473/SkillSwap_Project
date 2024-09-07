//
//  DiscoverView.swift
//  SkillSwap
//
//  Created by Teniola Oluwaseyitan on 9/2/24.
//

import SwiftUI

struct DiscoverView: View {
    // Sample data for the list
    let skillSwaps = [
        (offered: "Cooking", wanted: "Guitar Lessons"),
        (offered: "Photography", wanted: "Web Development"),
        (offered: "Gardening", wanted: "Piano Lessons"),
        (offered: "Painting", wanted: "Yoga Instruction"),
        (offered: "Baking", wanted: "French Language"),
        // Add more skill swaps here
    ]
    
    var body: some View {
        ZStack {
            // Gradient background
            LinearGradient(gradient: Gradient(colors: [Color.pink, Color.orange]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            NavigationView {
                List {
                    ForEach(skillSwaps, id: \.offered) { swap in
                        NavigationLink(destination: MatchDetailView(skillSwap: swap)) {
                            listItemView(for: swap)
                        }
                    }
                }
                .navigationTitle("Discover")
            
                .background(Color.clear)
            }
        }
    }
    
    // Function to create a list item view
    private func listItemView(for swap: (offered: String, wanted: String)) -> some View {
        HStack {
            Image(systemName: "arrow.swap") // Add relevant icon
                .font(.title)
                .foregroundColor(.white)
            VStack(alignment: .leading) {
                Text("Skill Offered: \(swap.offered)")
                    .font(.headline)
                    .foregroundColor(.white)
                Text("Skill Wanted: \(swap.wanted)")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.7))
            }
            .padding()
        }
        .background(Color.black.opacity(0.2))
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding(.vertical, 5)
        .scaleEffect(1.0)
        .animation(.spring(), value: 1.0)
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
