//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: evmos/revenue/v1/tx.proto
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


/// Msg defines the fees Msg service.
///
/// Usage: instantiate `Evmos_Revenue_V1_MsgClient`, then call methods of this protocol to make API calls.
public protocol Evmos_Revenue_V1_MsgClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Evmos_Revenue_V1_MsgClientInterceptorFactoryProtocol? { get }

  func registerRevenue(
    _ request: Evmos_Revenue_V1_MsgRegisterRevenue,
    callOptions: CallOptions?
  ) -> UnaryCall<Evmos_Revenue_V1_MsgRegisterRevenue, Evmos_Revenue_V1_MsgRegisterRevenueResponse>

  func updateRevenue(
    _ request: Evmos_Revenue_V1_MsgUpdateRevenue,
    callOptions: CallOptions?
  ) -> UnaryCall<Evmos_Revenue_V1_MsgUpdateRevenue, Evmos_Revenue_V1_MsgUpdateRevenueResponse>

  func cancelRevenue(
    _ request: Evmos_Revenue_V1_MsgCancelRevenue,
    callOptions: CallOptions?
  ) -> UnaryCall<Evmos_Revenue_V1_MsgCancelRevenue, Evmos_Revenue_V1_MsgCancelRevenueResponse>

  func updateParams(
    _ request: Evmos_Revenue_V1_MsgUpdateParams,
    callOptions: CallOptions?
  ) -> UnaryCall<Evmos_Revenue_V1_MsgUpdateParams, Evmos_Revenue_V1_MsgUpdateParamsResponse>
}

extension Evmos_Revenue_V1_MsgClientProtocol {
  public var serviceName: String {
    return "evmos.revenue.v1.Msg"
  }

  /// RegisterRevenue registers a new contract for receiving transaction fees
  ///
  /// - Parameters:
  ///   - request: Request to send to RegisterRevenue.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func registerRevenue(
    _ request: Evmos_Revenue_V1_MsgRegisterRevenue,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Evmos_Revenue_V1_MsgRegisterRevenue, Evmos_Revenue_V1_MsgRegisterRevenueResponse> {
    return self.makeUnaryCall(
      path: Evmos_Revenue_V1_MsgClientMetadata.Methods.registerRevenue.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRegisterRevenueInterceptors() ?? []
    )
  }

  /// UpdateRevenue updates the withdrawer address of a revenue
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateRevenue.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateRevenue(
    _ request: Evmos_Revenue_V1_MsgUpdateRevenue,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Evmos_Revenue_V1_MsgUpdateRevenue, Evmos_Revenue_V1_MsgUpdateRevenueResponse> {
    return self.makeUnaryCall(
      path: Evmos_Revenue_V1_MsgClientMetadata.Methods.updateRevenue.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateRevenueInterceptors() ?? []
    )
  }

  /// CancelRevenue cancels a contract's fee registration and further receival
  /// of transaction fees
  ///
  /// - Parameters:
  ///   - request: Request to send to CancelRevenue.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func cancelRevenue(
    _ request: Evmos_Revenue_V1_MsgCancelRevenue,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Evmos_Revenue_V1_MsgCancelRevenue, Evmos_Revenue_V1_MsgCancelRevenueResponse> {
    return self.makeUnaryCall(
      path: Evmos_Revenue_V1_MsgClientMetadata.Methods.cancelRevenue.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCancelRevenueInterceptors() ?? []
    )
  }

  /// UpdateParams defined a governance operation for updating the x/revenue module parameters.
  /// The authority is hard-coded to the Cosmos SDK x/gov module account
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateParams.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateParams(
    _ request: Evmos_Revenue_V1_MsgUpdateParams,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Evmos_Revenue_V1_MsgUpdateParams, Evmos_Revenue_V1_MsgUpdateParamsResponse> {
    return self.makeUnaryCall(
      path: Evmos_Revenue_V1_MsgClientMetadata.Methods.updateParams.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateParamsInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Evmos_Revenue_V1_MsgClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Evmos_Revenue_V1_MsgNIOClient")
public final class Evmos_Revenue_V1_MsgClient: Evmos_Revenue_V1_MsgClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Evmos_Revenue_V1_MsgClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Evmos_Revenue_V1_MsgClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the evmos.revenue.v1.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Revenue_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Evmos_Revenue_V1_MsgNIOClient: Evmos_Revenue_V1_MsgClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Evmos_Revenue_V1_MsgClientInterceptorFactoryProtocol?

  /// Creates a client for the evmos.revenue.v1.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Revenue_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Msg defines the fees Msg service.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Evmos_Revenue_V1_MsgAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Evmos_Revenue_V1_MsgClientInterceptorFactoryProtocol? { get }

  func makeRegisterRevenueCall(
    _ request: Evmos_Revenue_V1_MsgRegisterRevenue,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Evmos_Revenue_V1_MsgRegisterRevenue, Evmos_Revenue_V1_MsgRegisterRevenueResponse>

  func makeUpdateRevenueCall(
    _ request: Evmos_Revenue_V1_MsgUpdateRevenue,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Evmos_Revenue_V1_MsgUpdateRevenue, Evmos_Revenue_V1_MsgUpdateRevenueResponse>

  func makeCancelRevenueCall(
    _ request: Evmos_Revenue_V1_MsgCancelRevenue,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Evmos_Revenue_V1_MsgCancelRevenue, Evmos_Revenue_V1_MsgCancelRevenueResponse>

  func makeUpdateParamsCall(
    _ request: Evmos_Revenue_V1_MsgUpdateParams,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Evmos_Revenue_V1_MsgUpdateParams, Evmos_Revenue_V1_MsgUpdateParamsResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Evmos_Revenue_V1_MsgAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Evmos_Revenue_V1_MsgClientMetadata.serviceDescriptor
  }

  public var interceptors: Evmos_Revenue_V1_MsgClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeRegisterRevenueCall(
    _ request: Evmos_Revenue_V1_MsgRegisterRevenue,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Evmos_Revenue_V1_MsgRegisterRevenue, Evmos_Revenue_V1_MsgRegisterRevenueResponse> {
    return self.makeAsyncUnaryCall(
      path: Evmos_Revenue_V1_MsgClientMetadata.Methods.registerRevenue.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRegisterRevenueInterceptors() ?? []
    )
  }

  public func makeUpdateRevenueCall(
    _ request: Evmos_Revenue_V1_MsgUpdateRevenue,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Evmos_Revenue_V1_MsgUpdateRevenue, Evmos_Revenue_V1_MsgUpdateRevenueResponse> {
    return self.makeAsyncUnaryCall(
      path: Evmos_Revenue_V1_MsgClientMetadata.Methods.updateRevenue.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateRevenueInterceptors() ?? []
    )
  }

  public func makeCancelRevenueCall(
    _ request: Evmos_Revenue_V1_MsgCancelRevenue,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Evmos_Revenue_V1_MsgCancelRevenue, Evmos_Revenue_V1_MsgCancelRevenueResponse> {
    return self.makeAsyncUnaryCall(
      path: Evmos_Revenue_V1_MsgClientMetadata.Methods.cancelRevenue.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCancelRevenueInterceptors() ?? []
    )
  }

  public func makeUpdateParamsCall(
    _ request: Evmos_Revenue_V1_MsgUpdateParams,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Evmos_Revenue_V1_MsgUpdateParams, Evmos_Revenue_V1_MsgUpdateParamsResponse> {
    return self.makeAsyncUnaryCall(
      path: Evmos_Revenue_V1_MsgClientMetadata.Methods.updateParams.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateParamsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Evmos_Revenue_V1_MsgAsyncClientProtocol {
  public func registerRevenue(
    _ request: Evmos_Revenue_V1_MsgRegisterRevenue,
    callOptions: CallOptions? = nil
  ) async throws -> Evmos_Revenue_V1_MsgRegisterRevenueResponse {
    return try await self.performAsyncUnaryCall(
      path: Evmos_Revenue_V1_MsgClientMetadata.Methods.registerRevenue.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRegisterRevenueInterceptors() ?? []
    )
  }

  public func updateRevenue(
    _ request: Evmos_Revenue_V1_MsgUpdateRevenue,
    callOptions: CallOptions? = nil
  ) async throws -> Evmos_Revenue_V1_MsgUpdateRevenueResponse {
    return try await self.performAsyncUnaryCall(
      path: Evmos_Revenue_V1_MsgClientMetadata.Methods.updateRevenue.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateRevenueInterceptors() ?? []
    )
  }

  public func cancelRevenue(
    _ request: Evmos_Revenue_V1_MsgCancelRevenue,
    callOptions: CallOptions? = nil
  ) async throws -> Evmos_Revenue_V1_MsgCancelRevenueResponse {
    return try await self.performAsyncUnaryCall(
      path: Evmos_Revenue_V1_MsgClientMetadata.Methods.cancelRevenue.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCancelRevenueInterceptors() ?? []
    )
  }

  public func updateParams(
    _ request: Evmos_Revenue_V1_MsgUpdateParams,
    callOptions: CallOptions? = nil
  ) async throws -> Evmos_Revenue_V1_MsgUpdateParamsResponse {
    return try await self.performAsyncUnaryCall(
      path: Evmos_Revenue_V1_MsgClientMetadata.Methods.updateParams.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateParamsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Evmos_Revenue_V1_MsgAsyncClient: Evmos_Revenue_V1_MsgAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Evmos_Revenue_V1_MsgClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Revenue_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Evmos_Revenue_V1_MsgClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'registerRevenue'.
  func makeRegisterRevenueInterceptors() -> [ClientInterceptor<Evmos_Revenue_V1_MsgRegisterRevenue, Evmos_Revenue_V1_MsgRegisterRevenueResponse>]

  /// - Returns: Interceptors to use when invoking 'updateRevenue'.
  func makeUpdateRevenueInterceptors() -> [ClientInterceptor<Evmos_Revenue_V1_MsgUpdateRevenue, Evmos_Revenue_V1_MsgUpdateRevenueResponse>]

  /// - Returns: Interceptors to use when invoking 'cancelRevenue'.
  func makeCancelRevenueInterceptors() -> [ClientInterceptor<Evmos_Revenue_V1_MsgCancelRevenue, Evmos_Revenue_V1_MsgCancelRevenueResponse>]

  /// - Returns: Interceptors to use when invoking 'updateParams'.
  func makeUpdateParamsInterceptors() -> [ClientInterceptor<Evmos_Revenue_V1_MsgUpdateParams, Evmos_Revenue_V1_MsgUpdateParamsResponse>]
}

public enum Evmos_Revenue_V1_MsgClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Msg",
    fullName: "evmos.revenue.v1.Msg",
    methods: [
      Evmos_Revenue_V1_MsgClientMetadata.Methods.registerRevenue,
      Evmos_Revenue_V1_MsgClientMetadata.Methods.updateRevenue,
      Evmos_Revenue_V1_MsgClientMetadata.Methods.cancelRevenue,
      Evmos_Revenue_V1_MsgClientMetadata.Methods.updateParams,
    ]
  )

  public enum Methods {
    public static let registerRevenue = GRPCMethodDescriptor(
      name: "RegisterRevenue",
      path: "/evmos.revenue.v1.Msg/RegisterRevenue",
      type: GRPCCallType.unary
    )

    public static let updateRevenue = GRPCMethodDescriptor(
      name: "UpdateRevenue",
      path: "/evmos.revenue.v1.Msg/UpdateRevenue",
      type: GRPCCallType.unary
    )

    public static let cancelRevenue = GRPCMethodDescriptor(
      name: "CancelRevenue",
      path: "/evmos.revenue.v1.Msg/CancelRevenue",
      type: GRPCCallType.unary
    )

    public static let updateParams = GRPCMethodDescriptor(
      name: "UpdateParams",
      path: "/evmos.revenue.v1.Msg/UpdateParams",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Evmos_Revenue_V1_MsgTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Evmos_Revenue_V1_MsgTestClient: Evmos_Revenue_V1_MsgClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Evmos_Revenue_V1_MsgClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Revenue_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the RegisterRevenue RPC. This must be called
  /// before calling 'registerRevenue'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeRegisterRevenueResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Revenue_V1_MsgRegisterRevenue>) -> () = { _ in }
  ) -> FakeUnaryResponse<Evmos_Revenue_V1_MsgRegisterRevenue, Evmos_Revenue_V1_MsgRegisterRevenueResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Evmos_Revenue_V1_MsgClientMetadata.Methods.registerRevenue.path, requestHandler: requestHandler)
  }

  public func enqueueRegisterRevenueResponse(
    _ response: Evmos_Revenue_V1_MsgRegisterRevenueResponse,
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Revenue_V1_MsgRegisterRevenue>) -> () = { _ in }
  ) {
    let stream = self.makeRegisterRevenueResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'RegisterRevenue'
  public var hasRegisterRevenueResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Evmos_Revenue_V1_MsgClientMetadata.Methods.registerRevenue.path)
  }

  /// Make a unary response for the UpdateRevenue RPC. This must be called
  /// before calling 'updateRevenue'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeUpdateRevenueResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Revenue_V1_MsgUpdateRevenue>) -> () = { _ in }
  ) -> FakeUnaryResponse<Evmos_Revenue_V1_MsgUpdateRevenue, Evmos_Revenue_V1_MsgUpdateRevenueResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Evmos_Revenue_V1_MsgClientMetadata.Methods.updateRevenue.path, requestHandler: requestHandler)
  }

  public func enqueueUpdateRevenueResponse(
    _ response: Evmos_Revenue_V1_MsgUpdateRevenueResponse,
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Revenue_V1_MsgUpdateRevenue>) -> () = { _ in }
  ) {
    let stream = self.makeUpdateRevenueResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'UpdateRevenue'
  public var hasUpdateRevenueResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Evmos_Revenue_V1_MsgClientMetadata.Methods.updateRevenue.path)
  }

  /// Make a unary response for the CancelRevenue RPC. This must be called
  /// before calling 'cancelRevenue'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeCancelRevenueResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Revenue_V1_MsgCancelRevenue>) -> () = { _ in }
  ) -> FakeUnaryResponse<Evmos_Revenue_V1_MsgCancelRevenue, Evmos_Revenue_V1_MsgCancelRevenueResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Evmos_Revenue_V1_MsgClientMetadata.Methods.cancelRevenue.path, requestHandler: requestHandler)
  }

  public func enqueueCancelRevenueResponse(
    _ response: Evmos_Revenue_V1_MsgCancelRevenueResponse,
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Revenue_V1_MsgCancelRevenue>) -> () = { _ in }
  ) {
    let stream = self.makeCancelRevenueResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'CancelRevenue'
  public var hasCancelRevenueResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Evmos_Revenue_V1_MsgClientMetadata.Methods.cancelRevenue.path)
  }

  /// Make a unary response for the UpdateParams RPC. This must be called
  /// before calling 'updateParams'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeUpdateParamsResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Revenue_V1_MsgUpdateParams>) -> () = { _ in }
  ) -> FakeUnaryResponse<Evmos_Revenue_V1_MsgUpdateParams, Evmos_Revenue_V1_MsgUpdateParamsResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Evmos_Revenue_V1_MsgClientMetadata.Methods.updateParams.path, requestHandler: requestHandler)
  }

  public func enqueueUpdateParamsResponse(
    _ response: Evmos_Revenue_V1_MsgUpdateParamsResponse,
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Revenue_V1_MsgUpdateParams>) -> () = { _ in }
  ) {
    let stream = self.makeUpdateParamsResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'UpdateParams'
  public var hasUpdateParamsResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Evmos_Revenue_V1_MsgClientMetadata.Methods.updateParams.path)
  }
}

