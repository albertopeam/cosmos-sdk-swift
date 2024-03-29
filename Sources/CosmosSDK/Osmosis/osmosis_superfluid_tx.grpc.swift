//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: osmosis/superfluid/tx.proto
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


/// Msg defines the Msg service.
///
/// Usage: instantiate `Osmosis_Superfluid_MsgClient`, then call methods of this protocol to make API calls.
public protocol Osmosis_Superfluid_MsgClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol? { get }

  func superfluidDelegate(
    _ request: Osmosis_Superfluid_MsgSuperfluidDelegate,
    callOptions: CallOptions?
  ) -> UnaryCall<Osmosis_Superfluid_MsgSuperfluidDelegate, Osmosis_Superfluid_MsgSuperfluidDelegateResponse>

  func superfluidUndelegate(
    _ request: Osmosis_Superfluid_MsgSuperfluidUndelegate,
    callOptions: CallOptions?
  ) -> UnaryCall<Osmosis_Superfluid_MsgSuperfluidUndelegate, Osmosis_Superfluid_MsgSuperfluidUndelegateResponse>

  func superfluidUnbondLock(
    _ request: Osmosis_Superfluid_MsgSuperfluidUnbondLock,
    callOptions: CallOptions?
  ) -> UnaryCall<Osmosis_Superfluid_MsgSuperfluidUnbondLock, Osmosis_Superfluid_MsgSuperfluidUnbondLockResponse>

  func lockAndSuperfluidDelegate(
    _ request: Osmosis_Superfluid_MsgLockAndSuperfluidDelegate,
    callOptions: CallOptions?
  ) -> UnaryCall<Osmosis_Superfluid_MsgLockAndSuperfluidDelegate, Osmosis_Superfluid_MsgLockAndSuperfluidDelegateResponse>

  func unPoolWhitelistedPool(
    _ request: Osmosis_Superfluid_MsgUnPoolWhitelistedPool,
    callOptions: CallOptions?
  ) -> UnaryCall<Osmosis_Superfluid_MsgUnPoolWhitelistedPool, Osmosis_Superfluid_MsgUnPoolWhitelistedPoolResponse>
}

extension Osmosis_Superfluid_MsgClientProtocol {
  public var serviceName: String {
    return "osmosis.superfluid.Msg"
  }

  /// Execute superfluid delegation for a lockup
  ///
  /// - Parameters:
  ///   - request: Request to send to SuperfluidDelegate.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func superfluidDelegate(
    _ request: Osmosis_Superfluid_MsgSuperfluidDelegate,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Osmosis_Superfluid_MsgSuperfluidDelegate, Osmosis_Superfluid_MsgSuperfluidDelegateResponse> {
    return self.makeUnaryCall(
      path: Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidDelegate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSuperfluidDelegateInterceptors() ?? []
    )
  }

  /// Execute superfluid undelegation for a lockup
  ///
  /// - Parameters:
  ///   - request: Request to send to SuperfluidUndelegate.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func superfluidUndelegate(
    _ request: Osmosis_Superfluid_MsgSuperfluidUndelegate,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Osmosis_Superfluid_MsgSuperfluidUndelegate, Osmosis_Superfluid_MsgSuperfluidUndelegateResponse> {
    return self.makeUnaryCall(
      path: Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidUndelegate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSuperfluidUndelegateInterceptors() ?? []
    )
  }

  /// For a given lock that is being superfluidly undelegated,
  /// also unbond the underlying lock.
  ///
  /// - Parameters:
  ///   - request: Request to send to SuperfluidUnbondLock.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func superfluidUnbondLock(
    _ request: Osmosis_Superfluid_MsgSuperfluidUnbondLock,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Osmosis_Superfluid_MsgSuperfluidUnbondLock, Osmosis_Superfluid_MsgSuperfluidUnbondLockResponse> {
    return self.makeUnaryCall(
      path: Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidUnbondLock.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSuperfluidUnbondLockInterceptors() ?? []
    )
  }

  /// Execute lockup lock and superfluid delegation in a single msg
  ///
  /// - Parameters:
  ///   - request: Request to send to LockAndSuperfluidDelegate.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func lockAndSuperfluidDelegate(
    _ request: Osmosis_Superfluid_MsgLockAndSuperfluidDelegate,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Osmosis_Superfluid_MsgLockAndSuperfluidDelegate, Osmosis_Superfluid_MsgLockAndSuperfluidDelegateResponse> {
    return self.makeUnaryCall(
      path: Osmosis_Superfluid_MsgClientMetadata.Methods.lockAndSuperfluidDelegate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLockAndSuperfluidDelegateInterceptors() ?? []
    )
  }

  /// Unary call to UnPoolWhitelistedPool
  ///
  /// - Parameters:
  ///   - request: Request to send to UnPoolWhitelistedPool.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func unPoolWhitelistedPool(
    _ request: Osmosis_Superfluid_MsgUnPoolWhitelistedPool,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Osmosis_Superfluid_MsgUnPoolWhitelistedPool, Osmosis_Superfluid_MsgUnPoolWhitelistedPoolResponse> {
    return self.makeUnaryCall(
      path: Osmosis_Superfluid_MsgClientMetadata.Methods.unPoolWhitelistedPool.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUnPoolWhitelistedPoolInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Osmosis_Superfluid_MsgClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Osmosis_Superfluid_MsgNIOClient")
public final class Osmosis_Superfluid_MsgClient: Osmosis_Superfluid_MsgClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the osmosis.superfluid.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Osmosis_Superfluid_MsgNIOClient: Osmosis_Superfluid_MsgClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol?

  /// Creates a client for the osmosis.superfluid.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Msg defines the Msg service.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Osmosis_Superfluid_MsgAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol? { get }

  func makeSuperfluidDelegateCall(
    _ request: Osmosis_Superfluid_MsgSuperfluidDelegate,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Osmosis_Superfluid_MsgSuperfluidDelegate, Osmosis_Superfluid_MsgSuperfluidDelegateResponse>

  func makeSuperfluidUndelegateCall(
    _ request: Osmosis_Superfluid_MsgSuperfluidUndelegate,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Osmosis_Superfluid_MsgSuperfluidUndelegate, Osmosis_Superfluid_MsgSuperfluidUndelegateResponse>

  func makeSuperfluidUnbondLockCall(
    _ request: Osmosis_Superfluid_MsgSuperfluidUnbondLock,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Osmosis_Superfluid_MsgSuperfluidUnbondLock, Osmosis_Superfluid_MsgSuperfluidUnbondLockResponse>

  func makeLockAndSuperfluidDelegateCall(
    _ request: Osmosis_Superfluid_MsgLockAndSuperfluidDelegate,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Osmosis_Superfluid_MsgLockAndSuperfluidDelegate, Osmosis_Superfluid_MsgLockAndSuperfluidDelegateResponse>

  func makeUnPoolWhitelistedPoolCall(
    _ request: Osmosis_Superfluid_MsgUnPoolWhitelistedPool,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Osmosis_Superfluid_MsgUnPoolWhitelistedPool, Osmosis_Superfluid_MsgUnPoolWhitelistedPoolResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Osmosis_Superfluid_MsgAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Osmosis_Superfluid_MsgClientMetadata.serviceDescriptor
  }

  public var interceptors: Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeSuperfluidDelegateCall(
    _ request: Osmosis_Superfluid_MsgSuperfluidDelegate,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Osmosis_Superfluid_MsgSuperfluidDelegate, Osmosis_Superfluid_MsgSuperfluidDelegateResponse> {
    return self.makeAsyncUnaryCall(
      path: Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidDelegate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSuperfluidDelegateInterceptors() ?? []
    )
  }

  public func makeSuperfluidUndelegateCall(
    _ request: Osmosis_Superfluid_MsgSuperfluidUndelegate,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Osmosis_Superfluid_MsgSuperfluidUndelegate, Osmosis_Superfluid_MsgSuperfluidUndelegateResponse> {
    return self.makeAsyncUnaryCall(
      path: Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidUndelegate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSuperfluidUndelegateInterceptors() ?? []
    )
  }

  public func makeSuperfluidUnbondLockCall(
    _ request: Osmosis_Superfluid_MsgSuperfluidUnbondLock,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Osmosis_Superfluid_MsgSuperfluidUnbondLock, Osmosis_Superfluid_MsgSuperfluidUnbondLockResponse> {
    return self.makeAsyncUnaryCall(
      path: Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidUnbondLock.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSuperfluidUnbondLockInterceptors() ?? []
    )
  }

  public func makeLockAndSuperfluidDelegateCall(
    _ request: Osmosis_Superfluid_MsgLockAndSuperfluidDelegate,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Osmosis_Superfluid_MsgLockAndSuperfluidDelegate, Osmosis_Superfluid_MsgLockAndSuperfluidDelegateResponse> {
    return self.makeAsyncUnaryCall(
      path: Osmosis_Superfluid_MsgClientMetadata.Methods.lockAndSuperfluidDelegate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLockAndSuperfluidDelegateInterceptors() ?? []
    )
  }

  public func makeUnPoolWhitelistedPoolCall(
    _ request: Osmosis_Superfluid_MsgUnPoolWhitelistedPool,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Osmosis_Superfluid_MsgUnPoolWhitelistedPool, Osmosis_Superfluid_MsgUnPoolWhitelistedPoolResponse> {
    return self.makeAsyncUnaryCall(
      path: Osmosis_Superfluid_MsgClientMetadata.Methods.unPoolWhitelistedPool.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUnPoolWhitelistedPoolInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Osmosis_Superfluid_MsgAsyncClientProtocol {
  public func superfluidDelegate(
    _ request: Osmosis_Superfluid_MsgSuperfluidDelegate,
    callOptions: CallOptions? = nil
  ) async throws -> Osmosis_Superfluid_MsgSuperfluidDelegateResponse {
    return try await self.performAsyncUnaryCall(
      path: Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidDelegate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSuperfluidDelegateInterceptors() ?? []
    )
  }

  public func superfluidUndelegate(
    _ request: Osmosis_Superfluid_MsgSuperfluidUndelegate,
    callOptions: CallOptions? = nil
  ) async throws -> Osmosis_Superfluid_MsgSuperfluidUndelegateResponse {
    return try await self.performAsyncUnaryCall(
      path: Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidUndelegate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSuperfluidUndelegateInterceptors() ?? []
    )
  }

  public func superfluidUnbondLock(
    _ request: Osmosis_Superfluid_MsgSuperfluidUnbondLock,
    callOptions: CallOptions? = nil
  ) async throws -> Osmosis_Superfluid_MsgSuperfluidUnbondLockResponse {
    return try await self.performAsyncUnaryCall(
      path: Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidUnbondLock.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSuperfluidUnbondLockInterceptors() ?? []
    )
  }

  public func lockAndSuperfluidDelegate(
    _ request: Osmosis_Superfluid_MsgLockAndSuperfluidDelegate,
    callOptions: CallOptions? = nil
  ) async throws -> Osmosis_Superfluid_MsgLockAndSuperfluidDelegateResponse {
    return try await self.performAsyncUnaryCall(
      path: Osmosis_Superfluid_MsgClientMetadata.Methods.lockAndSuperfluidDelegate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLockAndSuperfluidDelegateInterceptors() ?? []
    )
  }

  public func unPoolWhitelistedPool(
    _ request: Osmosis_Superfluid_MsgUnPoolWhitelistedPool,
    callOptions: CallOptions? = nil
  ) async throws -> Osmosis_Superfluid_MsgUnPoolWhitelistedPoolResponse {
    return try await self.performAsyncUnaryCall(
      path: Osmosis_Superfluid_MsgClientMetadata.Methods.unPoolWhitelistedPool.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUnPoolWhitelistedPoolInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Osmosis_Superfluid_MsgAsyncClient: Osmosis_Superfluid_MsgAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'superfluidDelegate'.
  func makeSuperfluidDelegateInterceptors() -> [ClientInterceptor<Osmosis_Superfluid_MsgSuperfluidDelegate, Osmosis_Superfluid_MsgSuperfluidDelegateResponse>]

  /// - Returns: Interceptors to use when invoking 'superfluidUndelegate'.
  func makeSuperfluidUndelegateInterceptors() -> [ClientInterceptor<Osmosis_Superfluid_MsgSuperfluidUndelegate, Osmosis_Superfluid_MsgSuperfluidUndelegateResponse>]

  /// - Returns: Interceptors to use when invoking 'superfluidUnbondLock'.
  func makeSuperfluidUnbondLockInterceptors() -> [ClientInterceptor<Osmosis_Superfluid_MsgSuperfluidUnbondLock, Osmosis_Superfluid_MsgSuperfluidUnbondLockResponse>]

  /// - Returns: Interceptors to use when invoking 'lockAndSuperfluidDelegate'.
  func makeLockAndSuperfluidDelegateInterceptors() -> [ClientInterceptor<Osmosis_Superfluid_MsgLockAndSuperfluidDelegate, Osmosis_Superfluid_MsgLockAndSuperfluidDelegateResponse>]

  /// - Returns: Interceptors to use when invoking 'unPoolWhitelistedPool'.
  func makeUnPoolWhitelistedPoolInterceptors() -> [ClientInterceptor<Osmosis_Superfluid_MsgUnPoolWhitelistedPool, Osmosis_Superfluid_MsgUnPoolWhitelistedPoolResponse>]
}

public enum Osmosis_Superfluid_MsgClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Msg",
    fullName: "osmosis.superfluid.Msg",
    methods: [
      Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidDelegate,
      Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidUndelegate,
      Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidUnbondLock,
      Osmosis_Superfluid_MsgClientMetadata.Methods.lockAndSuperfluidDelegate,
      Osmosis_Superfluid_MsgClientMetadata.Methods.unPoolWhitelistedPool,
    ]
  )

  public enum Methods {
    public static let superfluidDelegate = GRPCMethodDescriptor(
      name: "SuperfluidDelegate",
      path: "/osmosis.superfluid.Msg/SuperfluidDelegate",
      type: GRPCCallType.unary
    )

    public static let superfluidUndelegate = GRPCMethodDescriptor(
      name: "SuperfluidUndelegate",
      path: "/osmosis.superfluid.Msg/SuperfluidUndelegate",
      type: GRPCCallType.unary
    )

    public static let superfluidUnbondLock = GRPCMethodDescriptor(
      name: "SuperfluidUnbondLock",
      path: "/osmosis.superfluid.Msg/SuperfluidUnbondLock",
      type: GRPCCallType.unary
    )

    public static let lockAndSuperfluidDelegate = GRPCMethodDescriptor(
      name: "LockAndSuperfluidDelegate",
      path: "/osmosis.superfluid.Msg/LockAndSuperfluidDelegate",
      type: GRPCCallType.unary
    )

    public static let unPoolWhitelistedPool = GRPCMethodDescriptor(
      name: "UnPoolWhitelistedPool",
      path: "/osmosis.superfluid.Msg/UnPoolWhitelistedPool",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Osmosis_Superfluid_MsgTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Osmosis_Superfluid_MsgTestClient: Osmosis_Superfluid_MsgClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the SuperfluidDelegate RPC. This must be called
  /// before calling 'superfluidDelegate'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeSuperfluidDelegateResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Superfluid_MsgSuperfluidDelegate>) -> () = { _ in }
  ) -> FakeUnaryResponse<Osmosis_Superfluid_MsgSuperfluidDelegate, Osmosis_Superfluid_MsgSuperfluidDelegateResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidDelegate.path, requestHandler: requestHandler)
  }

  public func enqueueSuperfluidDelegateResponse(
    _ response: Osmosis_Superfluid_MsgSuperfluidDelegateResponse,
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Superfluid_MsgSuperfluidDelegate>) -> () = { _ in }
  ) {
    let stream = self.makeSuperfluidDelegateResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'SuperfluidDelegate'
  public var hasSuperfluidDelegateResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidDelegate.path)
  }

  /// Make a unary response for the SuperfluidUndelegate RPC. This must be called
  /// before calling 'superfluidUndelegate'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeSuperfluidUndelegateResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Superfluid_MsgSuperfluidUndelegate>) -> () = { _ in }
  ) -> FakeUnaryResponse<Osmosis_Superfluid_MsgSuperfluidUndelegate, Osmosis_Superfluid_MsgSuperfluidUndelegateResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidUndelegate.path, requestHandler: requestHandler)
  }

  public func enqueueSuperfluidUndelegateResponse(
    _ response: Osmosis_Superfluid_MsgSuperfluidUndelegateResponse,
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Superfluid_MsgSuperfluidUndelegate>) -> () = { _ in }
  ) {
    let stream = self.makeSuperfluidUndelegateResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'SuperfluidUndelegate'
  public var hasSuperfluidUndelegateResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidUndelegate.path)
  }

  /// Make a unary response for the SuperfluidUnbondLock RPC. This must be called
  /// before calling 'superfluidUnbondLock'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeSuperfluidUnbondLockResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Superfluid_MsgSuperfluidUnbondLock>) -> () = { _ in }
  ) -> FakeUnaryResponse<Osmosis_Superfluid_MsgSuperfluidUnbondLock, Osmosis_Superfluid_MsgSuperfluidUnbondLockResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidUnbondLock.path, requestHandler: requestHandler)
  }

  public func enqueueSuperfluidUnbondLockResponse(
    _ response: Osmosis_Superfluid_MsgSuperfluidUnbondLockResponse,
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Superfluid_MsgSuperfluidUnbondLock>) -> () = { _ in }
  ) {
    let stream = self.makeSuperfluidUnbondLockResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'SuperfluidUnbondLock'
  public var hasSuperfluidUnbondLockResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Osmosis_Superfluid_MsgClientMetadata.Methods.superfluidUnbondLock.path)
  }

  /// Make a unary response for the LockAndSuperfluidDelegate RPC. This must be called
  /// before calling 'lockAndSuperfluidDelegate'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeLockAndSuperfluidDelegateResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Superfluid_MsgLockAndSuperfluidDelegate>) -> () = { _ in }
  ) -> FakeUnaryResponse<Osmosis_Superfluid_MsgLockAndSuperfluidDelegate, Osmosis_Superfluid_MsgLockAndSuperfluidDelegateResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Osmosis_Superfluid_MsgClientMetadata.Methods.lockAndSuperfluidDelegate.path, requestHandler: requestHandler)
  }

  public func enqueueLockAndSuperfluidDelegateResponse(
    _ response: Osmosis_Superfluid_MsgLockAndSuperfluidDelegateResponse,
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Superfluid_MsgLockAndSuperfluidDelegate>) -> () = { _ in }
  ) {
    let stream = self.makeLockAndSuperfluidDelegateResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'LockAndSuperfluidDelegate'
  public var hasLockAndSuperfluidDelegateResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Osmosis_Superfluid_MsgClientMetadata.Methods.lockAndSuperfluidDelegate.path)
  }

  /// Make a unary response for the UnPoolWhitelistedPool RPC. This must be called
  /// before calling 'unPoolWhitelistedPool'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeUnPoolWhitelistedPoolResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Superfluid_MsgUnPoolWhitelistedPool>) -> () = { _ in }
  ) -> FakeUnaryResponse<Osmosis_Superfluid_MsgUnPoolWhitelistedPool, Osmosis_Superfluid_MsgUnPoolWhitelistedPoolResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Osmosis_Superfluid_MsgClientMetadata.Methods.unPoolWhitelistedPool.path, requestHandler: requestHandler)
  }

  public func enqueueUnPoolWhitelistedPoolResponse(
    _ response: Osmosis_Superfluid_MsgUnPoolWhitelistedPoolResponse,
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Superfluid_MsgUnPoolWhitelistedPool>) -> () = { _ in }
  ) {
    let stream = self.makeUnPoolWhitelistedPoolResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'UnPoolWhitelistedPool'
  public var hasUnPoolWhitelistedPoolResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Osmosis_Superfluid_MsgClientMetadata.Methods.unPoolWhitelistedPool.path)
  }
}

