//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: cosmos/base/node/v1beta1/query.proto
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


/// Service defines the gRPC querier service for node related queries.
///
/// Usage: instantiate `Cosmos_Base_Node_V1beta1_ServiceClient`, then call methods of this protocol to make API calls.
public protocol Cosmos_Base_Node_V1beta1_ServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Cosmos_Base_Node_V1beta1_ServiceClientInterceptorFactoryProtocol? { get }

  func config(
    _ request: Cosmos_Base_Node_V1beta1_ConfigRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Base_Node_V1beta1_ConfigRequest, Cosmos_Base_Node_V1beta1_ConfigResponse>
}

extension Cosmos_Base_Node_V1beta1_ServiceClientProtocol {
  public var serviceName: String {
    return "cosmos.base.node.v1beta1.Service"
  }

  /// Config queries for the operator configuration.
  ///
  /// - Parameters:
  ///   - request: Request to send to Config.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func config(
    _ request: Cosmos_Base_Node_V1beta1_ConfigRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Base_Node_V1beta1_ConfigRequest, Cosmos_Base_Node_V1beta1_ConfigResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Base_Node_V1beta1_ServiceClientMetadata.Methods.config.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeConfigInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Cosmos_Base_Node_V1beta1_ServiceClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Cosmos_Base_Node_V1beta1_ServiceNIOClient")
public final class Cosmos_Base_Node_V1beta1_ServiceClient: Cosmos_Base_Node_V1beta1_ServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Cosmos_Base_Node_V1beta1_ServiceClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Cosmos_Base_Node_V1beta1_ServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the cosmos.base.node.v1beta1.Service service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Base_Node_V1beta1_ServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Cosmos_Base_Node_V1beta1_ServiceNIOClient: Cosmos_Base_Node_V1beta1_ServiceClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Base_Node_V1beta1_ServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the cosmos.base.node.v1beta1.Service service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Base_Node_V1beta1_ServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Service defines the gRPC querier service for node related queries.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Cosmos_Base_Node_V1beta1_ServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Cosmos_Base_Node_V1beta1_ServiceClientInterceptorFactoryProtocol? { get }

  func makeConfigCall(
    _ request: Cosmos_Base_Node_V1beta1_ConfigRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Node_V1beta1_ConfigRequest, Cosmos_Base_Node_V1beta1_ConfigResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Base_Node_V1beta1_ServiceAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Cosmos_Base_Node_V1beta1_ServiceClientMetadata.serviceDescriptor
  }

  public var interceptors: Cosmos_Base_Node_V1beta1_ServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeConfigCall(
    _ request: Cosmos_Base_Node_V1beta1_ConfigRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Node_V1beta1_ConfigRequest, Cosmos_Base_Node_V1beta1_ConfigResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Base_Node_V1beta1_ServiceClientMetadata.Methods.config.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeConfigInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Base_Node_V1beta1_ServiceAsyncClientProtocol {
  public func config(
    _ request: Cosmos_Base_Node_V1beta1_ConfigRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Base_Node_V1beta1_ConfigResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Base_Node_V1beta1_ServiceClientMetadata.Methods.config.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeConfigInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Cosmos_Base_Node_V1beta1_ServiceAsyncClient: Cosmos_Base_Node_V1beta1_ServiceAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Base_Node_V1beta1_ServiceClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Base_Node_V1beta1_ServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Cosmos_Base_Node_V1beta1_ServiceClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'config'.
  func makeConfigInterceptors() -> [ClientInterceptor<Cosmos_Base_Node_V1beta1_ConfigRequest, Cosmos_Base_Node_V1beta1_ConfigResponse>]
}

public enum Cosmos_Base_Node_V1beta1_ServiceClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Service",
    fullName: "cosmos.base.node.v1beta1.Service",
    methods: [
      Cosmos_Base_Node_V1beta1_ServiceClientMetadata.Methods.config,
    ]
  )

  public enum Methods {
    public static let config = GRPCMethodDescriptor(
      name: "Config",
      path: "/cosmos.base.node.v1beta1.Service/Config",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Cosmos_Base_Node_V1beta1_ServiceTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Cosmos_Base_Node_V1beta1_ServiceTestClient: Cosmos_Base_Node_V1beta1_ServiceClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Base_Node_V1beta1_ServiceClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Base_Node_V1beta1_ServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the Config RPC. This must be called
  /// before calling 'config'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeConfigResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Node_V1beta1_ConfigRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Base_Node_V1beta1_ConfigRequest, Cosmos_Base_Node_V1beta1_ConfigResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Base_Node_V1beta1_ServiceClientMetadata.Methods.config.path, requestHandler: requestHandler)
  }

  public func enqueueConfigResponse(
    _ response: Cosmos_Base_Node_V1beta1_ConfigResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Node_V1beta1_ConfigRequest>) -> () = { _ in }
  ) {
    let stream = self.makeConfigResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Config'
  public var hasConfigResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Base_Node_V1beta1_ServiceClientMetadata.Methods.config.path)
  }
}

