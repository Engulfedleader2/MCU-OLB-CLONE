//
//  SettingsView.swift
//  Midflorida OLB Clone
//
//  Created by Israel on 6/6/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: MessagesView()) {
                    HStack {
                        Image(systemName: "message")
                            .foregroundColor(.blue)
                        Text("Messages")
                    }
                }
                
                NavigationLink(destination: DocumentsView()) {
                    HStack {
                        Image(systemName: "doc.text")
                            .foregroundColor(.blue)
                        Text("Documents")
                    }
                }
                
                NavigationLink(destination: MyInformationView()) {
                    HStack {
                        Image(systemName: "person")
                            .foregroundColor(.blue)
                        Text("My Information")
                    }
                }
                
                NavigationLink(destination: SecurityView()) {
                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(.blue)
                        Text("Security")
                    }
                }
                
                NavigationLink(destination: ContactView()) {
                    HStack {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text("Contact")
                    }
                }
            }
            .navigationTitle("Settings")
            .listStyle(GroupedListStyle())
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
