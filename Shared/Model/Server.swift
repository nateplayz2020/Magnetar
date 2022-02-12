//
//  Server.swift
//  Magnetar
//
//  Created by Charlotte Tortorella on 18/7/19.
//  Copyright © 2019 Monadic Consulting. All rights reserved.
//

import Foundation
import Combine

struct Server: Equatable {
    var url: URL
    var user: String?
    var password: String?
    var token: String?
    var port: UInt16
    var name: String
    var api: APIDescriptor
    
    var jobs: [String: JobViewModel] = [:]
}
