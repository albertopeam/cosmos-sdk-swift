//
//  cosmos_authz_v1beta1_query_tests.swift
//  
//
//  Created by albertopeam on 13/3/23.
//

import XCTest
import SwiftProtobuf
@testable import CosmosSDK

/// Authz https://docs.cosmos.network/v0.47/modules/authz#built-in-authorizations
/// https://pkg.go.dev/github.com/cosmos/cosmos-sdk/x/authz#section-readme
final class cosmos_authz_v1beta1_query_tests: XCTestCase {
    
    private var sut: Cosmos_Authz_V1beta1_QueryAsyncClient!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        let channel = try GRPCChannelHelper.create(for: .main)
        sut = Cosmos_Authz_V1beta1_QueryAsyncClient(channel: channel)
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        _ = sut.channel.close()
        sut = nil
    }

    /// https://pkg.go.dev/github.com/cosmos/cosmos-sdk/x/authz#QueryServer
    func testGranterGrants() async throws {
        var request = Cosmos_Authz_V1beta1_QueryGranterGrantsRequest()
        request.granter = CosmosConstants.swissStakingMainNetAddr // Granted by me
        
        let response = try await sut.granterGrants(request)
        
        let grants: [Cosmos_Authz_V1beta1_GrantAuthorization] = response.grants  // GrantAuthorization extends a grant with both the addresses of the grantee and granter.
        XCTAssertGreaterThanOrEqual(grants.count, 0)
        XCTAssertEqual(grants.first?.granter, CosmosConstants.swissStakingMainNetAddr)
        let authzs = try grants.map { try toAuthorization(any: $0.authorization )}
        XCTAssertGreaterThanOrEqual(authzs.count, 0)
    }
    
    /// https://pkg.go.dev/github.com/cosmos/cosmos-sdk/x/authz#QueryServer
    func testGranteeGrants() async throws {
        var request = Cosmos_Authz_V1beta1_QueryGranteeGrantsRequest()
        request.grantee = CosmosConstants.swissStakingMainNetAddr // Granted to me
        
        let response = try await sut.granteeGrants(request)
        
        let authzs: [Cosmos_Authz_V1beta1_GrantAuthorization] = response.grants // GrantAuthorization extends a grant with both the addresses of the grantee and granter.
        XCTAssertGreaterThanOrEqual(authzs.count, 0)
    }
    
    /// https://pkg.go.dev/github.com/cosmos/cosmos-sdk/x/authz#QueryServer
    /// The Grants endpoint allows users to query grants for a granter-grantee pair. If the message type URL is set, it selects grants only for that message type.
    func testGrants() async throws {
        var request = Cosmos_Authz_V1beta1_QueryGrantsRequest()
        request.granter = CosmosConstants.swissStakingMainNetAddr
        request.grantee = "cosmos1atrlt8esm7hd8s5sm6tgmgf7l7666lypqkrqj0"
        request.msgTypeURL = "" // empty means all grants
        
        let response = try await sut.grants(request)
        
        let grants: [Cosmos_Authz_V1beta1_Grant] = response.grants
        let authzs = try grants.map { try toAuthorization(any: $0.authorization )}
        XCTAssertGreaterThanOrEqual(authzs.count, 0)
    }
}

// MARK: - Tools

enum AuthzConversionError: LocalizedError {
    case invalidType
    var errorDescription: String? {
        "Not able to cast Google_Protobuf_Any to any of: Cosmos_Authz_V1beta1_GenericAuthorization, Cosmos_Bank_V1beta1_SendAuthorization nor Cosmos_Staking_V1beta1_StakeAuthorization"
    }
}

extension cosmos_authz_v1beta1_query_tests {
    func toAuthorization(any: Google_Protobuf_Any) throws -> Any {
        if any.isA(Cosmos_Authz_V1beta1_GenericAuthorization.self) {
            return try Cosmos_Authz_V1beta1_GenericAuthorization(unpackingAny: any)
        } else if any.isA(Cosmos_Bank_V1beta1_SendAuthorization.self) {
            return try Cosmos_Bank_V1beta1_SendAuthorization(unpackingAny: any)
        } else if any.isA(Cosmos_Staking_V1beta1_StakeAuthorization.self) {
            return try Cosmos_Staking_V1beta1_StakeAuthorization(unpackingAny: any)
        } else {
            throw AuthzConversionError.invalidType
        }
    }
}
