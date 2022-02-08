//
//  TorrentViewModel.swift
//  Magnetar
//
//  Created by Charlotte Tortorella on 16/7/19.
//  Copyright © 2019 Monadic Consulting. All rights reserved.
//

import Foundation
import SwiftUI

//struct FileViewModel {
//    let torrent: Job
//    
//    var statusColor: Color {
//        switch self.torrent.status {
//        case .downloading:
//            return .blue
//        case .seeding:
//            return .green
//        case .stopped, .queuedSeeding, .queuedDownloading, .paused:
//            return .gray
//        }
//    }
//    
//    func size(for keyPath: KeyPath<Job, UInt>) -> Size {
//        Size(bytes: torrent[keyPath: keyPath])
//    }
//    
//    func speed(for keyPath: KeyPath<Job, UInt>) -> Speed {
//        Speed(bytes: torrent[keyPath: keyPath])
//    }
//    
//    var ratio: Ratio {
//        Ratio(torrent)
//    }
//    
//    var status: String {
//        switch torrent.status {
//        case .downloading, .stopped, .seeding, .paused:
//            return torrent.status.rawValue.capitalized
//        case .queuedDownloading:
//            return "Download Queued"
//        case .queuedSeeding:
//            return "Seed Queued"
//        }
//    }
//    
//    var accessibleDescription: String {
//        let context: [String]
//        switch torrent.status {
//        case .downloading:
//            context = [
//                "\(Double(torrent.downloaded) / Double(torrent.size) * 100)% downloaded",
//                "Estimated completion in \(eta.accessibleDescription)"
//            ]
//        case .seeding:
//            context = [
//                "Upload ratio of \(ratio.accessibleDescription)",
//                "\(size(for: \.uploaded).accessibleDescription) uploaded"
//                ]
//        case .queuedDownloading, .queuedSeeding, .stopped, .paused:
//            context = [
//                "Upload ratio of \(ratio.accessibleDescription)"
//            ]
//        }
//        return ([status] + context)
//            .joined(separator: "\n")
//    }
//    
//    var eta: ETAViewModel {
//        .init(eta: torrent.eta)
//    }
//}
