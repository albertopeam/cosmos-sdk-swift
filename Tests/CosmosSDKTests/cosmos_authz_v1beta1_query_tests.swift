//
//  cosmos_authz_v1beta1_query_tests.swift
//  
//
//  Created by albertopeam on 13/3/23.
//

import XCTest
@testable import CosmosSDK

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

    //MARK: - Authz https://docs.cosmos.network/v0.47/modules/authz#built-in-authorizations
    
    func testGranterGrants() async throws {
        var request = Cosmos_Authz_V1beta1_QueryGranterGrantsRequest()
        request.granter = Constants.swissStakingMainNetAddr // Granted by this addr
        
        let response = try await sut.granterGrants(request)
        
        XCTAssertGreaterThanOrEqual(response.grants.count, 0)
        XCTAssertEqual(response.grants.first?.granter, Constants.swissStakingMainNetAddr)
        var authzs: [Any] = .init()
        try response.grants.forEach { grant in
            if grant.authorization.isA(Cosmos_Authz_V1beta1_GenericAuthorization.self) {
                authzs.append(try Cosmos_Authz_V1beta1_GenericAuthorization(unpackingAny: grant.authorization))
            } else if grant.authorization.isA(Cosmos_Bank_V1beta1_SendAuthorization.self) {
                authzs.append(try Cosmos_Bank_V1beta1_SendAuthorization(unpackingAny: grant.authorization))
            } else if grant.authorization.isA(Cosmos_Staking_V1beta1_StakeAuthorization.self) {
                authzs.append(try Cosmos_Staking_V1beta1_StakeAuthorization(unpackingAny: grant.authorization))
            }
        }
        XCTAssertGreaterThanOrEqual(authzs.count, 0)
    }
}
