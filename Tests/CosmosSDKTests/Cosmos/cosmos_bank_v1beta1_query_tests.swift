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
        
        assertMetadata(response.metadata)
        XCTAssertGreaterThanOrEqual(response.metadata.denomUnits.count, 0)
    }
    
    func testDenomsMetadata() async throws {
        let request = Cosmos_Bank_V1beta1_QueryDenomsMetadataRequest()
        
        let response = try await sut.denomsMetadata(request)
        
        let metadata = try XCTUnwrap(response.metadatas.first)
        assertMetadata(metadata)
        let denomUnits = metadata.denomUnits
        XCTAssertEqual(denomUnits.count, 3)
        let uAtom = try XCTUnwrap(denomUnits.first{ $0.denom == "uatom" })
        let mAtom = try XCTUnwrap(denomUnits.first{ $0.denom == "matom" })
        let atom = try XCTUnwrap(denomUnits.first{ $0.denom == "atom" })
        XCTAssertEqual(uAtom.exponent, 0)
        XCTAssertEqual(mAtom.exponent, 3)
        XCTAssertEqual(atom.exponent, 6)
    }
    
    func testParams() async throws {
        let request = Cosmos_Bank_V1beta1_QueryParamsRequest()
        
        let response = try await sut.params(request)
        
        XCTAssertTrue(response.params.defaultSendEnabled)
    }
    
    func testSpendableBalances() async throws {
        var request = Cosmos_Bank_V1beta1_QuerySpendableBalancesRequest()
        request.address = CosmosConstants.sg1MainNetAddr
        
        let response = try await sut.spendableBalances(request)
        
        let atomBalance = try XCTUnwrap(response.balances.filter { $0.denom == CosmosConstants.atomDenom }.first)
        XCTAssertGreaterThanOrEqual(atomBalance.amount, "0")
    }
    
    func testSupplyOf() async throws {
        let request = Cosmos_Bank_V1beta1_QuerySupplyOfRequest.with {
            $0.denom = CosmosConstants.atomDenom
        }
        
        let response = try await sut.supplyOf(request)
        
        XCTAssertGreaterThanOrEqual(response.amount.amount, "0")
        XCTAssertGreaterThanOrEqual(response.amount.denom, CosmosConstants.atomDenom)
    }
    
    // https://pkg.go.dev/github.com/cosmos/cosmos-sdk/x/bank/types#QueryClient
    func testTotalSupply() async throws {
        let request = Cosmos_Bank_V1beta1_QueryTotalSupplyRequest()
        
        let response = try await sut.totalSupply(request)
        
        XCTAssertGreaterThan(response.supply.count, 0)
    }
}

// MARK: - private

private extension cosmos_bank_v1beta1_query_tests {
    func assertMetadata(_ metadata: Cosmos_Bank_V1beta1_Metadata) {
        XCTAssertEqual(metadata.base, "uatom")
        XCTAssertEqual(metadata.display, "atom")
        XCTAssertEqual(metadata.symbol, "ATOM")
        XCTAssertEqual(metadata.name, "Cosmos Hub Atom")
    }
}
