//
//  cosmos_auth_v1beta1_query_tests.swift
//  Created by albertopeam on 5/3/23.
//

import XCTest
@testable import CosmosSDK

class cosmos_auth_v1beta1_query_tests: XCTestCase {
    
    private var sut: Cosmos_Auth_V1beta1_QueryAsyncClient!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        let channel = try GRPCChannelHelper.create(for: .main)
        sut = Cosmos_Auth_V1beta1_QueryAsyncClient(channel: channel)
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        _ = sut.channel.close()
        sut = nil
    }
    
    func testAccount() async throws {
        var request = Cosmos_Auth_V1beta1_QueryAccountRequest()
        request.address = Constants.mainNetAddr
        
        let response = try await sut.account(request)
                
        let account = try Cosmos_Auth_V1beta1_BaseAccount(unpackingAny: response.account)
        XCTAssertEqual(response.account.typeURL, "/cosmos.auth.v1beta1.BaseAccount")
        XCTAssertEqual(account.address, Constants.mainNetAddr)
    }
    
    func testAccounts() async throws {
        var request = Cosmos_Auth_V1beta1_QueryAccountsRequest()
        var pageRequest = Cosmos_Base_Query_V1beta1_PageRequest()
        pageRequest.limit = 2
        request.pagination = pageRequest
        
        var responses: [Cosmos_Auth_V1beta1_QueryAccountsResponse] = .init()
        for _ in [0, 1] {
            let response = try await sut.accounts(request)
            responses.append(response)
            pageRequest.key = response.pagination.nextKey
        }
        
        let accounts = try responses
            .flatMap { $0.accounts }
            .compactMap { try Cosmos_Auth_V1beta1_BaseAccount(unpackingAny: $0) }
        XCTAssertEqual(accounts.count, 4)
    }
    
    
    func testAccountAddressByID() async throws {
        // not implemented. use grpcurl to check auth services
        // grpcurl -plaintext cosmos-grpc.polkachu.com:14990 describe cosmos.auth.v1beta1.Query
    }
    
    func testAccountInfo() async throws {
        // not implemented. use grpcurl to check auth services
        // grpcurl -plaintext cosmos-grpc.polkachu.com:14990 describe cosmos.auth.v1beta1.Query
    }
    
    func testParams() async throws {
        let request = Cosmos_Auth_V1beta1_QueryParamsRequest()
        
        let response = try await sut.params(request)
        
        XCTAssertGreaterThan(response.params.maxMemoCharacters, 0)
        
    }
}
