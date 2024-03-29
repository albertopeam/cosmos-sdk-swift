//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: osmosis/mint/v1beta1/query.proto
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


/// Query provides defines the gRPC querier service.
///
/// Usage: instantiate `Osmosis_Mint_V1beta1_QueryClient`, then call methods of this protocol to make API calls.
public protocol Osmosis_Mint_V1beta1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Osmosis_Mint_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func params(
    _ request: Osmosis_Mint_V1beta1_QueryParamsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Osmosis_Mint_V1beta1_QueryParamsRequest, Osmosis_Mint_V1beta1_QueryParamsResponse>

  func epochProvisions(
    _ request: Osmosis_Mint_V1beta1_QueryEpochProvisionsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Osmosis_Mint_V1beta1_QueryEpochProvisionsRequest, Osmosis_Mint_V1beta1_QueryEpochProvisionsResponse>
}

extension Osmosis_Mint_V1beta1_QueryClientProtocol {
  public var serviceName: String {
    return "osmosis.mint.v1beta1.Query"
  }

  /// Params returns the total set of minting parameters.
  ///
  /// - Parameters:
  ///   - request: Request to send to Params.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func params(
    _ request: Osmosis_Mint_V1beta1_QueryParamsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Osmosis_Mint_V1beta1_QueryParamsRequest, Osmosis_Mint_V1beta1_QueryParamsResponse> {
    return self.makeUnaryCall(
      path: Osmosis_Mint_V1beta1_QueryClientMetadata.Methods.params.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeParamsInterceptors() ?? []
    )
  }

  /// EpochProvisions returns the current minting epoch provisions value.
  ///
  /// - Parameters:
  ///   - request: Request to send to EpochProvisions.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func epochProvisions(
    _ request: Osmosis_Mint_V1beta1_QueryEpochProvisionsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Osmosis_Mint_V1beta1_QueryEpochProvisionsRequest, Osmosis_Mint_V1beta1_QueryEpochProvisionsResponse> {
    return self.makeUnaryCall(
      path: Osmosis_Mint_V1beta1_QueryClientMetadata.Methods.epochProvisions.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEpochProvisionsInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Osmosis_Mint_V1beta1_QueryClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Osmosis_Mint_V1beta1_QueryNIOClient")
public final class Osmosis_Mint_V1beta1_QueryClient: Osmosis_Mint_V1beta1_QueryClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Osmosis_Mint_V1beta1_QueryClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Osmosis_Mint_V1beta1_QueryClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the osmosis.mint.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Mint_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Osmosis_Mint_V1beta1_QueryNIOClient: Osmosis_Mint_V1beta1_QueryClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Osmosis_Mint_V1beta1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the osmosis.mint.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Mint_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Query provides defines the gRPC querier service.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Osmosis_Mint_V1beta1_QueryAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Osmosis_Mint_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func makeParamsCall(
    _ request: Osmosis_Mint_V1beta1_QueryParamsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Osmosis_Mint_V1beta1_QueryParamsRequest, Osmosis_Mint_V1beta1_QueryParamsResponse>

  func makeEpochProvisionsCall(
    _ request: Osmosis_Mint_V1beta1_QueryEpochProvisionsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Osmosis_Mint_V1beta1_QueryEpochProvisionsRequest, Osmosis_Mint_V1beta1_QueryEpochProvisionsResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Osmosis_Mint_V1beta1_QueryAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Osmosis_Mint_V1beta1_QueryClientMetadata.serviceDescriptor
  }

  public var interceptors: Osmosis_Mint_V1beta1_QueryClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeParamsCall(
    _ request: Osmosis_Mint_V1beta1_QueryParamsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Osmosis_Mint_V1beta1_QueryParamsRequest, Osmosis_Mint_V1beta1_QueryParamsResponse> {
    return self.makeAsyncUnaryCall(
      path: Osmosis_Mint_V1beta1_QueryClientMetadata.Methods.params.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeParamsInterceptors() ?? []
    )
  }

  public func makeEpochProvisionsCall(
    _ request: Osmosis_Mint_V1beta1_QueryEpochProvisionsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Osmosis_Mint_V1beta1_QueryEpochProvisionsRequest, Osmosis_Mint_V1beta1_QueryEpochProvisionsResponse> {
    return self.makeAsyncUnaryCall(
      path: Osmosis_Mint_V1beta1_QueryClientMetadata.Methods.epochProvisions.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEpochProvisionsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Osmosis_Mint_V1beta1_QueryAsyncClientProtocol {
  public func params(
    _ request: Osmosis_Mint_V1beta1_QueryParamsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Osmosis_Mint_V1beta1_QueryParamsResponse {
    return try await self.performAsyncUnaryCall(
      path: Osmosis_Mint_V1beta1_QueryClientMetadata.Methods.params.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeParamsInterceptors() ?? []
    )
  }

  public func epochProvisions(
    _ request: Osmosis_Mint_V1beta1_QueryEpochProvisionsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Osmosis_Mint_V1beta1_QueryEpochProvisionsResponse {
    return try await self.performAsyncUnaryCall(
      path: Osmosis_Mint_V1beta1_QueryClientMetadata.Methods.epochProvisions.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEpochProvisionsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Osmosis_Mint_V1beta1_QueryAsyncClient: Osmosis_Mint_V1beta1_QueryAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Osmosis_Mint_V1beta1_QueryClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Mint_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Osmosis_Mint_V1beta1_QueryClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'params'.
  func makeParamsInterceptors() -> [ClientInterceptor<Osmosis_Mint_V1beta1_QueryParamsRequest, Osmosis_Mint_V1beta1_QueryParamsResponse>]

  /// - Returns: Interceptors to use when invoking 'epochProvisions'.
  func makeEpochProvisionsInterceptors() -> [ClientInterceptor<Osmosis_Mint_V1beta1_QueryEpochProvisionsRequest, Osmosis_Mint_V1beta1_QueryEpochProvisionsResponse>]
}

public enum Osmosis_Mint_V1beta1_QueryClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Query",
    fullName: "osmosis.mint.v1beta1.Query",
    methods: [
      Osmosis_Mint_V1beta1_QueryClientMetadata.Methods.params,
      Osmosis_Mint_V1beta1_QueryClientMetadata.Methods.epochProvisions,
    ]
  )

  public enum Methods {
    public static let params = GRPCMethodDescriptor(
      name: "Params",
      path: "/osmosis.mint.v1beta1.Query/Params",
      type: GRPCCallType.unary
    )

    public static let epochProvisions = GRPCMethodDescriptor(
      name: "EpochProvisions",
      path: "/osmosis.mint.v1beta1.Query/EpochProvisions",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Osmosis_Mint_V1beta1_QueryTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Osmosis_Mint_V1beta1_QueryTestClient: Osmosis_Mint_V1beta1_QueryClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Osmosis_Mint_V1beta1_QueryClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Mint_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the Params RPC. This must be called
  /// before calling 'params'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeParamsResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Mint_V1beta1_QueryParamsRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Osmosis_Mint_V1beta1_QueryParamsRequest, Osmosis_Mint_V1beta1_QueryParamsResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Osmosis_Mint_V1beta1_QueryClientMetadata.Methods.params.path, requestHandler: requestHandler)
  }

  public func enqueueParamsResponse(
    _ response: Osmosis_Mint_V1beta1_QueryParamsResponse,
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Mint_V1beta1_QueryParamsRequest>) -> () = { _ in }
  ) {
    let stream = self.makeParamsResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Params'
  public var hasParamsResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Osmosis_Mint_V1beta1_QueryClientMetadata.Methods.params.path)
  }

  /// Make a unary response for the EpochProvisions RPC. This must be called
  /// before calling 'epochProvisions'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeEpochProvisionsResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Mint_V1beta1_QueryEpochProvisionsRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Osmosis_Mint_V1beta1_QueryEpochProvisionsRequest, Osmosis_Mint_V1beta1_QueryEpochProvisionsResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Osmosis_Mint_V1beta1_QueryClientMetadata.Methods.epochProvisions.path, requestHandler: requestHandler)
  }

  public func enqueueEpochProvisionsResponse(
    _ response: Osmosis_Mint_V1beta1_QueryEpochProvisionsResponse,
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Mint_V1beta1_QueryEpochProvisionsRequest>) -> () = { _ in }
  ) {
    let stream = self.makeEpochProvisionsResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'EpochProvisions'
  public var hasEpochProvisionsResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Osmosis_Mint_V1beta1_QueryClientMetadata.Methods.epochProvisions.path)
  }
}

