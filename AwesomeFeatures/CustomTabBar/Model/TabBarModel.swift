//
//  TabBarModel.swift
//  AwesomeFeatures
//
//  Created by Ganpat Jangir on 12/01/25.
//

enum TabbedItems: Int, CaseIterable {
    case home = 0
    case calender
    case chat
    case profile
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .calender:
            return "Calender"
        case .chat:
            return "Chat"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String {
        switch self {
        case .home:
            return "house"
        case .calender:
            return "calendar"
        case .chat:
            return "message"
        case .profile:
            return "person.crop.circle"
        }
    }
}
