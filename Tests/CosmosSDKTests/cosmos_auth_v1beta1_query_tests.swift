//
//  cosmos_auth_v1beta1_query_tests.swift
//  Created by albertopeam on 5/3/23.
//

import XCTest
@testable import CosmosSDK

class cosmos_auth_v1beta1_query_tests: XCTestCase {
    func testAccount() async throws {
        let channel = try GRPCChannelHelper.create(for: .main)
        let client = Cosmos_Auth_V1beta1_QueryAsyncClient(channel: channel)
        var request = Cosmos_Auth_V1beta1_QueryAccountRequest()
        request.address = Constants.mainNetAddr
        
        let response = try await client.account(request)
        
        XCTAssertEqual(response.account.typeURL, "/cosmos.auth.v1beta1.BaseAccount")
        //TODO: unmarshall
    }
}
