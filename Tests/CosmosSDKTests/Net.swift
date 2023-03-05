//
//  Constants.swift
//  Created by albertopeam on 5/3/23.
//

import Foundation

/**
 Cosmos network connection details
 */
enum Net {
    /// mainnet
    case main
    /// testnet
    case test
    
    /// host
    var host: String {
        switch self {
        case .main: return "cosmos-grpc.polkachu.com"
        case .test: return "rpc.sentry-01.theta-testnet.polypore" // TODO: Not works
        }
    }
    
    /// port
    var port: Int {
        switch self {
        case .main: return 14990
        case .test: return 0 //TODO:  not works
        }
    }
}
