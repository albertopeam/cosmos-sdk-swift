//
//  cosmos_auth_v1beta1_query_tests.swift
//  Created by albertopeam on 4/3/23.
//

import XCTest
@testable import CosmosSDK

class cosmos_bank_v1beta1_query_tests: XCTestCase {
    private var sut: Cosmos_Bank_V1beta1_QueryAsyncClient!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        let channel = try GRPCChannelHelper.create(for: .main)
        sut = Cosmos_Bank_V1beta1_QueryAsyncClient(channel: channel)
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        _ = sut.channel.close()
    }
    
    func testBalance() async throws {
        var request = Cosmos_Bank_V1beta1_QueryBalanceRequest()
        request.denom = Constants.atomDenom
        request.address = Constants.sg1MainNetAddr
        
        let response = try await sut.balance(request)
        
        XCTAssertEqual(response.balance.denom, Constants.atomDenom)
        XCTAssertGreaterThanOrEqual(response.balance.amount, "0")
    }
    
    func testBalances() async throws {
        var request = Cosmos_Bank_V1beta1_QueryAllBalancesRequest()
        var pageRequest = Cosmos_Base_Query_V1beta1_PageRequest()
        pageRequest.limit = 100
        request.address = Constants.sg1MainNetAddr
        request.pagination = pageRequest
        
        let response = try await sut.allBalances(request)
        
        let atomBalance = try XCTUnwrap(response.balances.filter { $0.denom == Constants.atomDenom }.first)
        XCTAssertGreaterThanOrEqual(atomBalance.amount, "0")
    }
    
    func testSpendableBalances() async throws {
        var request = Cosmos_Bank_V1beta1_QuerySpendableBalancesRequest()
        request.address = Constants.sg1MainNetAddr
        
        let response = try await sut.spendableBalances(request)
        
        let atomBalance = try XCTUnwrap(response.balances.filter { $0.denom == Constants.atomDenom }.first)
        XCTAssertGreaterThanOrEqual(atomBalance.amount, "0")
    }
}
