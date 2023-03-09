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
    
    func testAccountByID() async throws {
        var request = Cosmos_Auth_V1beta1_QueryAccountAddressByIDRequest()
        request.accountID = Constants.mainNetAccountNumber
        
        let response = try await sut.accountAddressByID(request)
        
        XCTAssertEqual(response.accountAddress, Constants.mainNetAddr)
    }
}
