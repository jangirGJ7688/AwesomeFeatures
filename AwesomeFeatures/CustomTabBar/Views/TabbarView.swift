//
//  TabbarView.swift
//  AwesomeFeatures
//
//  Created by Ganpat Jangir on 12/01/25.
//

import SwiftUI

struct TabbarView: View {
    @State var selectedTab: Int = 0
    var body: some View {
        NavigationStack {
            ZStack {
                ZStack(alignment: .bottom) {
                    VStack {
                        TabView(selection: $selectedTab) {
                            HomeView()
                                .tag(0)
                            CalendarView()
                                .tag(1)
                            ChatView()
                                .tag(2)
                            ProfileView()
                                .tag(3)
                        }
                    }
                    VStack {
                        Spacer()
                        CustomTabBar(selectedTab: $selectedTab)
                    }
                }
            }
        }
    }
}

#Preview {
    TabbarView()
}
