// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: cosmos/tx/v1beta1/service.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// OrderBy defines the sorting order
public enum Cosmos_Tx_V1beta1_OrderBy: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// ORDER_BY_UNSPECIFIED specifies an unknown sorting order. OrderBy defaults to ASC in this case.
  case unspecified // = 0

  /// ORDER_BY_ASC defines ascending order
  case asc // = 1

  /// ORDER_BY_DESC defines descending order
  case desc // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .asc
    case 2: self = .desc
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .asc: return 1
    case .desc: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Cosmos_Tx_V1beta1_OrderBy: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Cosmos_Tx_V1beta1_OrderBy] = [
    .unspecified,
    .asc,
    .desc,
  ]
}

#endif  // swift(>=4.2)

/// BroadcastMode specifies the broadcast mode for the TxService.Broadcast RPC method.
public enum Cosmos_Tx_V1beta1_BroadcastMode: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// zero-value for mode ordering
  case unspecified // = 0

  /// BROADCAST_MODE_BLOCK defines a tx broadcasting mode where the client waits for
  /// the tx to be committed in a block.
  case block // = 1

  /// BROADCAST_MODE_SYNC defines a tx broadcasting mode where the client waits for
  /// a CheckTx execution response only.
  case sync // = 2

  /// BROADCAST_MODE_ASYNC defines a tx broadcasting mode where the client returns
  /// immediately.
  case async // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .block
    case 2: self = .sync
    case 3: self = .async
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .block: return 1
    case .sync: return 2
    case .async: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Cosmos_Tx_V1beta1_BroadcastMode: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Cosmos_Tx_V1beta1_BroadcastMode] = [
    .unspecified,
    .block,
    .sync,
    .async,
  ]
}

#endif  // swift(>=4.2)

/// GetTxsEventRequest is the request type for the Service.TxsByEvents
/// RPC method.
public struct Cosmos_Tx_V1beta1_GetTxsEventRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// events is the list of transaction event type.
  public var events: [String] = []

  /// pagination defines a pagination for the request.
  /// Deprecated post v0.46.x: use page and limit instead.
  public var pagination: Cosmos_Base_Query_V1beta1_PageRequest {
    get {return _pagination ?? Cosmos_Base_Query_V1beta1_PageRequest()}
    set {_pagination = newValue}
  }
  /// Returns true if `pagination` has been explicitly set.
  public var hasPagination: Bool {return self._pagination != nil}
  /// Clears the value of `pagination`. Subsequent reads from it will return its default value.
  public mutating func clearPagination() {self._pagination = nil}

  public var orderBy: Cosmos_Tx_V1beta1_OrderBy = .unspecified

  /// page is the page number to query, starts at 1. If not provided, will default to first page.
  public var page: UInt64 = 0

  /// limit is the total number of results to be returned in the result page.
  /// If left empty it will default to a value to be set by each app.
  public var limit: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _pagination: Cosmos_Base_Query_V1beta1_PageRequest? = nil
}

/// GetTxsEventResponse is the response type for the Service.TxsByEvents
/// RPC method.
public struct Cosmos_Tx_V1beta1_GetTxsEventResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// txs is the list of queried transactions.
  public var txs: [Cosmos_Tx_V1beta1_Tx] = []

  /// tx_responses is the list of queried TxResponses.
  public var txResponses: [Cosmos_Base_Abci_V1beta1_TxResponse] = []

  /// pagination defines a pagination for the response.
  /// Deprecated post v0.46.x: use total instead.
  public var pagination: Cosmos_Base_Query_V1beta1_PageResponse {
    get {return _pagination ?? Cosmos_Base_Query_V1beta1_PageResponse()}
    set {_pagination = newValue}
  }
  /// Returns true if `pagination` has been explicitly set.
  public var hasPagination: Bool {return self._pagination != nil}
  /// Clears the value of `pagination`. Subsequent reads from it will return its default value.
  public mutating func clearPagination() {self._pagination = nil}

  /// total is total number of results available
  public var total: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _pagination: Cosmos_Base_Query_V1beta1_PageResponse? = nil
}

/// BroadcastTxRequest is the request type for the Service.BroadcastTxRequest
/// RPC method.
public struct Cosmos_Tx_V1beta1_BroadcastTxRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// tx_bytes is the raw transaction.
  public var txBytes: Data = Data()

  public var mode: Cosmos_Tx_V1beta1_BroadcastMode = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// BroadcastTxResponse is the response type for the
/// Service.BroadcastTx method.
public struct Cosmos_Tx_V1beta1_BroadcastTxResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// tx_response is the queried TxResponses.
  public var txResponse: Cosmos_Base_Abci_V1beta1_TxResponse {
    get {return _txResponse ?? Cosmos_Base_Abci_V1beta1_TxResponse()}
    set {_txResponse = newValue}
  }
  /// Returns true if `txResponse` has been explicitly set.
  public var hasTxResponse: Bool {return self._txResponse != nil}
  /// Clears the value of `txResponse`. Subsequent reads from it will return its default value.
  public mutating func clearTxResponse() {self._txResponse = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _txResponse: Cosmos_Base_Abci_V1beta1_TxResponse? = nil
}

/// SimulateRequest is the request type for the Service.Simulate
/// RPC method.
public struct Cosmos_Tx_V1beta1_SimulateRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// tx is the transaction to simulate.
  /// Deprecated. Send raw tx bytes instead.
  public var tx: Cosmos_Tx_V1beta1_Tx {
    get {return _tx ?? Cosmos_Tx_V1beta1_Tx()}
    set {_tx = newValue}
  }
  /// Returns true if `tx` has been explicitly set.
  public var hasTx: Bool {return self._tx != nil}
  /// Clears the value of `tx`. Subsequent reads from it will return its default value.
  public mutating func clearTx() {self._tx = nil}

  /// tx_bytes is the raw transaction.
  ///
  /// Since: cosmos-sdk 0.43
  public var txBytes: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _tx: Cosmos_Tx_V1beta1_Tx? = nil
}

/// SimulateResponse is the response type for the
/// Service.SimulateRPC method.
public struct Cosmos_Tx_V1beta1_SimulateResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// gas_info is the information about gas used in the simulation.
  public var gasInfo: Cosmos_Base_Abci_V1beta1_GasInfo {
    get {return _gasInfo ?? Cosmos_Base_Abci_V1beta1_GasInfo()}
    set {_gasInfo = newValue}
  }
  /// Returns true if `gasInfo` has been explicitly set.
  public var hasGasInfo: Bool {return self._gasInfo != nil}
  /// Clears the value of `gasInfo`. Subsequent reads from it will return its default value.
  public mutating func clearGasInfo() {self._gasInfo = nil}

  /// result is the result of the simulation.
  public var result: Cosmos_Base_Abci_V1beta1_Result {
    get {return _result ?? Cosmos_Base_Abci_V1beta1_Result()}
    set {_result = newValue}
  }
  /// Returns true if `result` has been explicitly set.
  public var hasResult: Bool {return self._result != nil}
  /// Clears the value of `result`. Subsequent reads from it will return its default value.
  public mutating func clearResult() {self._result = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _gasInfo: Cosmos_Base_Abci_V1beta1_GasInfo? = nil
  fileprivate var _result: Cosmos_Base_Abci_V1beta1_Result? = nil
}

/// GetTxRequest is the request type for the Service.GetTx
/// RPC method.
public struct Cosmos_Tx_V1beta1_GetTxRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// hash is the tx hash to query, encoded as a hex string.
  public var hash: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// GetTxResponse is the response type for the Service.GetTx method.
public struct Cosmos_Tx_V1beta1_GetTxResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// tx is the queried transaction.
  public var tx: Cosmos_Tx_V1beta1_Tx {
    get {return _storage._tx ?? Cosmos_Tx_V1beta1_Tx()}
    set {_uniqueStorage()._tx = newValue}
  }
  /// Returns true if `tx` has been explicitly set.
  public var hasTx: Bool {return _storage._tx != nil}
  /// Clears the value of `tx`. Subsequent reads from it will return its default value.
  public mutating func clearTx() {_uniqueStorage()._tx = nil}

  /// tx_response is the queried TxResponses.
  public var txResponse: Cosmos_Base_Abci_V1beta1_TxResponse {
    get {return _storage._txResponse ?? Cosmos_Base_Abci_V1beta1_TxResponse()}
    set {_uniqueStorage()._txResponse = newValue}
  }
  /// Returns true if `txResponse` has been explicitly set.
  public var hasTxResponse: Bool {return _storage._txResponse != nil}
  /// Clears the value of `txResponse`. Subsequent reads from it will return its default value.
  public mutating func clearTxResponse() {_uniqueStorage()._txResponse = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// GetBlockWithTxsRequest is the request type for the Service.GetBlockWithTxs
/// RPC method.
///
/// Since: cosmos-sdk 0.45.2
public struct Cosmos_Tx_V1beta1_GetBlockWithTxsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// height is the height of the block to query.
  public var height: Int64 = 0

  /// pagination defines a pagination for the request.
  public var pagination: Cosmos_Base_Query_V1beta1_PageRequest {
    get {return _pagination ?? Cosmos_Base_Query_V1beta1_PageRequest()}
    set {_pagination = newValue}
  }
  /// Returns true if `pagination` has been explicitly set.
  public var hasPagination: Bool {return self._pagination != nil}
  /// Clears the value of `pagination`. Subsequent reads from it will return its default value.
  public mutating func clearPagination() {self._pagination = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _pagination: Cosmos_Base_Query_V1beta1_PageRequest? = nil
}

/// GetBlockWithTxsResponse is the response type for the Service.GetBlockWithTxs method.
///
/// Since: cosmos-sdk 0.45.2
public struct Cosmos_Tx_V1beta1_GetBlockWithTxsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// txs are the transactions in the block.
  public var txs: [Cosmos_Tx_V1beta1_Tx] = []

  public var blockID: Tendermint_Types_BlockID {
    get {return _blockID ?? Tendermint_Types_BlockID()}
    set {_blockID = newValue}
  }
  /// Returns true if `blockID` has been explicitly set.
  public var hasBlockID: Bool {return self._blockID != nil}
  /// Clears the value of `blockID`. Subsequent reads from it will return its default value.
  public mutating func clearBlockID() {self._blockID = nil}

  public var block: Tendermint_Types_Block {
    get {return _block ?? Tendermint_Types_Block()}
    set {_block = newValue}
  }
  /// Returns true if `block` has been explicitly set.
  public var hasBlock: Bool {return self._block != nil}
  /// Clears the value of `block`. Subsequent reads from it will return its default value.
  public mutating func clearBlock() {self._block = nil}

  /// pagination defines a pagination for the response.
  public var pagination: Cosmos_Base_Query_V1beta1_PageResponse {
    get {return _pagination ?? Cosmos_Base_Query_V1beta1_PageResponse()}
    set {_pagination = newValue}
  }
  /// Returns true if `pagination` has been explicitly set.
  public var hasPagination: Bool {return self._pagination != nil}
  /// Clears the value of `pagination`. Subsequent reads from it will return its default value.
  public mutating func clearPagination() {self._pagination = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _blockID: Tendermint_Types_BlockID? = nil
  fileprivate var _block: Tendermint_Types_Block? = nil
  fileprivate var _pagination: Cosmos_Base_Query_V1beta1_PageResponse? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Cosmos_Tx_V1beta1_OrderBy: @unchecked Sendable {}
extension Cosmos_Tx_V1beta1_BroadcastMode: @unchecked Sendable {}
extension Cosmos_Tx_V1beta1_GetTxsEventRequest: @unchecked Sendable {}
extension Cosmos_Tx_V1beta1_GetTxsEventResponse: @unchecked Sendable {}
extension Cosmos_Tx_V1beta1_BroadcastTxRequest: @unchecked Sendable {}
extension Cosmos_Tx_V1beta1_BroadcastTxResponse: @unchecked Sendable {}
extension Cosmos_Tx_V1beta1_SimulateRequest: @unchecked Sendable {}
extension Cosmos_Tx_V1beta1_SimulateResponse: @unchecked Sendable {}
extension Cosmos_Tx_V1beta1_GetTxRequest: @unchecked Sendable {}
extension Cosmos_Tx_V1beta1_GetTxResponse: @unchecked Sendable {}
extension Cosmos_Tx_V1beta1_GetBlockWithTxsRequest: @unchecked Sendable {}
extension Cosmos_Tx_V1beta1_GetBlockWithTxsResponse: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "cosmos.tx.v1beta1"

extension Cosmos_Tx_V1beta1_OrderBy: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ORDER_BY_UNSPECIFIED"),
    1: .same(proto: "ORDER_BY_ASC"),
    2: .same(proto: "ORDER_BY_DESC"),
  ]
}

extension Cosmos_Tx_V1beta1_BroadcastMode: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "BROADCAST_MODE_UNSPECIFIED"),
    1: .same(proto: "BROADCAST_MODE_BLOCK"),
    2: .same(proto: "BROADCAST_MODE_SYNC"),
    3: .same(proto: "BROADCAST_MODE_ASYNC"),
  ]
}

extension Cosmos_Tx_V1beta1_GetTxsEventRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetTxsEventRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "events"),
    2: .same(proto: "pagination"),
    3: .standard(proto: "order_by"),
    4: .same(proto: "page"),
    5: .same(proto: "limit"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.events) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._pagination) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.orderBy) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self.page) }()
      case 5: try { try decoder.decodeSingularUInt64Field(value: &self.limit) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.events.isEmpty {
      try visitor.visitRepeatedStringField(value: self.events, fieldNumber: 1)
    }
    try { if let v = self._pagination {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    if self.orderBy != .unspecified {
      try visitor.visitSingularEnumField(value: self.orderBy, fieldNumber: 3)
    }
    if self.page != 0 {
      try visitor.visitSingularUInt64Field(value: self.page, fieldNumber: 4)
    }
    if self.limit != 0 {
      try visitor.visitSingularUInt64Field(value: self.limit, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Tx_V1beta1_GetTxsEventRequest, rhs: Cosmos_Tx_V1beta1_GetTxsEventRequest) -> Bool {
    if lhs.events != rhs.events {return false}
    if lhs._pagination != rhs._pagination {return false}
    if lhs.orderBy != rhs.orderBy {return false}
    if lhs.page != rhs.page {return false}
    if lhs.limit != rhs.limit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Tx_V1beta1_GetTxsEventResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetTxsEventResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "txs"),
    2: .standard(proto: "tx_responses"),
    3: .same(proto: "pagination"),
    4: .same(proto: "total"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.txs) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.txResponses) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._pagination) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self.total) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.txs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.txs, fieldNumber: 1)
    }
    if !self.txResponses.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.txResponses, fieldNumber: 2)
    }
    try { if let v = self._pagination {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    if self.total != 0 {
      try visitor.visitSingularUInt64Field(value: self.total, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Tx_V1beta1_GetTxsEventResponse, rhs: Cosmos_Tx_V1beta1_GetTxsEventResponse) -> Bool {
    if lhs.txs != rhs.txs {return false}
    if lhs.txResponses != rhs.txResponses {return false}
    if lhs._pagination != rhs._pagination {return false}
    if lhs.total != rhs.total {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Tx_V1beta1_BroadcastTxRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BroadcastTxRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "tx_bytes"),
    2: .same(proto: "mode"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.txBytes) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.mode) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.txBytes.isEmpty {
      try visitor.visitSingularBytesField(value: self.txBytes, fieldNumber: 1)
    }
    if self.mode != .unspecified {
      try visitor.visitSingularEnumField(value: self.mode, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Tx_V1beta1_BroadcastTxRequest, rhs: Cosmos_Tx_V1beta1_BroadcastTxRequest) -> Bool {
    if lhs.txBytes != rhs.txBytes {return false}
    if lhs.mode != rhs.mode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Tx_V1beta1_BroadcastTxResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BroadcastTxResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "tx_response"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._txResponse) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._txResponse {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Tx_V1beta1_BroadcastTxResponse, rhs: Cosmos_Tx_V1beta1_BroadcastTxResponse) -> Bool {
    if lhs._txResponse != rhs._txResponse {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Tx_V1beta1_SimulateRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SimulateRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tx"),
    2: .standard(proto: "tx_bytes"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._tx) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.txBytes) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._tx {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.txBytes.isEmpty {
      try visitor.visitSingularBytesField(value: self.txBytes, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Tx_V1beta1_SimulateRequest, rhs: Cosmos_Tx_V1beta1_SimulateRequest) -> Bool {
    if lhs._tx != rhs._tx {return false}
    if lhs.txBytes != rhs.txBytes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Tx_V1beta1_SimulateResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SimulateResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "gas_info"),
    2: .same(proto: "result"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._gasInfo) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._result) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._gasInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._result {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Tx_V1beta1_SimulateResponse, rhs: Cosmos_Tx_V1beta1_SimulateResponse) -> Bool {
    if lhs._gasInfo != rhs._gasInfo {return false}
    if lhs._result != rhs._result {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Tx_V1beta1_GetTxRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetTxRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "hash"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.hash) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.hash.isEmpty {
      try visitor.visitSingularStringField(value: self.hash, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Tx_V1beta1_GetTxRequest, rhs: Cosmos_Tx_V1beta1_GetTxRequest) -> Bool {
    if lhs.hash != rhs.hash {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Tx_V1beta1_GetTxResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetTxResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tx"),
    2: .standard(proto: "tx_response"),
  ]

  fileprivate class _StorageClass {
    var _tx: Cosmos_Tx_V1beta1_Tx? = nil
    var _txResponse: Cosmos_Base_Abci_V1beta1_TxResponse? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _tx = source._tx
      _txResponse = source._txResponse
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._tx) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._txResponse) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      try { if let v = _storage._tx {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      } }()
      try { if let v = _storage._txResponse {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      } }()
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Tx_V1beta1_GetTxResponse, rhs: Cosmos_Tx_V1beta1_GetTxResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._tx != rhs_storage._tx {return false}
        if _storage._txResponse != rhs_storage._txResponse {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Tx_V1beta1_GetBlockWithTxsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetBlockWithTxsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "height"),
    2: .same(proto: "pagination"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.height) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._pagination) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.height != 0 {
      try visitor.visitSingularInt64Field(value: self.height, fieldNumber: 1)
    }
    try { if let v = self._pagination {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Tx_V1beta1_GetBlockWithTxsRequest, rhs: Cosmos_Tx_V1beta1_GetBlockWithTxsRequest) -> Bool {
    if lhs.height != rhs.height {return false}
    if lhs._pagination != rhs._pagination {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Tx_V1beta1_GetBlockWithTxsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetBlockWithTxsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "txs"),
    2: .standard(proto: "block_id"),
    3: .same(proto: "block"),
    4: .same(proto: "pagination"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.txs) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._blockID) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._block) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._pagination) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.txs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.txs, fieldNumber: 1)
    }
    try { if let v = self._blockID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._block {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._pagination {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Tx_V1beta1_GetBlockWithTxsResponse, rhs: Cosmos_Tx_V1beta1_GetBlockWithTxsResponse) -> Bool {
    if lhs.txs != rhs.txs {return false}
    if lhs._blockID != rhs._blockID {return false}
    if lhs._block != rhs._block {return false}
    if lhs._pagination != rhs._pagination {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
