//
//  Action.swift
//  Magnetar
//
//  Created by Charlie Tor on 21/10/20.
//

import Foundation
import Recombine

typealias Action = EitherAction<AsyncAction, SyncAction>
enum AsyncAction {
    case start
    case command(Command)
}
enum SyncAction {
    enum Set {
        case selectedServer(Server)
        case refreshInterval(TimeInterval)
        case jobs([String: JobViewModel])
        case token(String?)
    }
    enum Update {
        case jobs([String: JobViewModel?])
    }
    enum Remove {
        case jobs([String])
    }
    case error(String)
    case set(Set)
    case update(Update)
    case remove(Remove)
}
