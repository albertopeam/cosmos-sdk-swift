//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: evmos/vesting/v1/tx.proto
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


/// Msg defines the vesting Msg service.
///
/// Usage: instantiate `Evmos_Vesting_V1_MsgClient`, then call methods of this protocol to make API calls.
public protocol Evmos_Vesting_V1_MsgClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Evmos_Vesting_V1_MsgClientInterceptorFactoryProtocol? { get }

  func createClawbackVestingAccount(
    _ request: Evmos_Vesting_V1_MsgCreateClawbackVestingAccount,
    callOptions: CallOptions?
  ) -> UnaryCall<Evmos_Vesting_V1_MsgCreateClawbackVestingAccount, Evmos_Vesting_V1_MsgCreateClawbackVestingAccountResponse>

  func clawback(
    _ request: Evmos_Vesting_V1_MsgClawback,
    callOptions: CallOptions?
  ) -> UnaryCall<Evmos_Vesting_V1_MsgClawback, Evmos_Vesting_V1_MsgClawbackResponse>

  func updateVestingFunder(
    _ request: Evmos_Vesting_V1_MsgUpdateVestingFunder,
    callOptions: CallOptions?
  ) -> UnaryCall<Evmos_Vesting_V1_MsgUpdateVestingFunder, Evmos_Vesting_V1_MsgUpdateVestingFunderResponse>

  func convertVestingAccount(
    _ request: Evmos_Vesting_V1_MsgConvertVestingAccount,
    callOptions: CallOptions?
  ) -> UnaryCall<Evmos_Vesting_V1_MsgConvertVestingAccount, Evmos_Vesting_V1_MsgConvertVestingAccountResponse>
}

extension Evmos_Vesting_V1_MsgClientProtocol {
  public var serviceName: String {
    return "evmos.vesting.v1.Msg"
  }

  /// CreateClawbackVestingAccount creats a vesting account that is subject to
  /// clawback and the configuration of vesting and lockup schedules.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateClawbackVestingAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createClawbackVestingAccount(
    _ request: Evmos_Vesting_V1_MsgCreateClawbackVestingAccount,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Evmos_Vesting_V1_MsgCreateClawbackVestingAccount, Evmos_Vesting_V1_MsgCreateClawbackVestingAccountResponse> {
    return self.makeUnaryCall(
      path: Evmos_Vesting_V1_MsgClientMetadata.Methods.createClawbackVestingAccount.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateClawbackVestingAccountInterceptors() ?? []
    )
  }

  /// Clawback removes the unvested tokens from a ClawbackVestingAccount.
  ///
  /// - Parameters:
  ///   - request: Request to send to Clawback.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func clawback(
    _ request: Evmos_Vesting_V1_MsgClawback,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Evmos_Vesting_V1_MsgClawback, Evmos_Vesting_V1_MsgClawbackResponse> {
    return self.makeUnaryCall(
      path: Evmos_Vesting_V1_MsgClientMetadata.Methods.clawback.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeClawbackInterceptors() ?? []
    )
  }

  /// UpdateVestingFunder updates the funder address of an existing
  /// ClawbackVestingAccount.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateVestingFunder.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateVestingFunder(
    _ request: Evmos_Vesting_V1_MsgUpdateVestingFunder,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Evmos_Vesting_V1_MsgUpdateVestingFunder, Evmos_Vesting_V1_MsgUpdateVestingFunderResponse> {
    return self.makeUnaryCall(
      path: Evmos_Vesting_V1_MsgClientMetadata.Methods.updateVestingFunder.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateVestingFunderInterceptors() ?? []
    )
  }

  /// ConvertVestingAccount converts a ClawbackVestingAccount to a Eth account
  ///
  /// - Parameters:
  ///   - request: Request to send to ConvertVestingAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func convertVestingAccount(
    _ request: Evmos_Vesting_V1_MsgConvertVestingAccount,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Evmos_Vesting_V1_MsgConvertVestingAccount, Evmos_Vesting_V1_MsgConvertVestingAccountResponse> {
    return self.makeUnaryCall(
      path: Evmos_Vesting_V1_MsgClientMetadata.Methods.convertVestingAccount.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeConvertVestingAccountInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Evmos_Vesting_V1_MsgClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Evmos_Vesting_V1_MsgNIOClient")
public final class Evmos_Vesting_V1_MsgClient: Evmos_Vesting_V1_MsgClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Evmos_Vesting_V1_MsgClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Evmos_Vesting_V1_MsgClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the evmos.vesting.v1.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Vesting_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Evmos_Vesting_V1_MsgNIOClient: Evmos_Vesting_V1_MsgClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Evmos_Vesting_V1_MsgClientInterceptorFactoryProtocol?

  /// Creates a client for the evmos.vesting.v1.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Vesting_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Msg defines the vesting Msg service.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Evmos_Vesting_V1_MsgAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Evmos_Vesting_V1_MsgClientInterceptorFactoryProtocol? { get }

  func makeCreateClawbackVestingAccountCall(
    _ request: Evmos_Vesting_V1_MsgCreateClawbackVestingAccount,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Evmos_Vesting_V1_MsgCreateClawbackVestingAccount, Evmos_Vesting_V1_MsgCreateClawbackVestingAccountResponse>

  func makeClawbackCall(
    _ request: Evmos_Vesting_V1_MsgClawback,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Evmos_Vesting_V1_MsgClawback, Evmos_Vesting_V1_MsgClawbackResponse>

  func makeUpdateVestingFunderCall(
    _ request: Evmos_Vesting_V1_MsgUpdateVestingFunder,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Evmos_Vesting_V1_MsgUpdateVestingFunder, Evmos_Vesting_V1_MsgUpdateVestingFunderResponse>

  func makeConvertVestingAccountCall(
    _ request: Evmos_Vesting_V1_MsgConvertVestingAccount,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Evmos_Vesting_V1_MsgConvertVestingAccount, Evmos_Vesting_V1_MsgConvertVestingAccountResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Evmos_Vesting_V1_MsgAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Evmos_Vesting_V1_MsgClientMetadata.serviceDescriptor
  }

  public var interceptors: Evmos_Vesting_V1_MsgClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeCreateClawbackVestingAccountCall(
    _ request: Evmos_Vesting_V1_MsgCreateClawbackVestingAccount,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Evmos_Vesting_V1_MsgCreateClawbackVestingAccount, Evmos_Vesting_V1_MsgCreateClawbackVestingAccountResponse> {
    return self.makeAsyncUnaryCall(
      path: Evmos_Vesting_V1_MsgClientMetadata.Methods.createClawbackVestingAccount.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateClawbackVestingAccountInterceptors() ?? []
    )
  }

  public func makeClawbackCall(
    _ request: Evmos_Vesting_V1_MsgClawback,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Evmos_Vesting_V1_MsgClawback, Evmos_Vesting_V1_MsgClawbackResponse> {
    return self.makeAsyncUnaryCall(
      path: Evmos_Vesting_V1_MsgClientMetadata.Methods.clawback.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeClawbackInterceptors() ?? []
    )
  }

  public func makeUpdateVestingFunderCall(
    _ request: Evmos_Vesting_V1_MsgUpdateVestingFunder,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Evmos_Vesting_V1_MsgUpdateVestingFunder, Evmos_Vesting_V1_MsgUpdateVestingFunderResponse> {
    return self.makeAsyncUnaryCall(
      path: Evmos_Vesting_V1_MsgClientMetadata.Methods.updateVestingFunder.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateVestingFunderInterceptors() ?? []
    )
  }

  public func makeConvertVestingAccountCall(
    _ request: Evmos_Vesting_V1_MsgConvertVestingAccount,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Evmos_Vesting_V1_MsgConvertVestingAccount, Evmos_Vesting_V1_MsgConvertVestingAccountResponse> {
    return self.makeAsyncUnaryCall(
      path: Evmos_Vesting_V1_MsgClientMetadata.Methods.convertVestingAccount.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeConvertVestingAccountInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Evmos_Vesting_V1_MsgAsyncClientProtocol {
  public func createClawbackVestingAccount(
    _ request: Evmos_Vesting_V1_MsgCreateClawbackVestingAccount,
    callOptions: CallOptions? = nil
  ) async throws -> Evmos_Vesting_V1_MsgCreateClawbackVestingAccountResponse {
    return try await self.performAsyncUnaryCall(
      path: Evmos_Vesting_V1_MsgClientMetadata.Methods.createClawbackVestingAccount.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateClawbackVestingAccountInterceptors() ?? []
    )
  }

  public func clawback(
    _ request: Evmos_Vesting_V1_MsgClawback,
    callOptions: CallOptions? = nil
  ) async throws -> Evmos_Vesting_V1_MsgClawbackResponse {
    return try await self.performAsyncUnaryCall(
      path: Evmos_Vesting_V1_MsgClientMetadata.Methods.clawback.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeClawbackInterceptors() ?? []
    )
  }

  public func updateVestingFunder(
    _ request: Evmos_Vesting_V1_MsgUpdateVestingFunder,
    callOptions: CallOptions? = nil
  ) async throws -> Evmos_Vesting_V1_MsgUpdateVestingFunderResponse {
    return try await self.performAsyncUnaryCall(
      path: Evmos_Vesting_V1_MsgClientMetadata.Methods.updateVestingFunder.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateVestingFunderInterceptors() ?? []
    )
  }

  public func convertVestingAccount(
    _ request: Evmos_Vesting_V1_MsgConvertVestingAccount,
    callOptions: CallOptions? = nil
  ) async throws -> Evmos_Vesting_V1_MsgConvertVestingAccountResponse {
    return try await self.performAsyncUnaryCall(
      path: Evmos_Vesting_V1_MsgClientMetadata.Methods.convertVestingAccount.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeConvertVestingAccountInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Evmos_Vesting_V1_MsgAsyncClient: Evmos_Vesting_V1_MsgAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Evmos_Vesting_V1_MsgClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Vesting_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Evmos_Vesting_V1_MsgClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'createClawbackVestingAccount'.
  func makeCreateClawbackVestingAccountInterceptors() -> [ClientInterceptor<Evmos_Vesting_V1_MsgCreateClawbackVestingAccount, Evmos_Vesting_V1_MsgCreateClawbackVestingAccountResponse>]

  /// - Returns: Interceptors to use when invoking 'clawback'.
  func makeClawbackInterceptors() -> [ClientInterceptor<Evmos_Vesting_V1_MsgClawback, Evmos_Vesting_V1_MsgClawbackResponse>]

  /// - Returns: Interceptors to use when invoking 'updateVestingFunder'.
  func makeUpdateVestingFunderInterceptors() -> [ClientInterceptor<Evmos_Vesting_V1_MsgUpdateVestingFunder, Evmos_Vesting_V1_MsgUpdateVestingFunderResponse>]

  /// - Returns: Interceptors to use when invoking 'convertVestingAccount'.
  func makeConvertVestingAccountInterceptors() -> [ClientInterceptor<Evmos_Vesting_V1_MsgConvertVestingAccount, Evmos_Vesting_V1_MsgConvertVestingAccountResponse>]
}

public enum Evmos_Vesting_V1_MsgClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Msg",
    fullName: "evmos.vesting.v1.Msg",
    methods: [
      Evmos_Vesting_V1_MsgClientMetadata.Methods.createClawbackVestingAccount,
      Evmos_Vesting_V1_MsgClientMetadata.Methods.clawback,
      Evmos_Vesting_V1_MsgClientMetadata.Methods.updateVestingFunder,
      Evmos_Vesting_V1_MsgClientMetadata.Methods.convertVestingAccount,
    ]
  )

  public enum Methods {
    public static let createClawbackVestingAccount = GRPCMethodDescriptor(
      name: "CreateClawbackVestingAccount",
      path: "/evmos.vesting.v1.Msg/CreateClawbackVestingAccount",
      type: GRPCCallType.unary
    )

    public static let clawback = GRPCMethodDescriptor(
      name: "Clawback",
      path: "/evmos.vesting.v1.Msg/Clawback",
      type: GRPCCallType.unary
    )

    public static let updateVestingFunder = GRPCMethodDescriptor(
      name: "UpdateVestingFunder",
      path: "/evmos.vesting.v1.Msg/UpdateVestingFunder",
      type: GRPCCallType.unary
    )

    public static let convertVestingAccount = GRPCMethodDescriptor(
      name: "ConvertVestingAccount",
      path: "/evmos.vesting.v1.Msg/ConvertVestingAccount",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Evmos_Vesting_V1_MsgTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Evmos_Vesting_V1_MsgTestClient: Evmos_Vesting_V1_MsgClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Evmos_Vesting_V1_MsgClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Evmos_Vesting_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the CreateClawbackVestingAccount RPC. This must be called
  /// before calling 'createClawbackVestingAccount'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeCreateClawbackVestingAccountResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Vesting_V1_MsgCreateClawbackVestingAccount>) -> () = { _ in }
  ) -> FakeUnaryResponse<Evmos_Vesting_V1_MsgCreateClawbackVestingAccount, Evmos_Vesting_V1_MsgCreateClawbackVestingAccountResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Evmos_Vesting_V1_MsgClientMetadata.Methods.createClawbackVestingAccount.path, requestHandler: requestHandler)
  }

  public func enqueueCreateClawbackVestingAccountResponse(
    _ response: Evmos_Vesting_V1_MsgCreateClawbackVestingAccountResponse,
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Vesting_V1_MsgCreateClawbackVestingAccount>) -> () = { _ in }
  ) {
    let stream = self.makeCreateClawbackVestingAccountResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'CreateClawbackVestingAccount'
  public var hasCreateClawbackVestingAccountResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Evmos_Vesting_V1_MsgClientMetadata.Methods.createClawbackVestingAccount.path)
  }

  /// Make a unary response for the Clawback RPC. This must be called
  /// before calling 'clawback'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeClawbackResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Vesting_V1_MsgClawback>) -> () = { _ in }
  ) -> FakeUnaryResponse<Evmos_Vesting_V1_MsgClawback, Evmos_Vesting_V1_MsgClawbackResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Evmos_Vesting_V1_MsgClientMetadata.Methods.clawback.path, requestHandler: requestHandler)
  }

  public func enqueueClawbackResponse(
    _ response: Evmos_Vesting_V1_MsgClawbackResponse,
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Vesting_V1_MsgClawback>) -> () = { _ in }
  ) {
    let stream = self.makeClawbackResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Clawback'
  public var hasClawbackResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Evmos_Vesting_V1_MsgClientMetadata.Methods.clawback.path)
  }

  /// Make a unary response for the UpdateVestingFunder RPC. This must be called
  /// before calling 'updateVestingFunder'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeUpdateVestingFunderResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Vesting_V1_MsgUpdateVestingFunder>) -> () = { _ in }
  ) -> FakeUnaryResponse<Evmos_Vesting_V1_MsgUpdateVestingFunder, Evmos_Vesting_V1_MsgUpdateVestingFunderResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Evmos_Vesting_V1_MsgClientMetadata.Methods.updateVestingFunder.path, requestHandler: requestHandler)
  }

  public func enqueueUpdateVestingFunderResponse(
    _ response: Evmos_Vesting_V1_MsgUpdateVestingFunderResponse,
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Vesting_V1_MsgUpdateVestingFunder>) -> () = { _ in }
  ) {
    let stream = self.makeUpdateVestingFunderResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'UpdateVestingFunder'
  public var hasUpdateVestingFunderResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Evmos_Vesting_V1_MsgClientMetadata.Methods.updateVestingFunder.path)
  }

  /// Make a unary response for the ConvertVestingAccount RPC. This must be called
  /// before calling 'convertVestingAccount'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeConvertVestingAccountResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Vesting_V1_MsgConvertVestingAccount>) -> () = { _ in }
  ) -> FakeUnaryResponse<Evmos_Vesting_V1_MsgConvertVestingAccount, Evmos_Vesting_V1_MsgConvertVestingAccountResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Evmos_Vesting_V1_MsgClientMetadata.Methods.convertVestingAccount.path, requestHandler: requestHandler)
  }

  public func enqueueConvertVestingAccountResponse(
    _ response: Evmos_Vesting_V1_MsgConvertVestingAccountResponse,
    _ requestHandler: @escaping (FakeRequestPart<Evmos_Vesting_V1_MsgConvertVestingAccount>) -> () = { _ in }
  ) {
    let stream = self.makeConvertVestingAccountResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'ConvertVestingAccount'
  public var hasConvertVestingAccountResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Evmos_Vesting_V1_MsgClientMetadata.Methods.convertVestingAccount.path)
  }
}

