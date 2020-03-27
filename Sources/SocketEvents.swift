//
// Copyright (c) 2016-2017 Ahmad M. Zawawi (azawawi)
//
// This package is distributed under the terms of the MIT license.
// Please see the accompanying LICENSE file for the full text of the license.
//

extension SwiftyZeroMQ {
    
    /**
     An set of socket events that map out to a 32-bit integer
     */
    public struct SocketEvents : OptionSet {
        public let rawValue: Int32

        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
                
        static let connected           = SocketEvents(rawValue: ZMQ_EVENT_CONNECTED)
        static let connectDelayed      = SocketEvents(rawValue: ZMQ_EVENT_CONNECT_DELAYED)
        static let connectRetried      = SocketEvents(rawValue: ZMQ_EVENT_CONNECT_RETRIED)
        static let listening           = SocketEvents(rawValue: ZMQ_EVENT_LISTENING)
        static let bindFailed          = SocketEvents(rawValue: ZMQ_EVENT_BIND_FAILED)
        static let accepted            = SocketEvents(rawValue: ZMQ_EVENT_ACCEPTED)
        static let acceptFailed        = SocketEvents(rawValue: ZMQ_EVENT_ACCEPT_FAILED)
        static let closed              = SocketEvents(rawValue: ZMQ_EVENT_CLOSED)
        static let closeFailed         = SocketEvents(rawValue: ZMQ_EVENT_CLOSE_FAILED)
        static let disconnected        = SocketEvents(rawValue: ZMQ_EVENT_DISCONNECTED)
        static let monitorStopped      = SocketEvents(rawValue: ZMQ_EVENT_MONITOR_STOPPED)
        static let all                 = SocketEvents(rawValue: ZMQ_EVENT_ALL)
    }
    
}
