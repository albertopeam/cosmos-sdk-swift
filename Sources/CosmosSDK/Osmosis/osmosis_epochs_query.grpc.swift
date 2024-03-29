//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: osmosis/epochs/query.proto
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


/// Query defines the gRPC querier service.
///
/// Usage: instantiate `Osmosis_Epochs_V1beta1_QueryClient`, then call methods of this protocol to make API calls.
public protocol Osmosis_Epochs_V1beta1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Osmosis_Epochs_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func epochInfos(
    _ request: Osmosis_Epochs_V1beta1_QueryEpochsInfoRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Osmosis_Epochs_V1beta1_QueryEpochsInfoRequest, Osmosis_Epochs_V1beta1_QueryEpochsInfoResponse>

  func currentEpoch(
    _ request: Osmosis_Epochs_V1beta1_QueryCurrentEpochRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Osmosis_Epochs_V1beta1_QueryCurrentEpochRequest, Osmosis_Epochs_V1beta1_QueryCurrentEpochResponse>
}

extension Osmosis_Epochs_V1beta1_QueryClientProtocol {
  public var serviceName: String {
    return "osmosis.epochs.v1beta1.Query"
  }

  /// EpochInfos provide running epochInfos
  ///
  /// - Parameters:
  ///   - request: Request to send to EpochInfos.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func epochInfos(
    _ request: Osmosis_Epochs_V1beta1_QueryEpochsInfoRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Osmosis_Epochs_V1beta1_QueryEpochsInfoRequest, Osmosis_Epochs_V1beta1_QueryEpochsInfoResponse> {
    return self.makeUnaryCall(
      path: Osmosis_Epochs_V1beta1_QueryClientMetadata.Methods.epochInfos.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEpochInfosInterceptors() ?? []
    )
  }

  /// CurrentEpoch provide current epoch of specified identifier
  ///
  /// - Parameters:
  ///   - request: Request to send to CurrentEpoch.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func currentEpoch(
    _ request: Osmosis_Epochs_V1beta1_QueryCurrentEpochRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Osmosis_Epochs_V1beta1_QueryCurrentEpochRequest, Osmosis_Epochs_V1beta1_QueryCurrentEpochResponse> {
    return self.makeUnaryCall(
      path: Osmosis_Epochs_V1beta1_QueryClientMetadata.Methods.currentEpoch.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCurrentEpochInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Osmosis_Epochs_V1beta1_QueryClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Osmosis_Epochs_V1beta1_QueryNIOClient")
public final class Osmosis_Epochs_V1beta1_QueryClient: Osmosis_Epochs_V1beta1_QueryClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Osmosis_Epochs_V1beta1_QueryClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Osmosis_Epochs_V1beta1_QueryClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the osmosis.epochs.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Epochs_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Osmosis_Epochs_V1beta1_QueryNIOClient: Osmosis_Epochs_V1beta1_QueryClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Osmosis_Epochs_V1beta1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the osmosis.epochs.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Epochs_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Query defines the gRPC querier service.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Osmosis_Epochs_V1beta1_QueryAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Osmosis_Epochs_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func makeEpochInfosCall(
    _ request: Osmosis_Epochs_V1beta1_QueryEpochsInfoRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Osmosis_Epochs_V1beta1_QueryEpochsInfoRequest, Osmosis_Epochs_V1beta1_QueryEpochsInfoResponse>

  func makeCurrentEpochCall(
    _ request: Osmosis_Epochs_V1beta1_QueryCurrentEpochRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Osmosis_Epochs_V1beta1_QueryCurrentEpochRequest, Osmosis_Epochs_V1beta1_QueryCurrentEpochResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Osmosis_Epochs_V1beta1_QueryAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Osmosis_Epochs_V1beta1_QueryClientMetadata.serviceDescriptor
  }

  public var interceptors: Osmosis_Epochs_V1beta1_QueryClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeEpochInfosCall(
    _ request: Osmosis_Epochs_V1beta1_QueryEpochsInfoRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Osmosis_Epochs_V1beta1_QueryEpochsInfoRequest, Osmosis_Epochs_V1beta1_QueryEpochsInfoResponse> {
    return self.makeAsyncUnaryCall(
      path: Osmosis_Epochs_V1beta1_QueryClientMetadata.Methods.epochInfos.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEpochInfosInterceptors() ?? []
    )
  }

  public func makeCurrentEpochCall(
    _ request: Osmosis_Epochs_V1beta1_QueryCurrentEpochRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Osmosis_Epochs_V1beta1_QueryCurrentEpochRequest, Osmosis_Epochs_V1beta1_QueryCurrentEpochResponse> {
    return self.makeAsyncUnaryCall(
      path: Osmosis_Epochs_V1beta1_QueryClientMetadata.Methods.currentEpoch.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCurrentEpochInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Osmosis_Epochs_V1beta1_QueryAsyncClientProtocol {
  public func epochInfos(
    _ request: Osmosis_Epochs_V1beta1_QueryEpochsInfoRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Osmosis_Epochs_V1beta1_QueryEpochsInfoResponse {
    return try await self.performAsyncUnaryCall(
      path: Osmosis_Epochs_V1beta1_QueryClientMetadata.Methods.epochInfos.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEpochInfosInterceptors() ?? []
    )
  }

  public func currentEpoch(
    _ request: Osmosis_Epochs_V1beta1_QueryCurrentEpochRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Osmosis_Epochs_V1beta1_QueryCurrentEpochResponse {
    return try await self.performAsyncUnaryCall(
      path: Osmosis_Epochs_V1beta1_QueryClientMetadata.Methods.currentEpoch.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCurrentEpochInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Osmosis_Epochs_V1beta1_QueryAsyncClient: Osmosis_Epochs_V1beta1_QueryAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Osmosis_Epochs_V1beta1_QueryClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Epochs_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Osmosis_Epochs_V1beta1_QueryClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'epochInfos'.
  func makeEpochInfosInterceptors() -> [ClientInterceptor<Osmosis_Epochs_V1beta1_QueryEpochsInfoRequest, Osmosis_Epochs_V1beta1_QueryEpochsInfoResponse>]

  /// - Returns: Interceptors to use when invoking 'currentEpoch'.
  func makeCurrentEpochInterceptors() -> [ClientInterceptor<Osmosis_Epochs_V1beta1_QueryCurrentEpochRequest, Osmosis_Epochs_V1beta1_QueryCurrentEpochResponse>]
}

public enum Osmosis_Epochs_V1beta1_QueryClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Query",
    fullName: "osmosis.epochs.v1beta1.Query",
    methods: [
      Osmosis_Epochs_V1beta1_QueryClientMetadata.Methods.epochInfos,
      Osmosis_Epochs_V1beta1_QueryClientMetadata.Methods.currentEpoch,
    ]
  )

  public enum Methods {
    public static let epochInfos = GRPCMethodDescriptor(
      name: "EpochInfos",
      path: "/osmosis.epochs.v1beta1.Query/EpochInfos",
      type: GRPCCallType.unary
    )

    public static let currentEpoch = GRPCMethodDescriptor(
      name: "CurrentEpoch",
      path: "/osmosis.epochs.v1beta1.Query/CurrentEpoch",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Osmosis_Epochs_V1beta1_QueryTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Osmosis_Epochs_V1beta1_QueryTestClient: Osmosis_Epochs_V1beta1_QueryClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Osmosis_Epochs_V1beta1_QueryClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Epochs_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the EpochInfos RPC. This must be called
  /// before calling 'epochInfos'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeEpochInfosResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Epochs_V1beta1_QueryEpochsInfoRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Osmosis_Epochs_V1beta1_QueryEpochsInfoRequest, Osmosis_Epochs_V1beta1_QueryEpochsInfoResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Osmosis_Epochs_V1beta1_QueryClientMetadata.Methods.epochInfos.path, requestHandler: requestHandler)
  }

  public func enqueueEpochInfosResponse(
    _ response: Osmosis_Epochs_V1beta1_QueryEpochsInfoResponse,
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Epochs_V1beta1_QueryEpochsInfoRequest>) -> () = { _ in }
  ) {
    let stream = self.makeEpochInfosResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'EpochInfos'
  public var hasEpochInfosResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Osmosis_Epochs_V1beta1_QueryClientMetadata.Methods.epochInfos.path)
  }

  /// Make a unary response for the CurrentEpoch RPC. This must be called
  /// before calling 'currentEpoch'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeCurrentEpochResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Epochs_V1beta1_QueryCurrentEpochRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Osmosis_Epochs_V1beta1_QueryCurrentEpochRequest, Osmosis_Epochs_V1beta1_QueryCurrentEpochResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Osmosis_Epochs_V1beta1_QueryClientMetadata.Methods.currentEpoch.path, requestHandler: requestHandler)
  }

  public func enqueueCurrentEpochResponse(
    _ response: Osmosis_Epochs_V1beta1_QueryCurrentEpochResponse,
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Epochs_V1beta1_QueryCurrentEpochRequest>) -> () = { _ in }
  ) {
    let stream = self.makeCurrentEpochResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'CurrentEpoch'
  public var hasCurrentEpochResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Osmosis_Epochs_V1beta1_QueryClientMetadata.Methods.currentEpoch.path)
  }
}

