//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: oracle/v1/tx.proto
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


/// Msg defines the oracle Msg service.
///
/// Usage: instantiate `Oracle_V1_MsgClient`, then call methods of this protocol to make API calls.
public protocol Oracle_V1_MsgClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Oracle_V1_MsgClientInterceptorFactoryProtocol? { get }

  func requestData(
    _ request: Oracle_V1_MsgRequestData,
    callOptions: CallOptions?
  ) -> UnaryCall<Oracle_V1_MsgRequestData, Oracle_V1_MsgRequestDataResponse>

  func reportData(
    _ request: Oracle_V1_MsgReportData,
    callOptions: CallOptions?
  ) -> UnaryCall<Oracle_V1_MsgReportData, Oracle_V1_MsgReportDataResponse>

  func createDataSource(
    _ request: Oracle_V1_MsgCreateDataSource,
    callOptions: CallOptions?
  ) -> UnaryCall<Oracle_V1_MsgCreateDataSource, Oracle_V1_MsgCreateDataSourceResponse>

  func editDataSource(
    _ request: Oracle_V1_MsgEditDataSource,
    callOptions: CallOptions?
  ) -> UnaryCall<Oracle_V1_MsgEditDataSource, Oracle_V1_MsgEditDataSourceResponse>

  func createOracleScript(
    _ request: Oracle_V1_MsgCreateOracleScript,
    callOptions: CallOptions?
  ) -> UnaryCall<Oracle_V1_MsgCreateOracleScript, Oracle_V1_MsgCreateOracleScriptResponse>

  func editOracleScript(
    _ request: Oracle_V1_MsgEditOracleScript,
    callOptions: CallOptions?
  ) -> UnaryCall<Oracle_V1_MsgEditOracleScript, Oracle_V1_MsgEditOracleScriptResponse>

  func activate(
    _ request: Oracle_V1_MsgActivate,
    callOptions: CallOptions?
  ) -> UnaryCall<Oracle_V1_MsgActivate, Oracle_V1_MsgActivateResponse>
}

extension Oracle_V1_MsgClientProtocol {
  public var serviceName: String {
    return "oracle.v1.Msg"
  }

  /// RequestData defines a method for submitting a new request.
  ///
  /// - Parameters:
  ///   - request: Request to send to RequestData.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func requestData(
    _ request: Oracle_V1_MsgRequestData,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Oracle_V1_MsgRequestData, Oracle_V1_MsgRequestDataResponse> {
    return self.makeUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.requestData.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRequestDataInterceptors() ?? []
    )
  }

  /// ReportData defines a method for reporting a data to resolve the request.
  ///
  /// - Parameters:
  ///   - request: Request to send to ReportData.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func reportData(
    _ request: Oracle_V1_MsgReportData,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Oracle_V1_MsgReportData, Oracle_V1_MsgReportDataResponse> {
    return self.makeUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.reportData.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeReportDataInterceptors() ?? []
    )
  }

  /// CreateDataSource defines a method for creating a new data source.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateDataSource.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createDataSource(
    _ request: Oracle_V1_MsgCreateDataSource,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Oracle_V1_MsgCreateDataSource, Oracle_V1_MsgCreateDataSourceResponse> {
    return self.makeUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.createDataSource.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateDataSourceInterceptors() ?? []
    )
  }

  /// EditDataSource defines a method for editing an existing data source.
  ///
  /// - Parameters:
  ///   - request: Request to send to EditDataSource.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func editDataSource(
    _ request: Oracle_V1_MsgEditDataSource,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Oracle_V1_MsgEditDataSource, Oracle_V1_MsgEditDataSourceResponse> {
    return self.makeUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.editDataSource.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEditDataSourceInterceptors() ?? []
    )
  }

  /// CreateOracleScript defines a method for creating a new oracle script.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateOracleScript.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createOracleScript(
    _ request: Oracle_V1_MsgCreateOracleScript,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Oracle_V1_MsgCreateOracleScript, Oracle_V1_MsgCreateOracleScriptResponse> {
    return self.makeUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.createOracleScript.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateOracleScriptInterceptors() ?? []
    )
  }

  /// EditOracleScript defines a method for editing an existing oracle script.
  ///
  /// - Parameters:
  ///   - request: Request to send to EditOracleScript.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func editOracleScript(
    _ request: Oracle_V1_MsgEditOracleScript,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Oracle_V1_MsgEditOracleScript, Oracle_V1_MsgEditOracleScriptResponse> {
    return self.makeUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.editOracleScript.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEditOracleScriptInterceptors() ?? []
    )
  }

  /// Activate defines a method for applying to be an oracle validator.
  ///
  /// - Parameters:
  ///   - request: Request to send to Activate.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func activate(
    _ request: Oracle_V1_MsgActivate,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Oracle_V1_MsgActivate, Oracle_V1_MsgActivateResponse> {
    return self.makeUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.activate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeActivateInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Oracle_V1_MsgClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Oracle_V1_MsgNIOClient")
public final class Oracle_V1_MsgClient: Oracle_V1_MsgClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Oracle_V1_MsgClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Oracle_V1_MsgClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the oracle.v1.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Oracle_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Oracle_V1_MsgNIOClient: Oracle_V1_MsgClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Oracle_V1_MsgClientInterceptorFactoryProtocol?

  /// Creates a client for the oracle.v1.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Oracle_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Msg defines the oracle Msg service.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Oracle_V1_MsgAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Oracle_V1_MsgClientInterceptorFactoryProtocol? { get }

  func makeRequestDataCall(
    _ request: Oracle_V1_MsgRequestData,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Oracle_V1_MsgRequestData, Oracle_V1_MsgRequestDataResponse>

  func makeReportDataCall(
    _ request: Oracle_V1_MsgReportData,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Oracle_V1_MsgReportData, Oracle_V1_MsgReportDataResponse>

  func makeCreateDataSourceCall(
    _ request: Oracle_V1_MsgCreateDataSource,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Oracle_V1_MsgCreateDataSource, Oracle_V1_MsgCreateDataSourceResponse>

  func makeEditDataSourceCall(
    _ request: Oracle_V1_MsgEditDataSource,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Oracle_V1_MsgEditDataSource, Oracle_V1_MsgEditDataSourceResponse>

  func makeCreateOracleScriptCall(
    _ request: Oracle_V1_MsgCreateOracleScript,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Oracle_V1_MsgCreateOracleScript, Oracle_V1_MsgCreateOracleScriptResponse>

  func makeEditOracleScriptCall(
    _ request: Oracle_V1_MsgEditOracleScript,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Oracle_V1_MsgEditOracleScript, Oracle_V1_MsgEditOracleScriptResponse>

  func makeActivateCall(
    _ request: Oracle_V1_MsgActivate,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Oracle_V1_MsgActivate, Oracle_V1_MsgActivateResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Oracle_V1_MsgAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Oracle_V1_MsgClientMetadata.serviceDescriptor
  }

  public var interceptors: Oracle_V1_MsgClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeRequestDataCall(
    _ request: Oracle_V1_MsgRequestData,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Oracle_V1_MsgRequestData, Oracle_V1_MsgRequestDataResponse> {
    return self.makeAsyncUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.requestData.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRequestDataInterceptors() ?? []
    )
  }

  public func makeReportDataCall(
    _ request: Oracle_V1_MsgReportData,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Oracle_V1_MsgReportData, Oracle_V1_MsgReportDataResponse> {
    return self.makeAsyncUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.reportData.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeReportDataInterceptors() ?? []
    )
  }

  public func makeCreateDataSourceCall(
    _ request: Oracle_V1_MsgCreateDataSource,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Oracle_V1_MsgCreateDataSource, Oracle_V1_MsgCreateDataSourceResponse> {
    return self.makeAsyncUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.createDataSource.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateDataSourceInterceptors() ?? []
    )
  }

  public func makeEditDataSourceCall(
    _ request: Oracle_V1_MsgEditDataSource,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Oracle_V1_MsgEditDataSource, Oracle_V1_MsgEditDataSourceResponse> {
    return self.makeAsyncUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.editDataSource.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEditDataSourceInterceptors() ?? []
    )
  }

  public func makeCreateOracleScriptCall(
    _ request: Oracle_V1_MsgCreateOracleScript,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Oracle_V1_MsgCreateOracleScript, Oracle_V1_MsgCreateOracleScriptResponse> {
    return self.makeAsyncUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.createOracleScript.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateOracleScriptInterceptors() ?? []
    )
  }

  public func makeEditOracleScriptCall(
    _ request: Oracle_V1_MsgEditOracleScript,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Oracle_V1_MsgEditOracleScript, Oracle_V1_MsgEditOracleScriptResponse> {
    return self.makeAsyncUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.editOracleScript.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEditOracleScriptInterceptors() ?? []
    )
  }

  public func makeActivateCall(
    _ request: Oracle_V1_MsgActivate,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Oracle_V1_MsgActivate, Oracle_V1_MsgActivateResponse> {
    return self.makeAsyncUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.activate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeActivateInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Oracle_V1_MsgAsyncClientProtocol {
  public func requestData(
    _ request: Oracle_V1_MsgRequestData,
    callOptions: CallOptions? = nil
  ) async throws -> Oracle_V1_MsgRequestDataResponse {
    return try await self.performAsyncUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.requestData.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRequestDataInterceptors() ?? []
    )
  }

  public func reportData(
    _ request: Oracle_V1_MsgReportData,
    callOptions: CallOptions? = nil
  ) async throws -> Oracle_V1_MsgReportDataResponse {
    return try await self.performAsyncUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.reportData.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeReportDataInterceptors() ?? []
    )
  }

  public func createDataSource(
    _ request: Oracle_V1_MsgCreateDataSource,
    callOptions: CallOptions? = nil
  ) async throws -> Oracle_V1_MsgCreateDataSourceResponse {
    return try await self.performAsyncUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.createDataSource.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateDataSourceInterceptors() ?? []
    )
  }

  public func editDataSource(
    _ request: Oracle_V1_MsgEditDataSource,
    callOptions: CallOptions? = nil
  ) async throws -> Oracle_V1_MsgEditDataSourceResponse {
    return try await self.performAsyncUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.editDataSource.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEditDataSourceInterceptors() ?? []
    )
  }

  public func createOracleScript(
    _ request: Oracle_V1_MsgCreateOracleScript,
    callOptions: CallOptions? = nil
  ) async throws -> Oracle_V1_MsgCreateOracleScriptResponse {
    return try await self.performAsyncUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.createOracleScript.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateOracleScriptInterceptors() ?? []
    )
  }

  public func editOracleScript(
    _ request: Oracle_V1_MsgEditOracleScript,
    callOptions: CallOptions? = nil
  ) async throws -> Oracle_V1_MsgEditOracleScriptResponse {
    return try await self.performAsyncUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.editOracleScript.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEditOracleScriptInterceptors() ?? []
    )
  }

  public func activate(
    _ request: Oracle_V1_MsgActivate,
    callOptions: CallOptions? = nil
  ) async throws -> Oracle_V1_MsgActivateResponse {
    return try await self.performAsyncUnaryCall(
      path: Oracle_V1_MsgClientMetadata.Methods.activate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeActivateInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Oracle_V1_MsgAsyncClient: Oracle_V1_MsgAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Oracle_V1_MsgClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Oracle_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Oracle_V1_MsgClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'requestData'.
  func makeRequestDataInterceptors() -> [ClientInterceptor<Oracle_V1_MsgRequestData, Oracle_V1_MsgRequestDataResponse>]

  /// - Returns: Interceptors to use when invoking 'reportData'.
  func makeReportDataInterceptors() -> [ClientInterceptor<Oracle_V1_MsgReportData, Oracle_V1_MsgReportDataResponse>]

  /// - Returns: Interceptors to use when invoking 'createDataSource'.
  func makeCreateDataSourceInterceptors() -> [ClientInterceptor<Oracle_V1_MsgCreateDataSource, Oracle_V1_MsgCreateDataSourceResponse>]

  /// - Returns: Interceptors to use when invoking 'editDataSource'.
  func makeEditDataSourceInterceptors() -> [ClientInterceptor<Oracle_V1_MsgEditDataSource, Oracle_V1_MsgEditDataSourceResponse>]

  /// - Returns: Interceptors to use when invoking 'createOracleScript'.
  func makeCreateOracleScriptInterceptors() -> [ClientInterceptor<Oracle_V1_MsgCreateOracleScript, Oracle_V1_MsgCreateOracleScriptResponse>]

  /// - Returns: Interceptors to use when invoking 'editOracleScript'.
  func makeEditOracleScriptInterceptors() -> [ClientInterceptor<Oracle_V1_MsgEditOracleScript, Oracle_V1_MsgEditOracleScriptResponse>]

  /// - Returns: Interceptors to use when invoking 'activate'.
  func makeActivateInterceptors() -> [ClientInterceptor<Oracle_V1_MsgActivate, Oracle_V1_MsgActivateResponse>]
}

public enum Oracle_V1_MsgClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Msg",
    fullName: "oracle.v1.Msg",
    methods: [
      Oracle_V1_MsgClientMetadata.Methods.requestData,
      Oracle_V1_MsgClientMetadata.Methods.reportData,
      Oracle_V1_MsgClientMetadata.Methods.createDataSource,
      Oracle_V1_MsgClientMetadata.Methods.editDataSource,
      Oracle_V1_MsgClientMetadata.Methods.createOracleScript,
      Oracle_V1_MsgClientMetadata.Methods.editOracleScript,
      Oracle_V1_MsgClientMetadata.Methods.activate,
    ]
  )

  public enum Methods {
    public static let requestData = GRPCMethodDescriptor(
      name: "RequestData",
      path: "/oracle.v1.Msg/RequestData",
      type: GRPCCallType.unary
    )

    public static let reportData = GRPCMethodDescriptor(
      name: "ReportData",
      path: "/oracle.v1.Msg/ReportData",
      type: GRPCCallType.unary
    )

    public static let createDataSource = GRPCMethodDescriptor(
      name: "CreateDataSource",
      path: "/oracle.v1.Msg/CreateDataSource",
      type: GRPCCallType.unary
    )

    public static let editDataSource = GRPCMethodDescriptor(
      name: "EditDataSource",
      path: "/oracle.v1.Msg/EditDataSource",
      type: GRPCCallType.unary
    )

    public static let createOracleScript = GRPCMethodDescriptor(
      name: "CreateOracleScript",
      path: "/oracle.v1.Msg/CreateOracleScript",
      type: GRPCCallType.unary
    )

    public static let editOracleScript = GRPCMethodDescriptor(
      name: "EditOracleScript",
      path: "/oracle.v1.Msg/EditOracleScript",
      type: GRPCCallType.unary
    )

    public static let activate = GRPCMethodDescriptor(
      name: "Activate",
      path: "/oracle.v1.Msg/Activate",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Oracle_V1_MsgTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Oracle_V1_MsgTestClient: Oracle_V1_MsgClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Oracle_V1_MsgClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Oracle_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the RequestData RPC. This must be called
  /// before calling 'requestData'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeRequestDataResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Oracle_V1_MsgRequestData>) -> () = { _ in }
  ) -> FakeUnaryResponse<Oracle_V1_MsgRequestData, Oracle_V1_MsgRequestDataResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Oracle_V1_MsgClientMetadata.Methods.requestData.path, requestHandler: requestHandler)
  }

  public func enqueueRequestDataResponse(
    _ response: Oracle_V1_MsgRequestDataResponse,
    _ requestHandler: @escaping (FakeRequestPart<Oracle_V1_MsgRequestData>) -> () = { _ in }
  ) {
    let stream = self.makeRequestDataResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'RequestData'
  public var hasRequestDataResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Oracle_V1_MsgClientMetadata.Methods.requestData.path)
  }

  /// Make a unary response for the ReportData RPC. This must be called
  /// before calling 'reportData'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeReportDataResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Oracle_V1_MsgReportData>) -> () = { _ in }
  ) -> FakeUnaryResponse<Oracle_V1_MsgReportData, Oracle_V1_MsgReportDataResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Oracle_V1_MsgClientMetadata.Methods.reportData.path, requestHandler: requestHandler)
  }

  public func enqueueReportDataResponse(
    _ response: Oracle_V1_MsgReportDataResponse,
    _ requestHandler: @escaping (FakeRequestPart<Oracle_V1_MsgReportData>) -> () = { _ in }
  ) {
    let stream = self.makeReportDataResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'ReportData'
  public var hasReportDataResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Oracle_V1_MsgClientMetadata.Methods.reportData.path)
  }

  /// Make a unary response for the CreateDataSource RPC. This must be called
  /// before calling 'createDataSource'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeCreateDataSourceResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Oracle_V1_MsgCreateDataSource>) -> () = { _ in }
  ) -> FakeUnaryResponse<Oracle_V1_MsgCreateDataSource, Oracle_V1_MsgCreateDataSourceResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Oracle_V1_MsgClientMetadata.Methods.createDataSource.path, requestHandler: requestHandler)
  }

  public func enqueueCreateDataSourceResponse(
    _ response: Oracle_V1_MsgCreateDataSourceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Oracle_V1_MsgCreateDataSource>) -> () = { _ in }
  ) {
    let stream = self.makeCreateDataSourceResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'CreateDataSource'
  public var hasCreateDataSourceResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Oracle_V1_MsgClientMetadata.Methods.createDataSource.path)
  }

  /// Make a unary response for the EditDataSource RPC. This must be called
  /// before calling 'editDataSource'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeEditDataSourceResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Oracle_V1_MsgEditDataSource>) -> () = { _ in }
  ) -> FakeUnaryResponse<Oracle_V1_MsgEditDataSource, Oracle_V1_MsgEditDataSourceResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Oracle_V1_MsgClientMetadata.Methods.editDataSource.path, requestHandler: requestHandler)
  }

  public func enqueueEditDataSourceResponse(
    _ response: Oracle_V1_MsgEditDataSourceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Oracle_V1_MsgEditDataSource>) -> () = { _ in }
  ) {
    let stream = self.makeEditDataSourceResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'EditDataSource'
  public var hasEditDataSourceResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Oracle_V1_MsgClientMetadata.Methods.editDataSource.path)
  }

  /// Make a unary response for the CreateOracleScript RPC. This must be called
  /// before calling 'createOracleScript'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeCreateOracleScriptResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Oracle_V1_MsgCreateOracleScript>) -> () = { _ in }
  ) -> FakeUnaryResponse<Oracle_V1_MsgCreateOracleScript, Oracle_V1_MsgCreateOracleScriptResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Oracle_V1_MsgClientMetadata.Methods.createOracleScript.path, requestHandler: requestHandler)
  }

  public func enqueueCreateOracleScriptResponse(
    _ response: Oracle_V1_MsgCreateOracleScriptResponse,
    _ requestHandler: @escaping (FakeRequestPart<Oracle_V1_MsgCreateOracleScript>) -> () = { _ in }
  ) {
    let stream = self.makeCreateOracleScriptResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'CreateOracleScript'
  public var hasCreateOracleScriptResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Oracle_V1_MsgClientMetadata.Methods.createOracleScript.path)
  }

  /// Make a unary response for the EditOracleScript RPC. This must be called
  /// before calling 'editOracleScript'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeEditOracleScriptResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Oracle_V1_MsgEditOracleScript>) -> () = { _ in }
  ) -> FakeUnaryResponse<Oracle_V1_MsgEditOracleScript, Oracle_V1_MsgEditOracleScriptResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Oracle_V1_MsgClientMetadata.Methods.editOracleScript.path, requestHandler: requestHandler)
  }

  public func enqueueEditOracleScriptResponse(
    _ response: Oracle_V1_MsgEditOracleScriptResponse,
    _ requestHandler: @escaping (FakeRequestPart<Oracle_V1_MsgEditOracleScript>) -> () = { _ in }
  ) {
    let stream = self.makeEditOracleScriptResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'EditOracleScript'
  public var hasEditOracleScriptResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Oracle_V1_MsgClientMetadata.Methods.editOracleScript.path)
  }

  /// Make a unary response for the Activate RPC. This must be called
  /// before calling 'activate'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeActivateResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Oracle_V1_MsgActivate>) -> () = { _ in }
  ) -> FakeUnaryResponse<Oracle_V1_MsgActivate, Oracle_V1_MsgActivateResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Oracle_V1_MsgClientMetadata.Methods.activate.path, requestHandler: requestHandler)
  }

  public func enqueueActivateResponse(
    _ response: Oracle_V1_MsgActivateResponse,
    _ requestHandler: @escaping (FakeRequestPart<Oracle_V1_MsgActivate>) -> () = { _ in }
  ) {
    let stream = self.makeActivateResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Activate'
  public var hasActivateResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Oracle_V1_MsgClientMetadata.Methods.activate.path)
  }
}

