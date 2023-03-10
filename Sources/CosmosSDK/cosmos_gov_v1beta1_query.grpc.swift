//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: cosmos/gov/v1beta1/query.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Query defines the gRPC querier service for gov module
///
/// Usage: instantiate `Cosmos_Gov_V1beta1_QueryClient`, then call methods of this protocol to make API calls.
public protocol Cosmos_Gov_V1beta1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Cosmos_Gov_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func proposal(
    _ request: Cosmos_Gov_V1beta1_QueryProposalRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryProposalRequest, Cosmos_Gov_V1beta1_QueryProposalResponse>

  func proposals(
    _ request: Cosmos_Gov_V1beta1_QueryProposalsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryProposalsRequest, Cosmos_Gov_V1beta1_QueryProposalsResponse>

  func vote(
    _ request: Cosmos_Gov_V1beta1_QueryVoteRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryVoteRequest, Cosmos_Gov_V1beta1_QueryVoteResponse>

  func votes(
    _ request: Cosmos_Gov_V1beta1_QueryVotesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryVotesRequest, Cosmos_Gov_V1beta1_QueryVotesResponse>

  func params(
    _ request: Cosmos_Gov_V1beta1_QueryParamsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryParamsRequest, Cosmos_Gov_V1beta1_QueryParamsResponse>

  func deposit(
    _ request: Cosmos_Gov_V1beta1_QueryDepositRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryDepositRequest, Cosmos_Gov_V1beta1_QueryDepositResponse>

  func deposits(
    _ request: Cosmos_Gov_V1beta1_QueryDepositsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryDepositsRequest, Cosmos_Gov_V1beta1_QueryDepositsResponse>

  func tallyResult(
    _ request: Cosmos_Gov_V1beta1_QueryTallyResultRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryTallyResultRequest, Cosmos_Gov_V1beta1_QueryTallyResultResponse>
}

extension Cosmos_Gov_V1beta1_QueryClientProtocol {
  public var serviceName: String {
    return "cosmos.gov.v1beta1.Query"
  }

  /// Proposal queries proposal details based on ProposalID.
  ///
  /// - Parameters:
  ///   - request: Request to send to Proposal.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func proposal(
    _ request: Cosmos_Gov_V1beta1_QueryProposalRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryProposalRequest, Cosmos_Gov_V1beta1_QueryProposalResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.proposal.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeProposalInterceptors() ?? []
    )
  }

  /// Proposals queries all proposals based on given status.
  ///
  /// - Parameters:
  ///   - request: Request to send to Proposals.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func proposals(
    _ request: Cosmos_Gov_V1beta1_QueryProposalsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryProposalsRequest, Cosmos_Gov_V1beta1_QueryProposalsResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.proposals.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeProposalsInterceptors() ?? []
    )
  }

  /// Vote queries voted information based on proposalID, voterAddr.
  ///
  /// - Parameters:
  ///   - request: Request to send to Vote.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func vote(
    _ request: Cosmos_Gov_V1beta1_QueryVoteRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryVoteRequest, Cosmos_Gov_V1beta1_QueryVoteResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.vote.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVoteInterceptors() ?? []
    )
  }

  /// Votes queries votes of a given proposal.
  ///
  /// - Parameters:
  ///   - request: Request to send to Votes.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func votes(
    _ request: Cosmos_Gov_V1beta1_QueryVotesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryVotesRequest, Cosmos_Gov_V1beta1_QueryVotesResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.votes.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVotesInterceptors() ?? []
    )
  }

  /// Params queries all parameters of the gov module.
  ///
  /// - Parameters:
  ///   - request: Request to send to Params.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func params(
    _ request: Cosmos_Gov_V1beta1_QueryParamsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryParamsRequest, Cosmos_Gov_V1beta1_QueryParamsResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.params.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeParamsInterceptors() ?? []
    )
  }

  /// Deposit queries single deposit information based proposalID, depositAddr.
  ///
  /// - Parameters:
  ///   - request: Request to send to Deposit.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deposit(
    _ request: Cosmos_Gov_V1beta1_QueryDepositRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryDepositRequest, Cosmos_Gov_V1beta1_QueryDepositResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.deposit.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDepositInterceptors() ?? []
    )
  }

  /// Deposits queries all deposits of a single proposal.
  ///
  /// - Parameters:
  ///   - request: Request to send to Deposits.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deposits(
    _ request: Cosmos_Gov_V1beta1_QueryDepositsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryDepositsRequest, Cosmos_Gov_V1beta1_QueryDepositsResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.deposits.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDepositsInterceptors() ?? []
    )
  }

  /// TallyResult queries the tally of a proposal vote.
  ///
  /// - Parameters:
  ///   - request: Request to send to TallyResult.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func tallyResult(
    _ request: Cosmos_Gov_V1beta1_QueryTallyResultRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Gov_V1beta1_QueryTallyResultRequest, Cosmos_Gov_V1beta1_QueryTallyResultResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.tallyResult.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeTallyResultInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Cosmos_Gov_V1beta1_QueryClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Cosmos_Gov_V1beta1_QueryNIOClient")
public final class Cosmos_Gov_V1beta1_QueryClient: Cosmos_Gov_V1beta1_QueryClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Cosmos_Gov_V1beta1_QueryClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Cosmos_Gov_V1beta1_QueryClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the cosmos.gov.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Gov_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Cosmos_Gov_V1beta1_QueryNIOClient: Cosmos_Gov_V1beta1_QueryClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Gov_V1beta1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the cosmos.gov.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Gov_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Query defines the gRPC querier service for gov module
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Cosmos_Gov_V1beta1_QueryAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Cosmos_Gov_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func makeProposalCall(
    _ request: Cosmos_Gov_V1beta1_QueryProposalRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryProposalRequest, Cosmos_Gov_V1beta1_QueryProposalResponse>

  func makeProposalsCall(
    _ request: Cosmos_Gov_V1beta1_QueryProposalsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryProposalsRequest, Cosmos_Gov_V1beta1_QueryProposalsResponse>

  func makeVoteCall(
    _ request: Cosmos_Gov_V1beta1_QueryVoteRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryVoteRequest, Cosmos_Gov_V1beta1_QueryVoteResponse>

  func makeVotesCall(
    _ request: Cosmos_Gov_V1beta1_QueryVotesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryVotesRequest, Cosmos_Gov_V1beta1_QueryVotesResponse>

  func makeParamsCall(
    _ request: Cosmos_Gov_V1beta1_QueryParamsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryParamsRequest, Cosmos_Gov_V1beta1_QueryParamsResponse>

  func makeDepositCall(
    _ request: Cosmos_Gov_V1beta1_QueryDepositRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryDepositRequest, Cosmos_Gov_V1beta1_QueryDepositResponse>

  func makeDepositsCall(
    _ request: Cosmos_Gov_V1beta1_QueryDepositsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryDepositsRequest, Cosmos_Gov_V1beta1_QueryDepositsResponse>

  func makeTallyResultCall(
    _ request: Cosmos_Gov_V1beta1_QueryTallyResultRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryTallyResultRequest, Cosmos_Gov_V1beta1_QueryTallyResultResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Gov_V1beta1_QueryAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Cosmos_Gov_V1beta1_QueryClientMetadata.serviceDescriptor
  }

  public var interceptors: Cosmos_Gov_V1beta1_QueryClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeProposalCall(
    _ request: Cosmos_Gov_V1beta1_QueryProposalRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryProposalRequest, Cosmos_Gov_V1beta1_QueryProposalResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.proposal.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeProposalInterceptors() ?? []
    )
  }

  public func makeProposalsCall(
    _ request: Cosmos_Gov_V1beta1_QueryProposalsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryProposalsRequest, Cosmos_Gov_V1beta1_QueryProposalsResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.proposals.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeProposalsInterceptors() ?? []
    )
  }

  public func makeVoteCall(
    _ request: Cosmos_Gov_V1beta1_QueryVoteRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryVoteRequest, Cosmos_Gov_V1beta1_QueryVoteResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.vote.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVoteInterceptors() ?? []
    )
  }

  public func makeVotesCall(
    _ request: Cosmos_Gov_V1beta1_QueryVotesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryVotesRequest, Cosmos_Gov_V1beta1_QueryVotesResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.votes.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVotesInterceptors() ?? []
    )
  }

  public func makeParamsCall(
    _ request: Cosmos_Gov_V1beta1_QueryParamsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryParamsRequest, Cosmos_Gov_V1beta1_QueryParamsResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.params.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeParamsInterceptors() ?? []
    )
  }

  public func makeDepositCall(
    _ request: Cosmos_Gov_V1beta1_QueryDepositRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryDepositRequest, Cosmos_Gov_V1beta1_QueryDepositResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.deposit.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDepositInterceptors() ?? []
    )
  }

  public func makeDepositsCall(
    _ request: Cosmos_Gov_V1beta1_QueryDepositsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryDepositsRequest, Cosmos_Gov_V1beta1_QueryDepositsResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.deposits.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDepositsInterceptors() ?? []
    )
  }

  public func makeTallyResultCall(
    _ request: Cosmos_Gov_V1beta1_QueryTallyResultRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1beta1_QueryTallyResultRequest, Cosmos_Gov_V1beta1_QueryTallyResultResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.tallyResult.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeTallyResultInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Gov_V1beta1_QueryAsyncClientProtocol {
  public func proposal(
    _ request: Cosmos_Gov_V1beta1_QueryProposalRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Gov_V1beta1_QueryProposalResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.proposal.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeProposalInterceptors() ?? []
    )
  }

  public func proposals(
    _ request: Cosmos_Gov_V1beta1_QueryProposalsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Gov_V1beta1_QueryProposalsResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.proposals.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeProposalsInterceptors() ?? []
    )
  }

  public func vote(
    _ request: Cosmos_Gov_V1beta1_QueryVoteRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Gov_V1beta1_QueryVoteResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.vote.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVoteInterceptors() ?? []
    )
  }

  public func votes(
    _ request: Cosmos_Gov_V1beta1_QueryVotesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Gov_V1beta1_QueryVotesResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.votes.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVotesInterceptors() ?? []
    )
  }

  public func params(
    _ request: Cosmos_Gov_V1beta1_QueryParamsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Gov_V1beta1_QueryParamsResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.params.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeParamsInterceptors() ?? []
    )
  }

  public func deposit(
    _ request: Cosmos_Gov_V1beta1_QueryDepositRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Gov_V1beta1_QueryDepositResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.deposit.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDepositInterceptors() ?? []
    )
  }

  public func deposits(
    _ request: Cosmos_Gov_V1beta1_QueryDepositsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Gov_V1beta1_QueryDepositsResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.deposits.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDepositsInterceptors() ?? []
    )
  }

  public func tallyResult(
    _ request: Cosmos_Gov_V1beta1_QueryTallyResultRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Gov_V1beta1_QueryTallyResultResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.tallyResult.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeTallyResultInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Cosmos_Gov_V1beta1_QueryAsyncClient: Cosmos_Gov_V1beta1_QueryAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Gov_V1beta1_QueryClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Gov_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Cosmos_Gov_V1beta1_QueryClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'proposal'.
  func makeProposalInterceptors() -> [ClientInterceptor<Cosmos_Gov_V1beta1_QueryProposalRequest, Cosmos_Gov_V1beta1_QueryProposalResponse>]

  /// - Returns: Interceptors to use when invoking 'proposals'.
  func makeProposalsInterceptors() -> [ClientInterceptor<Cosmos_Gov_V1beta1_QueryProposalsRequest, Cosmos_Gov_V1beta1_QueryProposalsResponse>]

  /// - Returns: Interceptors to use when invoking 'vote'.
  func makeVoteInterceptors() -> [ClientInterceptor<Cosmos_Gov_V1beta1_QueryVoteRequest, Cosmos_Gov_V1beta1_QueryVoteResponse>]

  /// - Returns: Interceptors to use when invoking 'votes'.
  func makeVotesInterceptors() -> [ClientInterceptor<Cosmos_Gov_V1beta1_QueryVotesRequest, Cosmos_Gov_V1beta1_QueryVotesResponse>]

  /// - Returns: Interceptors to use when invoking 'params'.
  func makeParamsInterceptors() -> [ClientInterceptor<Cosmos_Gov_V1beta1_QueryParamsRequest, Cosmos_Gov_V1beta1_QueryParamsResponse>]

  /// - Returns: Interceptors to use when invoking 'deposit'.
  func makeDepositInterceptors() -> [ClientInterceptor<Cosmos_Gov_V1beta1_QueryDepositRequest, Cosmos_Gov_V1beta1_QueryDepositResponse>]

  /// - Returns: Interceptors to use when invoking 'deposits'.
  func makeDepositsInterceptors() -> [ClientInterceptor<Cosmos_Gov_V1beta1_QueryDepositsRequest, Cosmos_Gov_V1beta1_QueryDepositsResponse>]

  /// - Returns: Interceptors to use when invoking 'tallyResult'.
  func makeTallyResultInterceptors() -> [ClientInterceptor<Cosmos_Gov_V1beta1_QueryTallyResultRequest, Cosmos_Gov_V1beta1_QueryTallyResultResponse>]
}

public enum Cosmos_Gov_V1beta1_QueryClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Query",
    fullName: "cosmos.gov.v1beta1.Query",
    methods: [
      Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.proposal,
      Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.proposals,
      Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.vote,
      Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.votes,
      Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.params,
      Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.deposit,
      Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.deposits,
      Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.tallyResult,
    ]
  )

  public enum Methods {
    public static let proposal = GRPCMethodDescriptor(
      name: "Proposal",
      path: "/cosmos.gov.v1beta1.Query/Proposal",
      type: GRPCCallType.unary
    )

    public static let proposals = GRPCMethodDescriptor(
      name: "Proposals",
      path: "/cosmos.gov.v1beta1.Query/Proposals",
      type: GRPCCallType.unary
    )

    public static let vote = GRPCMethodDescriptor(
      name: "Vote",
      path: "/cosmos.gov.v1beta1.Query/Vote",
      type: GRPCCallType.unary
    )

    public static let votes = GRPCMethodDescriptor(
      name: "Votes",
      path: "/cosmos.gov.v1beta1.Query/Votes",
      type: GRPCCallType.unary
    )

    public static let params = GRPCMethodDescriptor(
      name: "Params",
      path: "/cosmos.gov.v1beta1.Query/Params",
      type: GRPCCallType.unary
    )

    public static let deposit = GRPCMethodDescriptor(
      name: "Deposit",
      path: "/cosmos.gov.v1beta1.Query/Deposit",
      type: GRPCCallType.unary
    )

    public static let deposits = GRPCMethodDescriptor(
      name: "Deposits",
      path: "/cosmos.gov.v1beta1.Query/Deposits",
      type: GRPCCallType.unary
    )

    public static let tallyResult = GRPCMethodDescriptor(
      name: "TallyResult",
      path: "/cosmos.gov.v1beta1.Query/TallyResult",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Cosmos_Gov_V1beta1_QueryTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Cosmos_Gov_V1beta1_QueryTestClient: Cosmos_Gov_V1beta1_QueryClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Gov_V1beta1_QueryClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Gov_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the Proposal RPC. This must be called
  /// before calling 'proposal'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeProposalResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryProposalRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Gov_V1beta1_QueryProposalRequest, Cosmos_Gov_V1beta1_QueryProposalResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.proposal.path, requestHandler: requestHandler)
  }

  public func enqueueProposalResponse(
    _ response: Cosmos_Gov_V1beta1_QueryProposalResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryProposalRequest>) -> () = { _ in }
  ) {
    let stream = self.makeProposalResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Proposal'
  public var hasProposalResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.proposal.path)
  }

  /// Make a unary response for the Proposals RPC. This must be called
  /// before calling 'proposals'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeProposalsResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryProposalsRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Gov_V1beta1_QueryProposalsRequest, Cosmos_Gov_V1beta1_QueryProposalsResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.proposals.path, requestHandler: requestHandler)
  }

  public func enqueueProposalsResponse(
    _ response: Cosmos_Gov_V1beta1_QueryProposalsResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryProposalsRequest>) -> () = { _ in }
  ) {
    let stream = self.makeProposalsResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Proposals'
  public var hasProposalsResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.proposals.path)
  }

  /// Make a unary response for the Vote RPC. This must be called
  /// before calling 'vote'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeVoteResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryVoteRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Gov_V1beta1_QueryVoteRequest, Cosmos_Gov_V1beta1_QueryVoteResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.vote.path, requestHandler: requestHandler)
  }

  public func enqueueVoteResponse(
    _ response: Cosmos_Gov_V1beta1_QueryVoteResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryVoteRequest>) -> () = { _ in }
  ) {
    let stream = self.makeVoteResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Vote'
  public var hasVoteResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.vote.path)
  }

  /// Make a unary response for the Votes RPC. This must be called
  /// before calling 'votes'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeVotesResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryVotesRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Gov_V1beta1_QueryVotesRequest, Cosmos_Gov_V1beta1_QueryVotesResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.votes.path, requestHandler: requestHandler)
  }

  public func enqueueVotesResponse(
    _ response: Cosmos_Gov_V1beta1_QueryVotesResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryVotesRequest>) -> () = { _ in }
  ) {
    let stream = self.makeVotesResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Votes'
  public var hasVotesResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.votes.path)
  }

  /// Make a unary response for the Params RPC. This must be called
  /// before calling 'params'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeParamsResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryParamsRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Gov_V1beta1_QueryParamsRequest, Cosmos_Gov_V1beta1_QueryParamsResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.params.path, requestHandler: requestHandler)
  }

  public func enqueueParamsResponse(
    _ response: Cosmos_Gov_V1beta1_QueryParamsResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryParamsRequest>) -> () = { _ in }
  ) {
    let stream = self.makeParamsResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Params'
  public var hasParamsResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.params.path)
  }

  /// Make a unary response for the Deposit RPC. This must be called
  /// before calling 'deposit'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeDepositResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryDepositRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Gov_V1beta1_QueryDepositRequest, Cosmos_Gov_V1beta1_QueryDepositResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.deposit.path, requestHandler: requestHandler)
  }

  public func enqueueDepositResponse(
    _ response: Cosmos_Gov_V1beta1_QueryDepositResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryDepositRequest>) -> () = { _ in }
  ) {
    let stream = self.makeDepositResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Deposit'
  public var hasDepositResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.deposit.path)
  }

  /// Make a unary response for the Deposits RPC. This must be called
  /// before calling 'deposits'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeDepositsResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryDepositsRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Gov_V1beta1_QueryDepositsRequest, Cosmos_Gov_V1beta1_QueryDepositsResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.deposits.path, requestHandler: requestHandler)
  }

  public func enqueueDepositsResponse(
    _ response: Cosmos_Gov_V1beta1_QueryDepositsResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryDepositsRequest>) -> () = { _ in }
  ) {
    let stream = self.makeDepositsResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Deposits'
  public var hasDepositsResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.deposits.path)
  }

  /// Make a unary response for the TallyResult RPC. This must be called
  /// before calling 'tallyResult'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeTallyResultResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryTallyResultRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Gov_V1beta1_QueryTallyResultRequest, Cosmos_Gov_V1beta1_QueryTallyResultResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.tallyResult.path, requestHandler: requestHandler)
  }

  public func enqueueTallyResultResponse(
    _ response: Cosmos_Gov_V1beta1_QueryTallyResultResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1beta1_QueryTallyResultRequest>) -> () = { _ in }
  ) {
    let stream = self.makeTallyResultResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'TallyResult'
  public var hasTallyResultResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Gov_V1beta1_QueryClientMetadata.Methods.tallyResult.path)
  }
}

