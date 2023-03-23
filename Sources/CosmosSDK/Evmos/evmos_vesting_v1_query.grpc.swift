//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: evmos/vesting/v1/query.proto
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
/// Usage: instantiate `Evmos_Vesting_V1_QueryClient`, then call methods of this protocol to make API calls.
public protocol Evmos_Vesting_V1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Evmos_Vesting_V1_QueryClientInterceptorFactoryProtocol? { get }

  func balances(
    _ request: Evmos_Vesting_V1_QueryBalancesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Evmos_Vesting_V1_QueryBalancesRequest, Evmos_Vesting_V1_QueryBalancesResponse>
}

extension Evmos_Vesting_V1_QueryClientProtocol {
  public var serviceName: String {
    return "evmos.vesting.v1.Query"
  }

  /// Balances retrieves the unvested, vested and locked tokens for a vesting account
  ///
  /// - Parameters:
  ///   - request: Request to send to Balances.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func balances(
    _ request: Evmos_Vesting_V1_QueryBalancesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Evmos_Vesting_V1_QueryBalancesRequest, Evmos_Vesting_V1_QueryBalancesResponse> {
    return self.makeUnaryCall(
      path: Evmos_Vesting_V1_QueryClientMetadata.Methods.balances.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeBalancesInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Evmos_Vesting_V1_QueryClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Evmos_Vesting_V1_QueryNIOClient")
public final class Evmos_Vesting_V1_QueryClient: Evmos_Vesting_V1_QueryClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Evmos_Vesting_V1_QueryClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Evmos_Vesting_V1_QueryClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the evmos.vesting.v1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Vesting_V1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Evmos_Vesting_V1_QueryNIOClient: Evmos_Vesting_V1_QueryClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Evmos_Vesting_V1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the evmos.vesting.v1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Vesting_V1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Query defines the gRPC querier service.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Evmos_Vesting_V1_QueryAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Evmos_Vesting_V1_QueryClientInterceptorFactoryProtocol? { get }

  func makeBalancesCall(
    _ request: Evmos_Vesting_V1_QueryBalancesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Evmos_Vesting_V1_QueryBalancesRequest, Evmos_Vesting_V1_QueryBalancesResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Evmos_Vesting_V1_QueryAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Evmos_Vesting_V1_QueryClientMetadata.serviceDescriptor
  }

  public var interceptors: Evmos_Vesting_V1_QueryClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeBalancesCall(
    _ request: Evmos_Vesting_V1_QueryBalancesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Evmos_Vesting_V1_QueryBalancesRequest, Evmos_Vesting_V1_QueryBalancesResponse> {
    return self.makeAsyncUnaryCall(
      path: Evmos_Vesting_V1_QueryClientMetadata.Methods.balances.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeBalancesInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Evmos_Vesting_V1_QueryAsyncClientProtocol {
  public func balances(
    _ request: Evmos_Vesting_V1_QueryBalancesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Evmos_Vesting_V1_QueryBalancesResponse {
    return try await self.performAsyncUnaryCall(
      path: Evmos_Vesting_V1_QueryClientMetadata.Methods.balances.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeBalancesInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Evmos_Vesting_V1_QueryAsyncClient: Evmos_Vesting_V1_QueryAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Evmos_Vesting_V1_QueryClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Vesting_V1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Evmos_Vesting_V1_QueryClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'balances'.
  func makeBalancesInterceptors() -> [ClientInterceptor<Evmos_Vesting_V1_QueryBalancesRequest, Evmos_Vesting_V1_QueryBalancesResponse>]
}

public enum Evmos_Vesting_V1_QueryClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Query",
    fullName: "evmos.vesting.v1.Query",
    methods: [
      Evmos_Vesting_V1_QueryClientMetadata.Methods.balances,
    ]
  )

  public enum Methods {
    public static let balances = GRPCMethodDescriptor(
      name: "Balances",
      path: "/evmos.vesting.v1.Query/Balances",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Evmos_Vesting_V1_QueryTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Evmos_Vesting_V1_QueryTestClient: Evmos_Vesting_V1_QueryClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Evmos_Vesting_V1_QueryClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Vesting_V1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the Balances RPC. This must be called
  /// before calling 'balances'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeBalancesResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Vesting_V1_QueryBalancesRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Evmos_Vesting_V1_QueryBalancesRequest, Evmos_Vesting_V1_QueryBalancesResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Evmos_Vesting_V1_QueryClientMetadata.Methods.balances.path, requestHandler: requestHandler)
  }

  public func enqueueBalancesResponse(
    _ response: Evmos_Vesting_V1_QueryBalancesResponse,
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Vesting_V1_QueryBalancesRequest>) -> () = { _ in }
  ) {
    let stream = self.makeBalancesResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Balances'
  public var hasBalancesResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Evmos_Vesting_V1_QueryClientMetadata.Methods.balances.path)
  }
}

