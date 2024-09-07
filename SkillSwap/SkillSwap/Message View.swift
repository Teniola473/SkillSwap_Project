//
//  Message View.swift
//  SkillSwap
//
//  Created by Teniola Oluwaseyitan on 9/3/24.
//

import SwiftUI

struct MessagesView: View {
    let users = [
        "Alice", "Bob", "Charlie", "David", "Eve",
        "Faythe", "Grace", "Heidi", "Ivan", "Judy"
    ]
    
    var body: some View {
        ZStack {
            // Gradient background
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            NavigationView {
                List {
                    ForEach(0..<users.count, id: \.self) { index in
                        NavigationLink(destination: ChatView(userName: users[index])) {
                            HStack {
                                Image(systemName: "person.circle")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.white)
                                VStack(alignment: .leading) {
                                    Text(users[index])
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    Text("Last message preview...")
                                        .font(.subheadline)
                                        .foregroundColor(.white.opacity(0.7))
                                }
                            }
                            .padding()
                            .background(Color.black.opacity(0.2))
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        }
                    }
                }
                .navigationTitle("Messages")
                
                .background(Color.clear)
            }
        }
    }
}

struct ChatView: View {
    let userName: String
    @State private var messageText = ""
    @State private var messages = [
        "Hey there!", "How are you?", "I'm good, thanks!", "What about you?",
        "I'm doing well!", "Great to hear!", "Do you have any plans for the weekend?",
        "Not really, just relaxing.", "That sounds nice!", "Yes, it is."
    ]
    
    var body: some View {
        ZStack {
            // Gradient background
            LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                ScrollView {
                    VStack(alignment: .leading, spacing: 10) {
                        ForEach(messages, id: \.self) { message in
                            HStack {
                                if message.contains("!") {
                                    Spacer()
                                    Text(message)
                                        .padding()
                                        .background(Color.blue.opacity(0.7))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .padding(.horizontal)
                                } else {
                                    Text(message)
                                        .padding()
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(10)
                                        .padding(.horizontal)
                                    Spacer()
                                }
                            }
                        }
                    }
                }
                HStack {
                    TextField("Enter message", text: $messageText)
                        .padding()
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(10)
                    Button(action: {
                        if !messageText.isEmpty {
                            messages.append(messageText)
                            messageText = ""
                        }
                    }) {
                        Image(systemName: "arrow.up.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .padding()
                    }
                }
                .padding()
            }
            .navigationTitle(userName)
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(userName: "Alice")
    }
}

