//
//  cosmos_auth_v1beta1_query_tests.swift
//  Created by albertopeam on 4/3/23.
//

import XCTest
@testable import CosmosSDK

class cosmos_bank_v1beta1_query_tests: XCTestCase {
    func testBank() async throws {
        let channel = try GRPCChannelHelper.create(for: .main)
        let sut = Cosmos_Bank_V1beta1_QueryAsyncClient(channel: channel)
        var request = Cosmos_Bank_V1beta1_QueryBalanceRequest()
        request.denom = Constants.atomDenom
        request.address = Constants.mainNetAddr
        
        let result = try await sut.balance(request)
        
        XCTAssertEqual(result.balance.denom, "uatom")
        XCTAssertGreaterThanOrEqual(result.balance.amount, "0")
    }
}
