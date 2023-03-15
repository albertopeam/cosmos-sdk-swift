//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: cosmos/evidence/v1beta1/query.proto
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
/// Usage: instantiate `Cosmos_Evidence_V1beta1_QueryClient`, then call methods of this protocol to make API calls.
public protocol Cosmos_Evidence_V1beta1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Cosmos_Evidence_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func evidence(
    _ request: Cosmos_Evidence_V1beta1_QueryEvidenceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Evidence_V1beta1_QueryEvidenceRequest, Cosmos_Evidence_V1beta1_QueryEvidenceResponse>

  func allEvidence(
    _ request: Cosmos_Evidence_V1beta1_QueryAllEvidenceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Evidence_V1beta1_QueryAllEvidenceRequest, Cosmos_Evidence_V1beta1_QueryAllEvidenceResponse>
}

extension Cosmos_Evidence_V1beta1_QueryClientProtocol {
  public var serviceName: String {
    return "cosmos.evidence.v1beta1.Query"
  }

  /// Evidence queries evidence based on evidence hash.
  ///
  /// - Parameters:
  ///   - request: Request to send to Evidence.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func evidence(
    _ request: Cosmos_Evidence_V1beta1_QueryEvidenceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Evidence_V1beta1_QueryEvidenceRequest, Cosmos_Evidence_V1beta1_QueryEvidenceResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Evidence_V1beta1_QueryClientMetadata.Methods.evidence.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEvidenceInterceptors() ?? []
    )
  }

  /// AllEvidence queries all evidence.
  ///
  /// - Parameters:
  ///   - request: Request to send to AllEvidence.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func allEvidence(
    _ request: Cosmos_Evidence_V1beta1_QueryAllEvidenceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Evidence_V1beta1_QueryAllEvidenceRequest, Cosmos_Evidence_V1beta1_QueryAllEvidenceResponse> {
    return self.makeUnaryCall(
      path: Cosmos_Evidence_V1beta1_QueryClientMetadata.Methods.allEvidence.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAllEvidenceInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Cosmos_Evidence_V1beta1_QueryClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Cosmos_Evidence_V1beta1_QueryNIOClient")
public final class Cosmos_Evidence_V1beta1_QueryClient: Cosmos_Evidence_V1beta1_QueryClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Cosmos_Evidence_V1beta1_QueryClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Cosmos_Evidence_V1beta1_QueryClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the cosmos.evidence.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Evidence_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Cosmos_Evidence_V1beta1_QueryNIOClient: Cosmos_Evidence_V1beta1_QueryClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Evidence_V1beta1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the cosmos.evidence.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Evidence_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Query defines the gRPC querier service.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Cosmos_Evidence_V1beta1_QueryAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Cosmos_Evidence_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func makeEvidenceCall(
    _ request: Cosmos_Evidence_V1beta1_QueryEvidenceRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Evidence_V1beta1_QueryEvidenceRequest, Cosmos_Evidence_V1beta1_QueryEvidenceResponse>

  func makeAllEvidenceCall(
    _ request: Cosmos_Evidence_V1beta1_QueryAllEvidenceRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cosmos_Evidence_V1beta1_QueryAllEvidenceRequest, Cosmos_Evidence_V1beta1_QueryAllEvidenceResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Evidence_V1beta1_QueryAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Cosmos_Evidence_V1beta1_QueryClientMetadata.serviceDescriptor
  }

  public var interceptors: Cosmos_Evidence_V1beta1_QueryClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeEvidenceCall(
    _ request: Cosmos_Evidence_V1beta1_QueryEvidenceRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Evidence_V1beta1_QueryEvidenceRequest, Cosmos_Evidence_V1beta1_QueryEvidenceResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Evidence_V1beta1_QueryClientMetadata.Methods.evidence.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEvidenceInterceptors() ?? []
    )
  }

  public func makeAllEvidenceCall(
    _ request: Cosmos_Evidence_V1beta1_QueryAllEvidenceRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cosmos_Evidence_V1beta1_QueryAllEvidenceRequest, Cosmos_Evidence_V1beta1_QueryAllEvidenceResponse> {
    return self.makeAsyncUnaryCall(
      path: Cosmos_Evidence_V1beta1_QueryClientMetadata.Methods.allEvidence.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAllEvidenceInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cosmos_Evidence_V1beta1_QueryAsyncClientProtocol {
  public func evidence(
    _ request: Cosmos_Evidence_V1beta1_QueryEvidenceRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Evidence_V1beta1_QueryEvidenceResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Evidence_V1beta1_QueryClientMetadata.Methods.evidence.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEvidenceInterceptors() ?? []
    )
  }

  public func allEvidence(
    _ request: Cosmos_Evidence_V1beta1_QueryAllEvidenceRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cosmos_Evidence_V1beta1_QueryAllEvidenceResponse {
    return try await self.performAsyncUnaryCall(
      path: Cosmos_Evidence_V1beta1_QueryClientMetadata.Methods.allEvidence.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAllEvidenceInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Cosmos_Evidence_V1beta1_QueryAsyncClient: Cosmos_Evidence_V1beta1_QueryAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Evidence_V1beta1_QueryClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Evidence_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Cosmos_Evidence_V1beta1_QueryClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'evidence'.
  func makeEvidenceInterceptors() -> [ClientInterceptor<Cosmos_Evidence_V1beta1_QueryEvidenceRequest, Cosmos_Evidence_V1beta1_QueryEvidenceResponse>]

  /// - Returns: Interceptors to use when invoking 'allEvidence'.
  func makeAllEvidenceInterceptors() -> [ClientInterceptor<Cosmos_Evidence_V1beta1_QueryAllEvidenceRequest, Cosmos_Evidence_V1beta1_QueryAllEvidenceResponse>]
}

public enum Cosmos_Evidence_V1beta1_QueryClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Query",
    fullName: "cosmos.evidence.v1beta1.Query",
    methods: [
      Cosmos_Evidence_V1beta1_QueryClientMetadata.Methods.evidence,
      Cosmos_Evidence_V1beta1_QueryClientMetadata.Methods.allEvidence,
    ]
  )

  public enum Methods {
    public static let evidence = GRPCMethodDescriptor(
      name: "Evidence",
      path: "/cosmos.evidence.v1beta1.Query/Evidence",
      type: GRPCCallType.unary
    )

    public static let allEvidence = GRPCMethodDescriptor(
      name: "AllEvidence",
      path: "/cosmos.evidence.v1beta1.Query/AllEvidence",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Cosmos_Evidence_V1beta1_QueryTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Cosmos_Evidence_V1beta1_QueryTestClient: Cosmos_Evidence_V1beta1_QueryClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Evidence_V1beta1_QueryClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Evidence_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the Evidence RPC. This must be called
  /// before calling 'evidence'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeEvidenceResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Evidence_V1beta1_QueryEvidenceRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Evidence_V1beta1_QueryEvidenceRequest, Cosmos_Evidence_V1beta1_QueryEvidenceResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Evidence_V1beta1_QueryClientMetadata.Methods.evidence.path, requestHandler: requestHandler)
  }

  public func enqueueEvidenceResponse(
    _ response: Cosmos_Evidence_V1beta1_QueryEvidenceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Evidence_V1beta1_QueryEvidenceRequest>) -> () = { _ in }
  ) {
    let stream = self.makeEvidenceResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Evidence'
  public var hasEvidenceResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Evidence_V1beta1_QueryClientMetadata.Methods.evidence.path)
  }

  /// Make a unary response for the AllEvidence RPC. This must be called
  /// before calling 'allEvidence'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeAllEvidenceResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Evidence_V1beta1_QueryAllEvidenceRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Cosmos_Evidence_V1beta1_QueryAllEvidenceRequest, Cosmos_Evidence_V1beta1_QueryAllEvidenceResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Cosmos_Evidence_V1beta1_QueryClientMetadata.Methods.allEvidence.path, requestHandler: requestHandler)
  }

  public func enqueueAllEvidenceResponse(
    _ response: Cosmos_Evidence_V1beta1_QueryAllEvidenceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Cosmos_Evidence_V1beta1_QueryAllEvidenceRequest>) -> () = { _ in }
  ) {
    let stream = self.makeAllEvidenceResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'AllEvidence'
  public var hasAllEvidenceResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Cosmos_Evidence_V1beta1_QueryClientMetadata.Methods.allEvidence.path)
  }
}
