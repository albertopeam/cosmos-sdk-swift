//
//  GRPCChannel+Helper.swift
//  Created by albertopeam on 5/3/23.
//

import Foundation
import GRPC

/**
 Helper to create GRPCChannel client
 */
enum GRPCChannelHelper {
    /**
     Creates a ``GRPCChannel`` for the specified ``Net``. It uses an ``EventLoop`` of one element.
     - Parameter net: ``Net`` to create the channel
     - Returns: a new GRPCChannel
     */
    static func create(for net: CosmosNet) throws -> GRPCChannel {
        let group = PlatformSupport.makeEventLoopGroup(loopCount: 1)
        return try GRPCChannelPool.with(
            target: .host(net.host, port: net.port),
            transportSecurity: .plaintext,
            eventLoopGroup: group
        )
    }
}
