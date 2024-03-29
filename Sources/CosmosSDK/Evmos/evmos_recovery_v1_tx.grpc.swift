//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: evmos/recovery/v1/tx.proto
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


/// Msg defines the recovery Msg service.
///
/// Usage: instantiate `Evmos_Recovery_V1_MsgClient`, then call methods of this protocol to make API calls.
public protocol Evmos_Recovery_V1_MsgClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Evmos_Recovery_V1_MsgClientInterceptorFactoryProtocol? { get }

  func updateParams(
    _ request: Evmos_Recovery_V1_MsgUpdateParams,
    callOptions: CallOptions?
  ) -> UnaryCall<Evmos_Recovery_V1_MsgUpdateParams, Evmos_Recovery_V1_MsgUpdateParamsResponse>
}

extension Evmos_Recovery_V1_MsgClientProtocol {
  public var serviceName: String {
    return "evmos.recovery.v1.Msg"
  }

  /// UpdateParams defined a governance operation for updating the x/recovery module parameters.
  /// The authority is hard-coded to the Cosmos SDK x/gov module account.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateParams.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateParams(
    _ request: Evmos_Recovery_V1_MsgUpdateParams,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Evmos_Recovery_V1_MsgUpdateParams, Evmos_Recovery_V1_MsgUpdateParamsResponse> {
    return self.makeUnaryCall(
      path: Evmos_Recovery_V1_MsgClientMetadata.Methods.updateParams.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateParamsInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Evmos_Recovery_V1_MsgClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Evmos_Recovery_V1_MsgNIOClient")
public final class Evmos_Recovery_V1_MsgClient: Evmos_Recovery_V1_MsgClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Evmos_Recovery_V1_MsgClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Evmos_Recovery_V1_MsgClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the evmos.recovery.v1.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Recovery_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Evmos_Recovery_V1_MsgNIOClient: Evmos_Recovery_V1_MsgClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Evmos_Recovery_V1_MsgClientInterceptorFactoryProtocol?

  /// Creates a client for the evmos.recovery.v1.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Recovery_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Msg defines the recovery Msg service.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Evmos_Recovery_V1_MsgAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Evmos_Recovery_V1_MsgClientInterceptorFactoryProtocol? { get }

  func makeUpdateParamsCall(
    _ request: Evmos_Recovery_V1_MsgUpdateParams,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Evmos_Recovery_V1_MsgUpdateParams, Evmos_Recovery_V1_MsgUpdateParamsResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Evmos_Recovery_V1_MsgAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Evmos_Recovery_V1_MsgClientMetadata.serviceDescriptor
  }

  public var interceptors: Evmos_Recovery_V1_MsgClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeUpdateParamsCall(
    _ request: Evmos_Recovery_V1_MsgUpdateParams,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Evmos_Recovery_V1_MsgUpdateParams, Evmos_Recovery_V1_MsgUpdateParamsResponse> {
    return self.makeAsyncUnaryCall(
      path: Evmos_Recovery_V1_MsgClientMetadata.Methods.updateParams.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateParamsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Evmos_Recovery_V1_MsgAsyncClientProtocol {
  public func updateParams(
    _ request: Evmos_Recovery_V1_MsgUpdateParams,
    callOptions: CallOptions? = nil
  ) async throws -> Evmos_Recovery_V1_MsgUpdateParamsResponse {
    return try await self.performAsyncUnaryCall(
      path: Evmos_Recovery_V1_MsgClientMetadata.Methods.updateParams.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateParamsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Evmos_Recovery_V1_MsgAsyncClient: Evmos_Recovery_V1_MsgAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Evmos_Recovery_V1_MsgClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Recovery_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Evmos_Recovery_V1_MsgClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'updateParams'.
  func makeUpdateParamsInterceptors() -> [ClientInterceptor<Evmos_Recovery_V1_MsgUpdateParams, Evmos_Recovery_V1_MsgUpdateParamsResponse>]
}

public enum Evmos_Recovery_V1_MsgClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Msg",
    fullName: "evmos.recovery.v1.Msg",
    methods: [
      Evmos_Recovery_V1_MsgClientMetadata.Methods.updateParams,
    ]
  )

  public enum Methods {
    public static let updateParams = GRPCMethodDescriptor(
      name: "UpdateParams",
      path: "/evmos.recovery.v1.Msg/UpdateParams",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Evmos_Recovery_V1_MsgTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Evmos_Recovery_V1_MsgTestClient: Evmos_Recovery_V1_MsgClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Evmos_Recovery_V1_MsgClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Recovery_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the UpdateParams RPC. This must be called
  /// before calling 'updateParams'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeUpdateParamsResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Recovery_V1_MsgUpdateParams>) -> () = { _ in }
  ) -> FakeUnaryResponse<Evmos_Recovery_V1_MsgUpdateParams, Evmos_Recovery_V1_MsgUpdateParamsResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Evmos_Recovery_V1_MsgClientMetadata.Methods.updateParams.path, requestHandler: requestHandler)
  }

  public func enqueueUpdateParamsResponse(
    _ response: Evmos_Recovery_V1_MsgUpdateParamsResponse,
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Recovery_V1_MsgUpdateParams>) -> () = { _ in }
  ) {
    let stream = self.makeUpdateParamsResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'UpdateParams'
  public var hasUpdateParamsResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Evmos_Recovery_V1_MsgClientMetadata.Methods.updateParams.path)
  }
}

