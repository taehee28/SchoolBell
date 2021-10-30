//
//  ContentView.swift
//  SchoolBell
//
//  Created by 강태희 on 2021/09/04.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .main
    
    enum Tab {
        case main
        case settings
    }
    
    var body: some View {
        TabView(selection: $selection) {
            NavigationView {
                MainView()
            }
            .tag(Tab.main)
            .tabItem {
                Label("메인", systemImage: "house")
            }
            
            NavigationView {
                SettingsView()
            }
            .tag(Tab.settings)
            .tabItem {
                Label("설정", systemImage: "slider.horizontal.3")
            }
            
        }
        
//        NavigationView {
//            TabView(selection: $selection) {
//                MainView()
//                    .tabItem {
//                        Label("메인", systemImage: "house")
//                    }
//                    .tag(Tab.main)
//
//                SettingsView()
//                    .tabItem {
//                        Label("설정", systemImage: "slider.horizontal.3")
//                    }
//                    .tag(Tab.settings)
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
