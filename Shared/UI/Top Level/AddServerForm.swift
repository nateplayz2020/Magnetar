//
//  AddServerForm.swift
//  Magnetar
//
//  Created by Charlotte Tortorella on 19/7/19.
//  Copyright © 2019 Monadic Consulting. All rights reserved.
//

import SwiftUI

#if os(macOS)
extension Optional where Wrapped == NSTextContentType {
    static var name: Self {
        nil
    }
    
    static var URL: Self {
        nil
    }
}
#endif

struct AddServerForm: View {
    @State var server: Server? = nil
    @State var type: String = "Transmission"
    @State var name: String = ""
    @State var address: String = ""
    @State var port: String = ""
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        Form {
            Section {
//                Picker(selection: $type, label: Text("Software")) {
//                    ForEach(ServerType.allCases) {
//                        Text($0.name).tag($0)
//                    }
//                }
                HLabelled("Name") {
                    TextField("Example", text: $name)
                        .textContentType(.name)
                }
                HLabelled("URL") {
                    TextField("https://api.example.com", text: $address)
                        .textContentType(.URL)
                }
                HLabelled("Port") {
                    TextField("8080", text: $port)
                }
                HLabelled("Username") {
                    TextField("example_user", text: $username)
                        .textContentType(.username)
                }
                HLabelled("Password") {
                    SecureField("Ex4mpleP@ssw0rd", text: $password)
                        .textContentType(.password)
                }
            }
            Section {
                Button("Save", action: save)
                    .disabled(saveDisabled)
            }
        }
        .navigationBarTitle("Settings")
    }
    
    var saveDisabled: Bool {
        name.isEmpty ||
        username.isEmpty ||
        password.isEmpty ||
        URL(string: address) == nil ||
        !isPortValid
    }

    var isPortValid: Bool {
        port.first != "0" && UInt16(port) != nil
    }

    var validUserInput: Bool {
        return false
    }
    
    func save() {
    }
}