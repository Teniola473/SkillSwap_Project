//
//  Community View.swift
//  SkillSwap
//
//  Created by Teniola Oluwaseyitan on 9/3/24.
//

import SwiftUI

struct CommunityView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10, id:\.self) { _ in
                    NavigationLink(destination: ForumDetailView()) {
                        VStack(alignment: .leading) {
                            Text("Forum Topic Title")
                                .font(.headline)
                            Text("Short description or preview of the topic...")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Community")
        }
    }
}

struct ForumDetailView: View {
    var body: some View {
        VStack {
            Text("Forum Topic Title")
                .font(.largeTitle)
                .padding()
            ScrollView {
                Text("Full description and discussion of the forum topic...")
                    .padding()
            }
            Spacer()
            HStack {
                TextField("Enter comment", text: .constant(""))
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                Button(action: {
                    // Post comment
                }) {
                    Image(systemName: "arrow.up.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding()
                }
            }
            .padding()
        }
        .navigationTitle("Forum Topic")
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}

struct ForumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ForumDetailView()
    }
}


