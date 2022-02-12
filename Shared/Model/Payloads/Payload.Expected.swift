//
//  ExpectedJobsPayload.swift
//  Magnetar
//
//  Created by Charles Maria Tor on 6/2/22.
//

import Foundation
import MonadicJSON

extension Payload {
    indirect enum Expected: Hashable, Codable {
        case object([String: Self])
        case array([Self])
        case forEach([Self])
        case field(Job.Field.Descriptor)
    }
}