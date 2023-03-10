//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: cosmos/reflection/v1/reflection.proto
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


/// Package cosmos.reflection.v1 provides support for inspecting protobuf
/// file descriptors.
///
/// Usage: instantiate `Cosmos_Reflection_V1_ReflectionServiceClient`, then call methods of this protocol to make API calls.
public protocol Cosmos_Reflection_V1_ReflectionServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Cosmos_Reflection_V1_ReflectionServiceClientInterceptorFactoryProtocol? { get }

  func fileDescriptors(
    _ request: Cosmos_Reflection_V1_FileDescriptorsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Reflection_V1_FileDescriptorsRequest, Cosmos_Reflection_V1_FileDescriptorsResponse>
}

extension Cosmos_Reflection_V1_ReflectionServiceClientProtocol {
  public var serviceName: String {
    return "cosmos.reflection.v1.ReflectionService"
  }

  /// FileDescriptors queries all the file descriptors in the app in order
  /// to enable easier generation of dynamic clients.
  ///
  /// - Parameters:
  ///   - request: Request to send to FileDescriptors.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func fileDescriptors(
    _ request: Cosmos_Reflection_V1_FileDescriptorsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Reflection_V1_FileDescriptorsRequest, Cosmos_Reflection_V1_FileDescriptorsResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Reflection_V1_ReflectionServiceClientMetadata.Methods.fileDescriptors.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeFileDescriptorsInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Cosmos_Reflection_V1_ReflectionServiceClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Cosmos_Reflection_V1_ReflectionServiceNIOClient")
public final class Cosmos_Reflection_V1_ReflectionServiceClient: Cosmos_Reflection_V1_ReflectionServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Cosmos_Reflection_V1_ReflectionServiceClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Cosmos_Reflection_V1_ReflectionServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the cosmos.reflection.v1.ReflectionService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Reflection_V1_ReflectionServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Cosmos_Reflection_V1_ReflectionServiceNIOClient: Cosmos_Reflection_V1_ReflectionServiceClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Reflection_V1_ReflectionServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the cosmos.reflection.v1.ReflectionService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Reflection_V1_ReflectionServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Package cosmos.reflection.v1 provides support for inspecting protobuf
/// file descriptors.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Cosmos_Reflection_V1_ReflectionServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Cosmos_Reflection_V1_ReflectionServiceClientInterceptorFactoryProtocol? { get }

  func makeFileDescriptorsCall(
    _ request: Cosmos_Reflection_V1_FileDescriptorsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Reflection_V1_FileDescriptorsRequest, Cosmos_Reflection_V1_FileDescriptorsResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Reflection_V1_ReflectionServiceAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Cosmos_Reflection_V1_ReflectionServiceClientMetadata.serviceDescriptor
  }

  public var interceptors: Cosmos_Reflection_V1_ReflectionServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeFileDescriptorsCall(
    _ request: Cosmos_Reflection_V1_FileDescriptorsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Reflection_V1_FileDescriptorsRequest, Cosmos_Reflection_V1_FileDescriptorsResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Reflection_V1_ReflectionServiceClientMetadata.Methods.fileDescriptors.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeFileDescriptorsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Reflection_V1_ReflectionServiceAsyncClientProtocol {
  public func fileDescriptors(
    _ request: Cosmos_Reflection_V1_FileDescriptorsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Reflection_V1_FileDescriptorsResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Reflection_V1_ReflectionServiceClientMetadata.Methods.fileDescriptors.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeFileDescriptorsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Cosmos_Reflection_V1_ReflectionServiceAsyncClient: Cosmos_Reflection_V1_ReflectionServiceAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Reflection_V1_ReflectionServiceClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Reflection_V1_ReflectionServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Cosmos_Reflection_V1_ReflectionServiceClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'fileDescriptors'.
  func makeFileDescriptorsInterceptors() -> [ClientInterceptor<Cosmos_Reflection_V1_FileDescriptorsRequest, Cosmos_Reflection_V1_FileDescriptorsResponse>]
}

public enum Cosmos_Reflection_V1_ReflectionServiceClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "ReflectionService",
    fullName: "cosmos.reflection.v1.ReflectionService",
    methods: [
      Cosmos_Reflection_V1_ReflectionServiceClientMetadata.Methods.fileDescriptors,
    ]
  )

  public enum Methods {
    public static let fileDescriptors = GRPCMethodDescriptor(
      name: "FileDescriptors",
      path: "/cosmos.reflection.v1.ReflectionService/FileDescriptors",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Cosmos_Reflection_V1_ReflectionServiceTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Cosmos_Reflection_V1_ReflectionServiceTestClient: Cosmos_Reflection_V1_ReflectionServiceClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Reflection_V1_ReflectionServiceClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Reflection_V1_ReflectionServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the FileDescriptors RPC. This must be called
  /// before calling 'fileDescriptors'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeFileDescriptorsResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Reflection_V1_FileDescriptorsRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Reflection_V1_FileDescriptorsRequest, Cosmos_Reflection_V1_FileDescriptorsResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Reflection_V1_ReflectionServiceClientMetadata.Methods.fileDescriptors.path, requestHandler: requestHandler)
  }

  public func enqueueFileDescriptorsResponse(
    _ response: Cosmos_Reflection_V1_FileDescriptorsResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Reflection_V1_FileDescriptorsRequest>) -> () = { _ in }
  ) {
    let stream = self.makeFileDescriptorsResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'FileDescriptors'
  public var hasFileDescriptorsResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Reflection_V1_ReflectionServiceClientMetadata.Methods.fileDescriptors.path)
  }
}

