//
//  HiddenTabBar.swift
//  AwesomeFeatures
//
//  Created by Ganpat Jangir on 05/01/25.
//

import SwiftUI

struct HiddenTabBar: View {
    @State var showTabBar = false
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(), count: 2)) {
                ForEach(0..<25) { item in
                    RoundedRectangle(cornerRadius: 8.0)
                        .foregroundStyle(.green.tertiary)
                        .frame(height: 200)
                }
            }
        }
        .safeAreaPadding(.horizontal,10).scrollIndicators(.hidden)
        .overlay(alignment: .bottom) {
            if showTabBar {
//                CustomTabBar()
//                    .transition(.offset(y: 200))
            }
        }
        .onScrollGeometryChange(for: CGFloat.self, of: { geometry in
            geometry.contentOffset.y
        }, action: { oldValue, newValue in
            if oldValue < newValue {
                withAnimation {
                    showTabBar = false
                }
            } else {
                withAnimation {
                    showTabBar = true
                }
            }
        })
    }
}

#Preview {
    HiddenTabBar()
}
