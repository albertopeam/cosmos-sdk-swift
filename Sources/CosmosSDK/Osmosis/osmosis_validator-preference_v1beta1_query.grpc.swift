//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: osmosis/validator-preference/v1beta1/query.proto
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
/// Usage: instantiate `Osmosis_Validatorpreference_V1beta1_QueryClient`, then call methods of this protocol to make API calls.
public protocol Osmosis_Validatorpreference_V1beta1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Osmosis_Validatorpreference_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func userValidatorPreferences(
    _ request: Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences,
    callOptions: CallOptions?
  ) -> UnaryCall<Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences, Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferenceResponse>
}

extension Osmosis_Validatorpreference_V1beta1_QueryClientProtocol {
  public var serviceName: String {
    return "osmosis.validatorpreference.v1beta1.Query"
  }

  /// Returns the list of ValidatorPreferences for the user.
  ///
  /// - Parameters:
  ///   - request: Request to send to UserValidatorPreferences.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func userValidatorPreferences(
    _ request: Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences, Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferenceResponse> {
    return self.makeUnaryCall(
      path: Osmosis_Validatorpreference_V1beta1_QueryClientMetadata.Methods.userValidatorPreferences.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUserValidatorPreferencesInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Osmosis_Validatorpreference_V1beta1_QueryClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Osmosis_Validatorpreference_V1beta1_QueryNIOClient")
public final class Osmosis_Validatorpreference_V1beta1_QueryClient: Osmosis_Validatorpreference_V1beta1_QueryClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Osmosis_Validatorpreference_V1beta1_QueryClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Osmosis_Validatorpreference_V1beta1_QueryClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the osmosis.validatorpreference.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Validatorpreference_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Osmosis_Validatorpreference_V1beta1_QueryNIOClient: Osmosis_Validatorpreference_V1beta1_QueryClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Osmosis_Validatorpreference_V1beta1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the osmosis.validatorpreference.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Validatorpreference_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Query defines the gRPC querier service.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Osmosis_Validatorpreference_V1beta1_QueryAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Osmosis_Validatorpreference_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func makeUserValidatorPreferencesCall(
    _ request: Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences, Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferenceResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Osmosis_Validatorpreference_V1beta1_QueryAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Osmosis_Validatorpreference_V1beta1_QueryClientMetadata.serviceDescriptor
  }

  public var interceptors: Osmosis_Validatorpreference_V1beta1_QueryClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeUserValidatorPreferencesCall(
    _ request: Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences, Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferenceResponse> {
    return self.makeAsyncUnaryCall(
      path: Osmosis_Validatorpreference_V1beta1_QueryClientMetadata.Methods.userValidatorPreferences.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUserValidatorPreferencesInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Osmosis_Validatorpreference_V1beta1_QueryAsyncClientProtocol {
  public func userValidatorPreferences(
    _ request: Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences,
    callOptions: CallOptions? = nil
  ) async throws -> Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferenceResponse {
    return try await self.performAsyncUnaryCall(
      path: Osmosis_Validatorpreference_V1beta1_QueryClientMetadata.Methods.userValidatorPreferences.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUserValidatorPreferencesInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Osmosis_Validatorpreference_V1beta1_QueryAsyncClient: Osmosis_Validatorpreference_V1beta1_QueryAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Osmosis_Validatorpreference_V1beta1_QueryClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Validatorpreference_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Osmosis_Validatorpreference_V1beta1_QueryClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'userValidatorPreferences'.
  func makeUserValidatorPreferencesInterceptors() -> [ClientInterceptor<Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences, Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferenceResponse>]
}

public enum Osmosis_Validatorpreference_V1beta1_QueryClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Query",
    fullName: "osmosis.validatorpreference.v1beta1.Query",
    methods: [
      Osmosis_Validatorpreference_V1beta1_QueryClientMetadata.Methods.userValidatorPreferences,
    ]
  )

  public enum Methods {
    public static let userValidatorPreferences = GRPCMethodDescriptor(
      name: "UserValidatorPreferences",
      path: "/osmosis.validatorpreference.v1beta1.Query/UserValidatorPreferences",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Osmosis_Validatorpreference_V1beta1_QueryTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Osmosis_Validatorpreference_V1beta1_QueryTestClient: Osmosis_Validatorpreference_V1beta1_QueryClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Osmosis_Validatorpreference_V1beta1_QueryClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Validatorpreference_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the UserValidatorPreferences RPC. This must be called
  /// before calling 'userValidatorPreferences'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeUserValidatorPreferencesResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences>) -> () = { _ in }
  ) -> FakeUnaryResponse<Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences, Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferenceResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Osmosis_Validatorpreference_V1beta1_QueryClientMetadata.Methods.userValidatorPreferences.path, requestHandler: requestHandler)
  }

  public func enqueueUserValidatorPreferencesResponse(
    _ response: Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferenceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences>) -> () = { _ in }
  ) {
    let stream = self.makeUserValidatorPreferencesResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'UserValidatorPreferences'
  public var hasUserValidatorPreferencesResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Osmosis_Validatorpreference_V1beta1_QueryClientMetadata.Methods.userValidatorPreferences.path)
  }
}
