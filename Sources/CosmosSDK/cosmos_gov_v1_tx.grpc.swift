//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: cosmos/gov/v1/tx.proto
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


/// Msg defines the gov Msg service.
///
/// Usage: instantiate `Cosmos_Gov_V1_MsgClient`, then call methods of this protocol to make API calls.
public protocol Cosmos_Gov_V1_MsgClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Cosmos_Gov_V1_MsgClientInterceptorFactoryProtocol? { get }

  func submitProposal(
    _ request: Cosmos_Gov_V1_MsgSubmitProposal,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Gov_V1_MsgSubmitProposal, Cosmos_Gov_V1_MsgSubmitProposalResponse>

  func execLegacyContent(
    _ request: Cosmos_Gov_V1_MsgExecLegacyContent,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Gov_V1_MsgExecLegacyContent, Cosmos_Gov_V1_MsgExecLegacyContentResponse>

  func vote(
    _ request: Cosmos_Gov_V1_MsgVote,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Gov_V1_MsgVote, Cosmos_Gov_V1_MsgVoteResponse>

  func voteWeighted(
    _ request: Cosmos_Gov_V1_MsgVoteWeighted,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Gov_V1_MsgVoteWeighted, Cosmos_Gov_V1_MsgVoteWeightedResponse>

  func deposit(
    _ request: Cosmos_Gov_V1_MsgDeposit,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Gov_V1_MsgDeposit, Cosmos_Gov_V1_MsgDepositResponse>

  func updateParams(
    _ request: Cosmos_Gov_V1_MsgUpdateParams,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Gov_V1_MsgUpdateParams, Cosmos_Gov_V1_MsgUpdateParamsResponse>

  func cancelProposal(
    _ request: Cosmos_Gov_V1_MsgCancelProposal,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Gov_V1_MsgCancelProposal, Cosmos_Gov_V1_MsgCancelProposalResponse>
}

extension Cosmos_Gov_V1_MsgClientProtocol {
  public var serviceName: String {
    return "cosmos.gov.v1.Msg"
  }

  /// SubmitProposal defines a method to create new proposal given the messages.
  ///
  /// - Parameters:
  ///   - request: Request to send to SubmitProposal.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func submitProposal(
    _ request: Cosmos_Gov_V1_MsgSubmitProposal,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Gov_V1_MsgSubmitProposal, Cosmos_Gov_V1_MsgSubmitProposalResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.submitProposal.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSubmitProposalInterceptors() ?? []
    )
  }

  /// ExecLegacyContent defines a Msg to be in included in a MsgSubmitProposal
  /// to execute a legacy content-based proposal.
  ///
  /// - Parameters:
  ///   - request: Request to send to ExecLegacyContent.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func execLegacyContent(
    _ request: Cosmos_Gov_V1_MsgExecLegacyContent,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Gov_V1_MsgExecLegacyContent, Cosmos_Gov_V1_MsgExecLegacyContentResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.execLegacyContent.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeExecLegacyContentInterceptors() ?? []
    )
  }

  /// Vote defines a method to add a vote on a specific proposal.
  ///
  /// - Parameters:
  ///   - request: Request to send to Vote.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func vote(
    _ request: Cosmos_Gov_V1_MsgVote,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Gov_V1_MsgVote, Cosmos_Gov_V1_MsgVoteResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.vote.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVoteInterceptors() ?? []
    )
  }

  /// VoteWeighted defines a method to add a weighted vote on a specific proposal.
  ///
  /// - Parameters:
  ///   - request: Request to send to VoteWeighted.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func voteWeighted(
    _ request: Cosmos_Gov_V1_MsgVoteWeighted,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Gov_V1_MsgVoteWeighted, Cosmos_Gov_V1_MsgVoteWeightedResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.voteWeighted.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVoteWeightedInterceptors() ?? []
    )
  }

  /// Deposit defines a method to add deposit on a specific proposal.
  ///
  /// - Parameters:
  ///   - request: Request to send to Deposit.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deposit(
    _ request: Cosmos_Gov_V1_MsgDeposit,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Gov_V1_MsgDeposit, Cosmos_Gov_V1_MsgDepositResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.deposit.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDepositInterceptors() ?? []
    )
  }

  /// UpdateParams defines a governance operation for updating the x/gov module
  /// parameters. The authority is defined in the keeper.
  ///
  /// Since: cosmos-sdk 0.47
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateParams.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateParams(
    _ request: Cosmos_Gov_V1_MsgUpdateParams,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Gov_V1_MsgUpdateParams, Cosmos_Gov_V1_MsgUpdateParamsResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.updateParams.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateParamsInterceptors() ?? []
    )
  }

  /// CancelProposal defines a method to cancel governance proposal
  ///
  /// Since: cosmos-sdk 0.48
  ///
  /// - Parameters:
  ///   - request: Request to send to CancelProposal.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func cancelProposal(
    _ request: Cosmos_Gov_V1_MsgCancelProposal,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Gov_V1_MsgCancelProposal, Cosmos_Gov_V1_MsgCancelProposalResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.cancelProposal.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCancelProposalInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Cosmos_Gov_V1_MsgClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Cosmos_Gov_V1_MsgNIOClient")
public final class Cosmos_Gov_V1_MsgClient: Cosmos_Gov_V1_MsgClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Cosmos_Gov_V1_MsgClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Cosmos_Gov_V1_MsgClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the cosmos.gov.v1.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Gov_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Cosmos_Gov_V1_MsgNIOClient: Cosmos_Gov_V1_MsgClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Gov_V1_MsgClientInterceptorFactoryProtocol?

  /// Creates a client for the cosmos.gov.v1.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Gov_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Msg defines the gov Msg service.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Cosmos_Gov_V1_MsgAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Cosmos_Gov_V1_MsgClientInterceptorFactoryProtocol? { get }

  func makeSubmitProposalCall(
    _ request: Cosmos_Gov_V1_MsgSubmitProposal,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1_MsgSubmitProposal, Cosmos_Gov_V1_MsgSubmitProposalResponse>

  func makeExecLegacyContentCall(
    _ request: Cosmos_Gov_V1_MsgExecLegacyContent,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1_MsgExecLegacyContent, Cosmos_Gov_V1_MsgExecLegacyContentResponse>

  func makeVoteCall(
    _ request: Cosmos_Gov_V1_MsgVote,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1_MsgVote, Cosmos_Gov_V1_MsgVoteResponse>

  func makeVoteWeightedCall(
    _ request: Cosmos_Gov_V1_MsgVoteWeighted,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1_MsgVoteWeighted, Cosmos_Gov_V1_MsgVoteWeightedResponse>

  func makeDepositCall(
    _ request: Cosmos_Gov_V1_MsgDeposit,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1_MsgDeposit, Cosmos_Gov_V1_MsgDepositResponse>

  func makeUpdateParamsCall(
    _ request: Cosmos_Gov_V1_MsgUpdateParams,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1_MsgUpdateParams, Cosmos_Gov_V1_MsgUpdateParamsResponse>

  func makeCancelProposalCall(
    _ request: Cosmos_Gov_V1_MsgCancelProposal,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1_MsgCancelProposal, Cosmos_Gov_V1_MsgCancelProposalResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Gov_V1_MsgAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Cosmos_Gov_V1_MsgClientMetadata.serviceDescriptor
  }

  public var interceptors: Cosmos_Gov_V1_MsgClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeSubmitProposalCall(
    _ request: Cosmos_Gov_V1_MsgSubmitProposal,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1_MsgSubmitProposal, Cosmos_Gov_V1_MsgSubmitProposalResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.submitProposal.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSubmitProposalInterceptors() ?? []
    )
  }

  public func makeExecLegacyContentCall(
    _ request: Cosmos_Gov_V1_MsgExecLegacyContent,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1_MsgExecLegacyContent, Cosmos_Gov_V1_MsgExecLegacyContentResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.execLegacyContent.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeExecLegacyContentInterceptors() ?? []
    )
  }

  public func makeVoteCall(
    _ request: Cosmos_Gov_V1_MsgVote,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1_MsgVote, Cosmos_Gov_V1_MsgVoteResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.vote.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVoteInterceptors() ?? []
    )
  }

  public func makeVoteWeightedCall(
    _ request: Cosmos_Gov_V1_MsgVoteWeighted,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1_MsgVoteWeighted, Cosmos_Gov_V1_MsgVoteWeightedResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.voteWeighted.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVoteWeightedInterceptors() ?? []
    )
  }

  public func makeDepositCall(
    _ request: Cosmos_Gov_V1_MsgDeposit,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1_MsgDeposit, Cosmos_Gov_V1_MsgDepositResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.deposit.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDepositInterceptors() ?? []
    )
  }

  public func makeUpdateParamsCall(
    _ request: Cosmos_Gov_V1_MsgUpdateParams,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1_MsgUpdateParams, Cosmos_Gov_V1_MsgUpdateParamsResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.updateParams.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateParamsInterceptors() ?? []
    )
  }

  public func makeCancelProposalCall(
    _ request: Cosmos_Gov_V1_MsgCancelProposal,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Gov_V1_MsgCancelProposal, Cosmos_Gov_V1_MsgCancelProposalResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.cancelProposal.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCancelProposalInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Gov_V1_MsgAsyncClientProtocol {
  public func submitProposal(
    _ request: Cosmos_Gov_V1_MsgSubmitProposal,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Gov_V1_MsgSubmitProposalResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.submitProposal.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSubmitProposalInterceptors() ?? []
    )
  }

  public func execLegacyContent(
    _ request: Cosmos_Gov_V1_MsgExecLegacyContent,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Gov_V1_MsgExecLegacyContentResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.execLegacyContent.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeExecLegacyContentInterceptors() ?? []
    )
  }

  public func vote(
    _ request: Cosmos_Gov_V1_MsgVote,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Gov_V1_MsgVoteResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.vote.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVoteInterceptors() ?? []
    )
  }

  public func voteWeighted(
    _ request: Cosmos_Gov_V1_MsgVoteWeighted,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Gov_V1_MsgVoteWeightedResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.voteWeighted.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVoteWeightedInterceptors() ?? []
    )
  }

  public func deposit(
    _ request: Cosmos_Gov_V1_MsgDeposit,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Gov_V1_MsgDepositResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.deposit.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDepositInterceptors() ?? []
    )
  }

  public func updateParams(
    _ request: Cosmos_Gov_V1_MsgUpdateParams,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Gov_V1_MsgUpdateParamsResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.updateParams.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateParamsInterceptors() ?? []
    )
  }

  public func cancelProposal(
    _ request: Cosmos_Gov_V1_MsgCancelProposal,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Gov_V1_MsgCancelProposalResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Gov_V1_MsgClientMetadata.Methods.cancelProposal.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCancelProposalInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Cosmos_Gov_V1_MsgAsyncClient: Cosmos_Gov_V1_MsgAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Gov_V1_MsgClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Gov_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Cosmos_Gov_V1_MsgClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'submitProposal'.
  func makeSubmitProposalInterceptors() -> [ClientInterceptor<Cosmos_Gov_V1_MsgSubmitProposal, Cosmos_Gov_V1_MsgSubmitProposalResponse>]

  /// - Returns: Interceptors to use when invoking 'execLegacyContent'.
  func makeExecLegacyContentInterceptors() -> [ClientInterceptor<Cosmos_Gov_V1_MsgExecLegacyContent, Cosmos_Gov_V1_MsgExecLegacyContentResponse>]

  /// - Returns: Interceptors to use when invoking 'vote'.
  func makeVoteInterceptors() -> [ClientInterceptor<Cosmos_Gov_V1_MsgVote, Cosmos_Gov_V1_MsgVoteResponse>]

  /// - Returns: Interceptors to use when invoking 'voteWeighted'.
  func makeVoteWeightedInterceptors() -> [ClientInterceptor<Cosmos_Gov_V1_MsgVoteWeighted, Cosmos_Gov_V1_MsgVoteWeightedResponse>]

  /// - Returns: Interceptors to use when invoking 'deposit'.
  func makeDepositInterceptors() -> [ClientInterceptor<Cosmos_Gov_V1_MsgDeposit, Cosmos_Gov_V1_MsgDepositResponse>]

  /// - Returns: Interceptors to use when invoking 'updateParams'.
  func makeUpdateParamsInterceptors() -> [ClientInterceptor<Cosmos_Gov_V1_MsgUpdateParams, Cosmos_Gov_V1_MsgUpdateParamsResponse>]

  /// - Returns: Interceptors to use when invoking 'cancelProposal'.
  func makeCancelProposalInterceptors() -> [ClientInterceptor<Cosmos_Gov_V1_MsgCancelProposal, Cosmos_Gov_V1_MsgCancelProposalResponse>]
}

public enum Cosmos_Gov_V1_MsgClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Msg",
    fullName: "cosmos.gov.v1.Msg",
    methods: [
      Cosmos_Gov_V1_MsgClientMetadata.Methods.submitProposal,
      Cosmos_Gov_V1_MsgClientMetadata.Methods.execLegacyContent,
      Cosmos_Gov_V1_MsgClientMetadata.Methods.vote,
      Cosmos_Gov_V1_MsgClientMetadata.Methods.voteWeighted,
      Cosmos_Gov_V1_MsgClientMetadata.Methods.deposit,
      Cosmos_Gov_V1_MsgClientMetadata.Methods.updateParams,
      Cosmos_Gov_V1_MsgClientMetadata.Methods.cancelProposal,
    ]
  )

  public enum Methods {
    public static let submitProposal = GRPCMethodDescriptor(
      name: "SubmitProposal",
      path: "/cosmos.gov.v1.Msg/SubmitProposal",
      type: GRPCCallType.unary
    )

    public static let execLegacyContent = GRPCMethodDescriptor(
      name: "ExecLegacyContent",
      path: "/cosmos.gov.v1.Msg/ExecLegacyContent",
      type: GRPCCallType.unary
    )

    public static let vote = GRPCMethodDescriptor(
      name: "Vote",
      path: "/cosmos.gov.v1.Msg/Vote",
      type: GRPCCallType.unary
    )

    public static let voteWeighted = GRPCMethodDescriptor(
      name: "VoteWeighted",
      path: "/cosmos.gov.v1.Msg/VoteWeighted",
      type: GRPCCallType.unary
    )

    public static let deposit = GRPCMethodDescriptor(
      name: "Deposit",
      path: "/cosmos.gov.v1.Msg/Deposit",
      type: GRPCCallType.unary
    )

    public static let updateParams = GRPCMethodDescriptor(
      name: "UpdateParams",
      path: "/cosmos.gov.v1.Msg/UpdateParams",
      type: GRPCCallType.unary
    )

    public static let cancelProposal = GRPCMethodDescriptor(
      name: "CancelProposal",
      path: "/cosmos.gov.v1.Msg/CancelProposal",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Cosmos_Gov_V1_MsgTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Cosmos_Gov_V1_MsgTestClient: Cosmos_Gov_V1_MsgClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Gov_V1_MsgClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Gov_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the SubmitProposal RPC. This must be called
  /// before calling 'submitProposal'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeSubmitProposalResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1_MsgSubmitProposal>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Gov_V1_MsgSubmitProposal, Cosmos_Gov_V1_MsgSubmitProposalResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Gov_V1_MsgClientMetadata.Methods.submitProposal.path, requestHandler: requestHandler)
  }

  public func enqueueSubmitProposalResponse(
    _ response: Cosmos_Gov_V1_MsgSubmitProposalResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1_MsgSubmitProposal>) -> () = { _ in }
  ) {
    let stream = self.makeSubmitProposalResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'SubmitProposal'
  public var hasSubmitProposalResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Gov_V1_MsgClientMetadata.Methods.submitProposal.path)
  }

  /// Make a unary response for the ExecLegacyContent RPC. This must be called
  /// before calling 'execLegacyContent'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeExecLegacyContentResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1_MsgExecLegacyContent>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Gov_V1_MsgExecLegacyContent, Cosmos_Gov_V1_MsgExecLegacyContentResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Gov_V1_MsgClientMetadata.Methods.execLegacyContent.path, requestHandler: requestHandler)
  }

  public func enqueueExecLegacyContentResponse(
    _ response: Cosmos_Gov_V1_MsgExecLegacyContentResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1_MsgExecLegacyContent>) -> () = { _ in }
  ) {
    let stream = self.makeExecLegacyContentResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'ExecLegacyContent'
  public var hasExecLegacyContentResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Gov_V1_MsgClientMetadata.Methods.execLegacyContent.path)
  }

  /// Make a unary response for the Vote RPC. This must be called
  /// before calling 'vote'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeVoteResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1_MsgVote>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Gov_V1_MsgVote, Cosmos_Gov_V1_MsgVoteResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Gov_V1_MsgClientMetadata.Methods.vote.path, requestHandler: requestHandler)
  }

  public func enqueueVoteResponse(
    _ response: Cosmos_Gov_V1_MsgVoteResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1_MsgVote>) -> () = { _ in }
  ) {
    let stream = self.makeVoteResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Vote'
  public var hasVoteResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Gov_V1_MsgClientMetadata.Methods.vote.path)
  }

  /// Make a unary response for the VoteWeighted RPC. This must be called
  /// before calling 'voteWeighted'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeVoteWeightedResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1_MsgVoteWeighted>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Gov_V1_MsgVoteWeighted, Cosmos_Gov_V1_MsgVoteWeightedResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Gov_V1_MsgClientMetadata.Methods.voteWeighted.path, requestHandler: requestHandler)
  }

  public func enqueueVoteWeightedResponse(
    _ response: Cosmos_Gov_V1_MsgVoteWeightedResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1_MsgVoteWeighted>) -> () = { _ in }
  ) {
    let stream = self.makeVoteWeightedResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'VoteWeighted'
  public var hasVoteWeightedResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Gov_V1_MsgClientMetadata.Methods.voteWeighted.path)
  }

  /// Make a unary response for the Deposit RPC. This must be called
  /// before calling 'deposit'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeDepositResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1_MsgDeposit>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Gov_V1_MsgDeposit, Cosmos_Gov_V1_MsgDepositResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Gov_V1_MsgClientMetadata.Methods.deposit.path, requestHandler: requestHandler)
  }

  public func enqueueDepositResponse(
    _ response: Cosmos_Gov_V1_MsgDepositResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1_MsgDeposit>) -> () = { _ in }
  ) {
    let stream = self.makeDepositResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Deposit'
  public var hasDepositResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Gov_V1_MsgClientMetadata.Methods.deposit.path)
  }

  /// Make a unary response for the UpdateParams RPC. This must be called
  /// before calling 'updateParams'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeUpdateParamsResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1_MsgUpdateParams>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Gov_V1_MsgUpdateParams, Cosmos_Gov_V1_MsgUpdateParamsResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Gov_V1_MsgClientMetadata.Methods.updateParams.path, requestHandler: requestHandler)
  }

  public func enqueueUpdateParamsResponse(
    _ response: Cosmos_Gov_V1_MsgUpdateParamsResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1_MsgUpdateParams>) -> () = { _ in }
  ) {
    let stream = self.makeUpdateParamsResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'UpdateParams'
  public var hasUpdateParamsResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Gov_V1_MsgClientMetadata.Methods.updateParams.path)
  }

  /// Make a unary response for the CancelProposal RPC. This must be called
  /// before calling 'cancelProposal'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeCancelProposalResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1_MsgCancelProposal>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Gov_V1_MsgCancelProposal, Cosmos_Gov_V1_MsgCancelProposalResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Gov_V1_MsgClientMetadata.Methods.cancelProposal.path, requestHandler: requestHandler)
  }

  public func enqueueCancelProposalResponse(
    _ response: Cosmos_Gov_V1_MsgCancelProposalResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Gov_V1_MsgCancelProposal>) -> () = { _ in }
  ) {
    let stream = self.makeCancelProposalResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'CancelProposal'
  public var hasCancelProposalResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Gov_V1_MsgClientMetadata.Methods.cancelProposal.path)
  }
}

