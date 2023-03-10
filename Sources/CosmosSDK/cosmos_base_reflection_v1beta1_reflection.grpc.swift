//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: cosmos/base/reflection/v1beta1/reflection.proto
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


/// ReflectionService defines a service for interface reflection.
///
/// Usage: instantiate `Cosmos_Base_Reflection_V1beta1_ReflectionServiceClient`, then call methods of this protocol to make API calls.
public protocol Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientInterceptorFactoryProtocol? { get }

  func listAllInterfaces(
    _ request: Cosmos_Base_Reflection_V1beta1_ListAllInterfacesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Base_Reflection_V1beta1_ListAllInterfacesRequest, Cosmos_Base_Reflection_V1beta1_ListAllInterfacesResponse>

  func listImplementations(
    _ request: Cosmos_Base_Reflection_V1beta1_ListImplementationsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Base_Reflection_V1beta1_ListImplementationsRequest, Cosmos_Base_Reflection_V1beta1_ListImplementationsResponse>
}

extension Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientProtocol {
  public var serviceName: String {
    return "cosmos.base.reflection.v1beta1.ReflectionService"
  }

  /// ListAllInterfaces lists all the interfaces registered in the interface
  /// registry.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListAllInterfaces.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listAllInterfaces(
    _ request: Cosmos_Base_Reflection_V1beta1_ListAllInterfacesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Base_Reflection_V1beta1_ListAllInterfacesRequest, Cosmos_Base_Reflection_V1beta1_ListAllInterfacesResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientMetadata.Methods.listAllInterfaces.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListAllInterfacesInterceptors() ?? []
    )
  }

  /// ListImplementations list all the concrete types that implement a given
  /// interface.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListImplementations.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listImplementations(
    _ request: Cosmos_Base_Reflection_V1beta1_ListImplementationsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Base_Reflection_V1beta1_ListImplementationsRequest, Cosmos_Base_Reflection_V1beta1_ListImplementationsResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientMetadata.Methods.listImplementations.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListImplementationsInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Cosmos_Base_Reflection_V1beta1_ReflectionServiceClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Cosmos_Base_Reflection_V1beta1_ReflectionServiceNIOClient")
public final class Cosmos_Base_Reflection_V1beta1_ReflectionServiceClient: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the cosmos.base.reflection.v1beta1.ReflectionService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Cosmos_Base_Reflection_V1beta1_ReflectionServiceNIOClient: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the cosmos.base.reflection.v1beta1.ReflectionService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// ReflectionService defines a service for interface reflection.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Cosmos_Base_Reflection_V1beta1_ReflectionServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientInterceptorFactoryProtocol? { get }

  func makeListAllInterfacesCall(
    _ request: Cosmos_Base_Reflection_V1beta1_ListAllInterfacesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Reflection_V1beta1_ListAllInterfacesRequest, Cosmos_Base_Reflection_V1beta1_ListAllInterfacesResponse>

  func makeListImplementationsCall(
    _ request: Cosmos_Base_Reflection_V1beta1_ListImplementationsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Reflection_V1beta1_ListImplementationsRequest, Cosmos_Base_Reflection_V1beta1_ListImplementationsResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Base_Reflection_V1beta1_ReflectionServiceAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientMetadata.serviceDescriptor
  }

  public var interceptors: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeListAllInterfacesCall(
    _ request: Cosmos_Base_Reflection_V1beta1_ListAllInterfacesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Reflection_V1beta1_ListAllInterfacesRequest, Cosmos_Base_Reflection_V1beta1_ListAllInterfacesResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientMetadata.Methods.listAllInterfaces.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListAllInterfacesInterceptors() ?? []
    )
  }

  public func makeListImplementationsCall(
    _ request: Cosmos_Base_Reflection_V1beta1_ListImplementationsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Base_Reflection_V1beta1_ListImplementationsRequest, Cosmos_Base_Reflection_V1beta1_ListImplementationsResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientMetadata.Methods.listImplementations.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListImplementationsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Base_Reflection_V1beta1_ReflectionServiceAsyncClientProtocol {
  public func listAllInterfaces(
    _ request: Cosmos_Base_Reflection_V1beta1_ListAllInterfacesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Base_Reflection_V1beta1_ListAllInterfacesResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientMetadata.Methods.listAllInterfaces.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListAllInterfacesInterceptors() ?? []
    )
  }

  public func listImplementations(
    _ request: Cosmos_Base_Reflection_V1beta1_ListImplementationsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Base_Reflection_V1beta1_ListImplementationsResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientMetadata.Methods.listImplementations.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListImplementationsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Cosmos_Base_Reflection_V1beta1_ReflectionServiceAsyncClient: Cosmos_Base_Reflection_V1beta1_ReflectionServiceAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'listAllInterfaces'.
  func makeListAllInterfacesInterceptors() -> [ClientInterceptor<Cosmos_Base_Reflection_V1beta1_ListAllInterfacesRequest, Cosmos_Base_Reflection_V1beta1_ListAllInterfacesResponse>]

  /// - Returns: Interceptors to use when invoking 'listImplementations'.
  func makeListImplementationsInterceptors() -> [ClientInterceptor<Cosmos_Base_Reflection_V1beta1_ListImplementationsRequest, Cosmos_Base_Reflection_V1beta1_ListImplementationsResponse>]
}

public enum Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "ReflectionService",
    fullName: "cosmos.base.reflection.v1beta1.ReflectionService",
    methods: [
      Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientMetadata.Methods.listAllInterfaces,
      Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientMetadata.Methods.listImplementations,
    ]
  )

  public enum Methods {
    public static let listAllInterfaces = GRPCMethodDescriptor(
      name: "ListAllInterfaces",
      path: "/cosmos.base.reflection.v1beta1.ReflectionService/ListAllInterfaces",
      type: GRPCCallType.unary
    )

    public static let listImplementations = GRPCMethodDescriptor(
      name: "ListImplementations",
      path: "/cosmos.base.reflection.v1beta1.ReflectionService/ListImplementations",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Cosmos_Base_Reflection_V1beta1_ReflectionServiceTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Cosmos_Base_Reflection_V1beta1_ReflectionServiceTestClient: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the ListAllInterfaces RPC. This must be called
  /// before calling 'listAllInterfaces'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeListAllInterfacesResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Reflection_V1beta1_ListAllInterfacesRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Base_Reflection_V1beta1_ListAllInterfacesRequest, Cosmos_Base_Reflection_V1beta1_ListAllInterfacesResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientMetadata.Methods.listAllInterfaces.path, requestHandler: requestHandler)
  }

  public func enqueueListAllInterfacesResponse(
    _ response: Cosmos_Base_Reflection_V1beta1_ListAllInterfacesResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Reflection_V1beta1_ListAllInterfacesRequest>) -> () = { _ in }
  ) {
    let stream = self.makeListAllInterfacesResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'ListAllInterfaces'
  public var hasListAllInterfacesResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientMetadata.Methods.listAllInterfaces.path)
  }

  /// Make a unary response for the ListImplementations RPC. This must be called
  /// before calling 'listImplementations'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeListImplementationsResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Reflection_V1beta1_ListImplementationsRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Base_Reflection_V1beta1_ListImplementationsRequest, Cosmos_Base_Reflection_V1beta1_ListImplementationsResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientMetadata.Methods.listImplementations.path, requestHandler: requestHandler)
  }

  public func enqueueListImplementationsResponse(
    _ response: Cosmos_Base_Reflection_V1beta1_ListImplementationsResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Base_Reflection_V1beta1_ListImplementationsRequest>) -> () = { _ in }
  ) {
    let stream = self.makeListImplementationsResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'ListImplementations'
  public var hasListImplementationsResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Base_Reflection_V1beta1_ReflectionServiceClientMetadata.Methods.listImplementations.path)
  }
}

