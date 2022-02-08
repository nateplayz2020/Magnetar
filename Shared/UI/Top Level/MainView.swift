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
                TorrentList()
            }.tabItem {
                Image(systemName: "list.dash")
                Text("Transfers")
            }
            NavigationView {
                SortingView()
            }.tabItem {
                Image(systemName: "list.number")
                Text("Sorting")
            }
            NavigationView {
                AddServerForm()
            }.tabItem {
                Image(systemName: "gear")
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
