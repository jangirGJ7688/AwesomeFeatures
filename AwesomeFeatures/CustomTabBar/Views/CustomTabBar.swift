//
//  CustomTabBar.swift
//  AwesomeFeatures
//
//  Created by Ganpat Jangir on 05/01/25.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                ForEach((TabbedItems.allCases), id: \.self) { item in
                    Button {
                        withAnimation {
                            selectedTab = item.rawValue
                        }
                    } label: {
                        CustomTabItem(imageName: item.iconName, title: item.title, isActive: item.rawValue == selectedTab)
                    }
                }
            }
            .padding(6)
        }
        .frame(height: 70)
        .background(.blue.opacity(0.2))
        .cornerRadius(35)
        .padding(.horizontal,26)
    }
}

#Preview {
    CustomTabBar(selectedTab: .constant(0))
}

extension CustomTabBar {
    func CustomTabItem(imageName: String, title: String, isActive: Bool) -> some View {
        HStack(spacing: 10) {
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .foregroundStyle(isActive ? .black : .gray)
                .frame(width: 20, height: 20)
            if isActive {
                Text(title)
                    .font(.system(size: 16).bold())
                    .foregroundStyle(isActive ? .black : .gray)
            }
            Spacer()
        }
        .frame(width: isActive ? nil : 60, height: 60)
        .background(isActive ? .blue.opacity(0.4) : .clear)
        .cornerRadius(30)
    }
}
