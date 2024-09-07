//
//  SplashScreenView.swift
//  SkillSwap
//
//  Created by Teniola Oluwaseyitan on 9/2/24.
//

//
//  ContentView.swift
//  SkillSwap
//
//  Created by Teniola Oluwaseyitan on 8/20/24.
//
import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var scale: CGFloat = 1.5 // Start with a larger scale
    
    var body: some View {
        ZStack {
            // Background color
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                if isActive {
                    OnboardingView()
                } else {
                    Text("SkillSwap")
                        .font(.system(size: 50))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(color: .gray, radius: 10, x: 0, y: 7)
                        .padding(3)
                        .bold()
                        .scaleEffect(scale) // Apply the scale effect
                        .onAppear {
                            withAnimation(.easeInOut(duration: 2)) { // Add animation
                                scale = 1.0 // Reduce the scale to create the zoom-out effect
                            }
                        }
                    // Add more splash screen UI here
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
