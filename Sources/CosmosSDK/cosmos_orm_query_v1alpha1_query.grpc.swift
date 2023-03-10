//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: cosmos/orm/query/v1alpha1/query.proto
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


/// Query is a generic gRPC service for querying ORM data.
///
/// Usage: instantiate `Cosmos_Orm_Query_V1alpha1_QueryClient`, then call methods of this protocol to make API calls.
public protocol Cosmos_Orm_Query_V1alpha1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Cosmos_Orm_Query_V1alpha1_QueryClientInterceptorFactoryProtocol? { get }

  func get(
    _ request: Cosmos_Orm_Query_V1alpha1_GetRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Orm_Query_V1alpha1_GetRequest, Cosmos_Orm_Query_V1alpha1_GetResponse>

  func list(
    _ request: Cosmos_Orm_Query_V1alpha1_ListRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Orm_Query_V1alpha1_ListRequest, Cosmos_Orm_Query_V1alpha1_ListResponse>
}

extension Cosmos_Orm_Query_V1alpha1_QueryClientProtocol {
  public var serviceName: String {
    return "cosmos.orm.query.v1alpha1.Query"
  }

  /// Get queries an ORM table against an unique index.
  ///
  /// - Parameters:
  ///   - request: Request to send to Get.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func get(
    _ request: Cosmos_Orm_Query_V1alpha1_GetRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Orm_Query_V1alpha1_GetRequest, Cosmos_Orm_Query_V1alpha1_GetResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Orm_Query_V1alpha1_QueryClientMetadata.Methods.get.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetInterceptors() ?? []
    )
  }

  /// List queries an ORM table against an index.
  ///
  /// - Parameters:
  ///   - request: Request to send to List.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func list(
    _ request: Cosmos_Orm_Query_V1alpha1_ListRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Orm_Query_V1alpha1_ListRequest, Cosmos_Orm_Query_V1alpha1_ListResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Orm_Query_V1alpha1_QueryClientMetadata.Methods.list.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Cosmos_Orm_Query_V1alpha1_QueryClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Cosmos_Orm_Query_V1alpha1_QueryNIOClient")
public final class Cosmos_Orm_Query_V1alpha1_QueryClient: Cosmos_Orm_Query_V1alpha1_QueryClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Cosmos_Orm_Query_V1alpha1_QueryClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Cosmos_Orm_Query_V1alpha1_QueryClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the cosmos.orm.query.v1alpha1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Orm_Query_V1alpha1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Cosmos_Orm_Query_V1alpha1_QueryNIOClient: Cosmos_Orm_Query_V1alpha1_QueryClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Orm_Query_V1alpha1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the cosmos.orm.query.v1alpha1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Orm_Query_V1alpha1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Query is a generic gRPC service for querying ORM data.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Cosmos_Orm_Query_V1alpha1_QueryAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Cosmos_Orm_Query_V1alpha1_QueryClientInterceptorFactoryProtocol? { get }

  func makeGetCall(
    _ request: Cosmos_Orm_Query_V1alpha1_GetRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Orm_Query_V1alpha1_GetRequest, Cosmos_Orm_Query_V1alpha1_GetResponse>

  func makeListCall(
    _ request: Cosmos_Orm_Query_V1alpha1_ListRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Orm_Query_V1alpha1_ListRequest, Cosmos_Orm_Query_V1alpha1_ListResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Orm_Query_V1alpha1_QueryAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Cosmos_Orm_Query_V1alpha1_QueryClientMetadata.serviceDescriptor
  }

  public var interceptors: Cosmos_Orm_Query_V1alpha1_QueryClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetCall(
    _ request: Cosmos_Orm_Query_V1alpha1_GetRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Orm_Query_V1alpha1_GetRequest, Cosmos_Orm_Query_V1alpha1_GetResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Orm_Query_V1alpha1_QueryClientMetadata.Methods.get.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetInterceptors() ?? []
    )
  }

  public func makeListCall(
    _ request: Cosmos_Orm_Query_V1alpha1_ListRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Orm_Query_V1alpha1_ListRequest, Cosmos_Orm_Query_V1alpha1_ListResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Orm_Query_V1alpha1_QueryClientMetadata.Methods.list.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Orm_Query_V1alpha1_QueryAsyncClientProtocol {
  public func get(
    _ request: Cosmos_Orm_Query_V1alpha1_GetRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Orm_Query_V1alpha1_GetResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Orm_Query_V1alpha1_QueryClientMetadata.Methods.get.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetInterceptors() ?? []
    )
  }

  public func list(
    _ request: Cosmos_Orm_Query_V1alpha1_ListRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Orm_Query_V1alpha1_ListResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Orm_Query_V1alpha1_QueryClientMetadata.Methods.list.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Cosmos_Orm_Query_V1alpha1_QueryAsyncClient: Cosmos_Orm_Query_V1alpha1_QueryAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Orm_Query_V1alpha1_QueryClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Orm_Query_V1alpha1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Cosmos_Orm_Query_V1alpha1_QueryClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'get'.
  func makeGetInterceptors() -> [ClientInterceptor<Cosmos_Orm_Query_V1alpha1_GetRequest, Cosmos_Orm_Query_V1alpha1_GetResponse>]

  /// - Returns: Interceptors to use when invoking 'list'.
  func makeListInterceptors() -> [ClientInterceptor<Cosmos_Orm_Query_V1alpha1_ListRequest, Cosmos_Orm_Query_V1alpha1_ListResponse>]
}

public enum Cosmos_Orm_Query_V1alpha1_QueryClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Query",
    fullName: "cosmos.orm.query.v1alpha1.Query",
    methods: [
      Cosmos_Orm_Query_V1alpha1_QueryClientMetadata.Methods.get,
      Cosmos_Orm_Query_V1alpha1_QueryClientMetadata.Methods.list,
    ]
  )

  public enum Methods {
    public static let get = GRPCMethodDescriptor(
      name: "Get",
      path: "/cosmos.orm.query.v1alpha1.Query/Get",
      type: GRPCCallType.unary
    )

    public static let list = GRPCMethodDescriptor(
      name: "List",
      path: "/cosmos.orm.query.v1alpha1.Query/List",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Cosmos_Orm_Query_V1alpha1_QueryTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Cosmos_Orm_Query_V1alpha1_QueryTestClient: Cosmos_Orm_Query_V1alpha1_QueryClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Orm_Query_V1alpha1_QueryClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Orm_Query_V1alpha1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the Get RPC. This must be called
  /// before calling 'get'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Orm_Query_V1alpha1_GetRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Orm_Query_V1alpha1_GetRequest, Cosmos_Orm_Query_V1alpha1_GetResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Orm_Query_V1alpha1_QueryClientMetadata.Methods.get.path, requestHandler: requestHandler)
  }

  public func enqueueGetResponse(
    _ response: Cosmos_Orm_Query_V1alpha1_GetResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Orm_Query_V1alpha1_GetRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Get'
  public var hasGetResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Orm_Query_V1alpha1_QueryClientMetadata.Methods.get.path)
  }

  /// Make a unary response for the List RPC. This must be called
  /// before calling 'list'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeListResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Orm_Query_V1alpha1_ListRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Orm_Query_V1alpha1_ListRequest, Cosmos_Orm_Query_V1alpha1_ListResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Orm_Query_V1alpha1_QueryClientMetadata.Methods.list.path, requestHandler: requestHandler)
  }

  public func enqueueListResponse(
    _ response: Cosmos_Orm_Query_V1alpha1_ListResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Orm_Query_V1alpha1_ListRequest>) -> () = { _ in }
  ) {
    let stream = self.makeListResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'List'
  public var hasListResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Orm_Query_V1alpha1_QueryClientMetadata.Methods.list.path)
  }
}

