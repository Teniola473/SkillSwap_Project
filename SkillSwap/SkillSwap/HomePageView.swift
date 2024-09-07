//
//  HomePageView.swift
//  SkillSwap
//
//  Created by Teniola Oluwaseyitan on 9/2/24.
//

import SwiftUI

struct HomepageView: View {
    var body: some View {
                TabView {
                    DiscoverView()
                        .tabItem {
                            Label("Discover", systemImage: "magnifyingglass")
                        }
                    MessagesView()
                        .tabItem {
                            Label("Messages", systemImage: "message")
                        }
                    ProfileView()
                        .tabItem {
                            Label("Profile", systemImage: "person")
                        }
                    CommunityView()
                        .tabItem {
                            Label("Community", systemImage: "bubble.left.and.bubble.right")
                        }
                }
            
        
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}

