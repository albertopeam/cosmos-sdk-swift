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
        request.denom = CosmosConstants.atomDenom
        request.address = CosmosConstants.sg1MainNetAddr
        
        let response = try await sut.balance(request)
        
        XCTAssertEqual(response.balance.denom, CosmosConstants.atomDenom)
        XCTAssertGreaterThanOrEqual(response.balance.amount, "0")
    }
    
    func testAllBalances() async throws {
        var request = Cosmos_Bank_V1beta1_QueryAllBalancesRequest()
        var pageRequest = Cosmos_Base_Query_V1beta1_PageRequest()
        pageRequest.limit = 100
        request.address = CosmosConstants.sg1MainNetAddr
        request.pagination = pageRequest
        
        let response = try await sut.allBalances(request)
        
        let atomBalance = try XCTUnwrap(response.balances.filter { $0.denom == CosmosConstants.atomDenom }.first)
        XCTAssertGreaterThanOrEqual(atomBalance.amount, "0")
    }
    
    func testDenomMetadata() async throws {
        let request = Cosmos_Bank_V1beta1_QueryDenomMetadataRequest.with {
            $0.denom = CosmosConstants.atomDenom
        }
        
        let response = try await sut.denomMetadata(request)
        
        XCTAssertEqual(response.metadata.base, "uatom")
        XCTAssertEqual(response.metadata.display, "atom")
        XCTAssertEqual(response.metadata.symbol, "ATOM")
        XCTAssertEqual(response.metadata.name, "Cosmos Hub Atom")
        XCTAssertGreaterThanOrEqual(response.metadata.denomUnits.count, 0)
    }
    
    func testSpendableBalances() async throws {
        var request = Cosmos_Bank_V1beta1_QuerySpendableBalancesRequest()
        request.address = CosmosConstants.sg1MainNetAddr
        
        let response = try await sut.spendableBalances(request)
        
        let atomBalance = try XCTUnwrap(response.balances.filter { $0.denom == CosmosConstants.atomDenom }.first)
        XCTAssertGreaterThanOrEqual(atomBalance.amount, "0")
    }
}
