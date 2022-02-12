//
//  ContentView.swift
//  Magnetar
//
//  Created by Charlotte Tortorella on 11/7/19.
//  Copyright © 2019 Monadic Consulting. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            NavigationView {
                JobListView()
            }.tabItem {
                SystemImage.listDash
                Text("Transfers")
            }
            NavigationView {
                MainQueryView()
            }.tabItem {
                SystemImage.magnifyingglass
                Text("Queries")
            }
            NavigationView {
                SortingView()
            }.tabItem {
                SystemImage.listNumber
                Text("Sorting")
            }
            NavigationView {
                AddServerForm()
            }.tabItem {
                SystemImage.gear
                Text("Settings")
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif