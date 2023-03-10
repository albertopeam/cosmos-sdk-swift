//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: cosmos/base/tendermint/v1beta1/query.proto
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


/// Service defines the gRPC querier service for tendermint queries.
///
/// Usage: instantiate `Cosmos_Base_Tendermint_V1beta1_ServiceClient`, then call methods of this protocol to make API calls.
public protocol Cosmos_Base_Tendermint_V1beta1_ServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Cosmos_Base_Tendermint_V1beta1_ServiceClientInterceptorFactoryProtocol? { get }

  func getNodeInfo(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetNodeInfoRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Base_Tendermint_V1beta1_GetNodeInfoRequest, Cosmos_Base_Tendermint_V1beta1_GetNodeInfoResponse>

  func getSyncing(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetSyncingRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Base_Tendermint_V1beta1_GetSyncingRequest, Cosmos_Base_Tendermint_V1beta1_GetSyncingResponse>

  func getLatestBlock(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetLatestBlockRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Base_Tendermint_V1beta1_GetLatestBlockRequest, Cosmos_Base_Tendermint_V1beta1_GetLatestBlockResponse>

  func getBlockByHeight(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightRequest, Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightResponse>

  func getLatestValidatorSet(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetRequest, Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetResponse>

  func getValidatorSetByHeight(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightRequest, Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightResponse>

  func aBCIQuery(
    _ request: Cosmos_Base_Tendermint_V1beta1_ABCIQueryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Base_Tendermint_V1beta1_ABCIQueryRequest, Cosmos_Base_Tendermint_V1beta1_ABCIQueryResponse>
}

extension Cosmos_Base_Tendermint_V1beta1_ServiceClientProtocol {
  public var serviceName: String {
    return "cosmos.base.tendermint.v1beta1.Service"
  }

  /// GetNodeInfo queries the current node info.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetNodeInfo.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getNodeInfo(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetNodeInfoRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Base_Tendermint_V1beta1_GetNodeInfoRequest, Cosmos_Base_Tendermint_V1beta1_GetNodeInfoResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getNodeInfo.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetNodeInfoInterceptors() ?? []
    )
  }

  /// GetSyncing queries node syncing.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetSyncing.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getSyncing(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetSyncingRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Base_Tendermint_V1beta1_GetSyncingRequest, Cosmos_Base_Tendermint_V1beta1_GetSyncingResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getSyncing.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetSyncingInterceptors() ?? []
    )
  }

  /// GetLatestBlock returns the latest block.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetLatestBlock.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getLatestBlock(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetLatestBlockRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Base_Tendermint_V1beta1_GetLatestBlockRequest, Cosmos_Base_Tendermint_V1beta1_GetLatestBlockResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getLatestBlock.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetLatestBlockInterceptors() ?? []
    )
  }

  /// GetBlockByHeight queries block for given height.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetBlockByHeight.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getBlockByHeight(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightRequest, Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getBlockByHeight.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBlockByHeightInterceptors() ?? []
    )
  }

  /// GetLatestValidatorSet queries latest validator-set.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetLatestValidatorSet.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getLatestValidatorSet(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetRequest, Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getLatestValidatorSet.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetLatestValidatorSetInterceptors() ?? []
    )
  }

  /// GetValidatorSetByHeight queries validator-set at a given height.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetValidatorSetByHeight.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getValidatorSetByHeight(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightRequest, Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getValidatorSetByHeight.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetValidatorSetByHeightInterceptors() ?? []
    )
  }

  /// ABCIQuery defines a query handler that supports ABCI queries directly to the
  /// application, bypassing Tendermint completely. The ABCI query must contain
  /// a valid and supported path, including app, custom, p2p, and store.
  ///
  /// Since: cosmos-sdk 0.46
  ///
  /// - Parameters:
  ///   - request: Request to send to ABCIQuery.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func aBCIQuery(
    _ request: Cosmos_Base_Tendermint_V1beta1_ABCIQueryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Base_Tendermint_V1beta1_ABCIQueryRequest, Cosmos_Base_Tendermint_V1beta1_ABCIQueryResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.aBCIQuery.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeABCIQueryInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Cosmos_Base_Tendermint_V1beta1_ServiceClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Cosmos_Base_Tendermint_V1beta1_ServiceNIOClient")
public final class Cosmos_Base_Tendermint_V1beta1_ServiceClient: Cosmos_Base_Tendermint_V1beta1_ServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Cosmos_Base_Tendermint_V1beta1_ServiceClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Cosmos_Base_Tendermint_V1beta1_ServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the cosmos.base.tendermint.v1beta1.Service service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Base_Tendermint_V1beta1_ServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Cosmos_Base_Tendermint_V1beta1_ServiceNIOClient: Cosmos_Base_Tendermint_V1beta1_ServiceClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Base_Tendermint_V1beta1_ServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the cosmos.base.tendermint.v1beta1.Service service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Base_Tendermint_V1beta1_ServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Service defines the gRPC querier service for tendermint queries.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Cosmos_Base_Tendermint_V1beta1_ServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Cosmos_Base_Tendermint_V1beta1_ServiceClientInterceptorFactoryProtocol? { get }

  func makeGetNodeInfoCall(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetNodeInfoRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Tendermint_V1beta1_GetNodeInfoRequest, Cosmos_Base_Tendermint_V1beta1_GetNodeInfoResponse>

  func makeGetSyncingCall(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetSyncingRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Tendermint_V1beta1_GetSyncingRequest, Cosmos_Base_Tendermint_V1beta1_GetSyncingResponse>

  func makeGetLatestBlockCall(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetLatestBlockRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Tendermint_V1beta1_GetLatestBlockRequest, Cosmos_Base_Tendermint_V1beta1_GetLatestBlockResponse>

  func makeGetBlockByHeightCall(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightRequest, Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightResponse>

  func makeGetLatestValidatorSetCall(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetRequest, Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetResponse>

  func makeGetValidatorSetByHeightCall(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightRequest, Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightResponse>

  func makeAbciqueryCall(
    _ request: Cosmos_Base_Tendermint_V1beta1_ABCIQueryRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Tendermint_V1beta1_ABCIQueryRequest, Cosmos_Base_Tendermint_V1beta1_ABCIQueryResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Base_Tendermint_V1beta1_ServiceAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.serviceDescriptor
  }

  public var interceptors: Cosmos_Base_Tendermint_V1beta1_ServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetNodeInfoCall(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetNodeInfoRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Tendermint_V1beta1_GetNodeInfoRequest, Cosmos_Base_Tendermint_V1beta1_GetNodeInfoResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getNodeInfo.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetNodeInfoInterceptors() ?? []
    )
  }

  public func makeGetSyncingCall(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetSyncingRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Tendermint_V1beta1_GetSyncingRequest, Cosmos_Base_Tendermint_V1beta1_GetSyncingResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getSyncing.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetSyncingInterceptors() ?? []
    )
  }

  public func makeGetLatestBlockCall(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetLatestBlockRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Tendermint_V1beta1_GetLatestBlockRequest, Cosmos_Base_Tendermint_V1beta1_GetLatestBlockResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getLatestBlock.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetLatestBlockInterceptors() ?? []
    )
  }

  public func makeGetBlockByHeightCall(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightRequest, Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getBlockByHeight.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBlockByHeightInterceptors() ?? []
    )
  }

  public func makeGetLatestValidatorSetCall(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetRequest, Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getLatestValidatorSet.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetLatestValidatorSetInterceptors() ?? []
    )
  }

  public func makeGetValidatorSetByHeightCall(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightRequest, Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getValidatorSetByHeight.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetValidatorSetByHeightInterceptors() ?? []
    )
  }

  public func makeAbciqueryCall(
    _ request: Cosmos_Base_Tendermint_V1beta1_ABCIQueryRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Tendermint_V1beta1_ABCIQueryRequest, Cosmos_Base_Tendermint_V1beta1_ABCIQueryResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.aBCIQuery.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeABCIQueryInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Base_Tendermint_V1beta1_ServiceAsyncClientProtocol {
  public func getNodeInfo(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetNodeInfoRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Base_Tendermint_V1beta1_GetNodeInfoResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getNodeInfo.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetNodeInfoInterceptors() ?? []
    )
  }

  public func getSyncing(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetSyncingRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Base_Tendermint_V1beta1_GetSyncingResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getSyncing.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetSyncingInterceptors() ?? []
    )
  }

  public func getLatestBlock(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetLatestBlockRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Base_Tendermint_V1beta1_GetLatestBlockResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getLatestBlock.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetLatestBlockInterceptors() ?? []
    )
  }

  public func getBlockByHeight(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getBlockByHeight.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBlockByHeightInterceptors() ?? []
    )
  }

  public func getLatestValidatorSet(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getLatestValidatorSet.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetLatestValidatorSetInterceptors() ?? []
    )
  }

  public func getValidatorSetByHeight(
    _ request: Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getValidatorSetByHeight.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetValidatorSetByHeightInterceptors() ?? []
    )
  }

  public func aBCIQuery(
    _ request: Cosmos_Base_Tendermint_V1beta1_ABCIQueryRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Base_Tendermint_V1beta1_ABCIQueryResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.aBCIQuery.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeABCIQueryInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Cosmos_Base_Tendermint_V1beta1_ServiceAsyncClient: Cosmos_Base_Tendermint_V1beta1_ServiceAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Base_Tendermint_V1beta1_ServiceClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Base_Tendermint_V1beta1_ServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Cosmos_Base_Tendermint_V1beta1_ServiceClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'getNodeInfo'.
  func makeGetNodeInfoInterceptors() -> [ClientInterceptor<Cosmos_Base_Tendermint_V1beta1_GetNodeInfoRequest, Cosmos_Base_Tendermint_V1beta1_GetNodeInfoResponse>]

  /// - Returns: Interceptors to use when invoking 'getSyncing'.
  func makeGetSyncingInterceptors() -> [ClientInterceptor<Cosmos_Base_Tendermint_V1beta1_GetSyncingRequest, Cosmos_Base_Tendermint_V1beta1_GetSyncingResponse>]

  /// - Returns: Interceptors to use when invoking 'getLatestBlock'.
  func makeGetLatestBlockInterceptors() -> [ClientInterceptor<Cosmos_Base_Tendermint_V1beta1_GetLatestBlockRequest, Cosmos_Base_Tendermint_V1beta1_GetLatestBlockResponse>]

  /// - Returns: Interceptors to use when invoking 'getBlockByHeight'.
  func makeGetBlockByHeightInterceptors() -> [ClientInterceptor<Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightRequest, Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightResponse>]

  /// - Returns: Interceptors to use when invoking 'getLatestValidatorSet'.
  func makeGetLatestValidatorSetInterceptors() -> [ClientInterceptor<Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetRequest, Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetResponse>]

  /// - Returns: Interceptors to use when invoking 'getValidatorSetByHeight'.
  func makeGetValidatorSetByHeightInterceptors() -> [ClientInterceptor<Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightRequest, Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightResponse>]

  /// - Returns: Interceptors to use when invoking 'aBCIQuery'.
  func makeABCIQueryInterceptors() -> [ClientInterceptor<Cosmos_Base_Tendermint_V1beta1_ABCIQueryRequest, Cosmos_Base_Tendermint_V1beta1_ABCIQueryResponse>]
}

public enum Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Service",
    fullName: "cosmos.base.tendermint.v1beta1.Service",
    methods: [
      Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getNodeInfo,
      Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getSyncing,
      Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getLatestBlock,
      Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getBlockByHeight,
      Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getLatestValidatorSet,
      Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getValidatorSetByHeight,
      Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.aBCIQuery,
    ]
  )

  public enum Methods {
    public static let getNodeInfo = GRPCMethodDescriptor(
      name: "GetNodeInfo",
      path: "/cosmos.base.tendermint.v1beta1.Service/GetNodeInfo",
      type: GRPCCallType.unary
    )

    public static let getSyncing = GRPCMethodDescriptor(
      name: "GetSyncing",
      path: "/cosmos.base.tendermint.v1beta1.Service/GetSyncing",
      type: GRPCCallType.unary
    )

    public static let getLatestBlock = GRPCMethodDescriptor(
      name: "GetLatestBlock",
      path: "/cosmos.base.tendermint.v1beta1.Service/GetLatestBlock",
      type: GRPCCallType.unary
    )

    public static let getBlockByHeight = GRPCMethodDescriptor(
      name: "GetBlockByHeight",
      path: "/cosmos.base.tendermint.v1beta1.Service/GetBlockByHeight",
      type: GRPCCallType.unary
    )

    public static let getLatestValidatorSet = GRPCMethodDescriptor(
      name: "GetLatestValidatorSet",
      path: "/cosmos.base.tendermint.v1beta1.Service/GetLatestValidatorSet",
      type: GRPCCallType.unary
    )

    public static let getValidatorSetByHeight = GRPCMethodDescriptor(
      name: "GetValidatorSetByHeight",
      path: "/cosmos.base.tendermint.v1beta1.Service/GetValidatorSetByHeight",
      type: GRPCCallType.unary
    )

    public static let aBCIQuery = GRPCMethodDescriptor(
      name: "ABCIQuery",
      path: "/cosmos.base.tendermint.v1beta1.Service/ABCIQuery",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Cosmos_Base_Tendermint_V1beta1_ServiceTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Cosmos_Base_Tendermint_V1beta1_ServiceTestClient: Cosmos_Base_Tendermint_V1beta1_ServiceClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Base_Tendermint_V1beta1_ServiceClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Base_Tendermint_V1beta1_ServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the GetNodeInfo RPC. This must be called
  /// before calling 'getNodeInfo'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetNodeInfoResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Tendermint_V1beta1_GetNodeInfoRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Base_Tendermint_V1beta1_GetNodeInfoRequest, Cosmos_Base_Tendermint_V1beta1_GetNodeInfoResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getNodeInfo.path, requestHandler: requestHandler)
  }

  public func enqueueGetNodeInfoResponse(
    _ response: Cosmos_Base_Tendermint_V1beta1_GetNodeInfoResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Tendermint_V1beta1_GetNodeInfoRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetNodeInfoResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetNodeInfo'
  public var hasGetNodeInfoResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getNodeInfo.path)
  }

  /// Make a unary response for the GetSyncing RPC. This must be called
  /// before calling 'getSyncing'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetSyncingResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Tendermint_V1beta1_GetSyncingRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Base_Tendermint_V1beta1_GetSyncingRequest, Cosmos_Base_Tendermint_V1beta1_GetSyncingResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getSyncing.path, requestHandler: requestHandler)
  }

  public func enqueueGetSyncingResponse(
    _ response: Cosmos_Base_Tendermint_V1beta1_GetSyncingResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Tendermint_V1beta1_GetSyncingRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetSyncingResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetSyncing'
  public var hasGetSyncingResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getSyncing.path)
  }

  /// Make a unary response for the GetLatestBlock RPC. This must be called
  /// before calling 'getLatestBlock'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetLatestBlockResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Tendermint_V1beta1_GetLatestBlockRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Base_Tendermint_V1beta1_GetLatestBlockRequest, Cosmos_Base_Tendermint_V1beta1_GetLatestBlockResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getLatestBlock.path, requestHandler: requestHandler)
  }

  public func enqueueGetLatestBlockResponse(
    _ response: Cosmos_Base_Tendermint_V1beta1_GetLatestBlockResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Tendermint_V1beta1_GetLatestBlockRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetLatestBlockResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetLatestBlock'
  public var hasGetLatestBlockResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getLatestBlock.path)
  }

  /// Make a unary response for the GetBlockByHeight RPC. This must be called
  /// before calling 'getBlockByHeight'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetBlockByHeightResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightRequest, Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getBlockByHeight.path, requestHandler: requestHandler)
  }

  public func enqueueGetBlockByHeightResponse(
    _ response: Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Tendermint_V1beta1_GetBlockByHeightRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetBlockByHeightResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetBlockByHeight'
  public var hasGetBlockByHeightResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getBlockByHeight.path)
  }

  /// Make a unary response for the GetLatestValidatorSet RPC. This must be called
  /// before calling 'getLatestValidatorSet'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetLatestValidatorSetResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetRequest, Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getLatestValidatorSet.path, requestHandler: requestHandler)
  }

  public func enqueueGetLatestValidatorSetResponse(
    _ response: Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Tendermint_V1beta1_GetLatestValidatorSetRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetLatestValidatorSetResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetLatestValidatorSet'
  public var hasGetLatestValidatorSetResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getLatestValidatorSet.path)
  }

  /// Make a unary response for the GetValidatorSetByHeight RPC. This must be called
  /// before calling 'getValidatorSetByHeight'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetValidatorSetByHeightResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightRequest, Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getValidatorSetByHeight.path, requestHandler: requestHandler)
  }

  public func enqueueGetValidatorSetByHeightResponse(
    _ response: Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Tendermint_V1beta1_GetValidatorSetByHeightRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetValidatorSetByHeightResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetValidatorSetByHeight'
  public var hasGetValidatorSetByHeightResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.getValidatorSetByHeight.path)
  }

  /// Make a unary response for the ABCIQuery RPC. This must be called
  /// before calling 'aBCIQuery'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeABCIQueryResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Tendermint_V1beta1_ABCIQueryRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Base_Tendermint_V1beta1_ABCIQueryRequest, Cosmos_Base_Tendermint_V1beta1_ABCIQueryResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.aBCIQuery.path, requestHandler: requestHandler)
  }

  public func enqueueABCIQueryResponse(
    _ response: Cosmos_Base_Tendermint_V1beta1_ABCIQueryResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Tendermint_V1beta1_ABCIQueryRequest>) -> () = { _ in }
  ) {
    let stream = self.makeABCIQueryResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'ABCIQuery'
  public var hasABCIQueryResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Base_Tendermint_V1beta1_ServiceClientMetadata.Methods.aBCIQuery.path)
  }
}

