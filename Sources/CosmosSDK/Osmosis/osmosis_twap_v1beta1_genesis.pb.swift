// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: osmosis/twap/v1beta1/genesis.proto
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

/// Params holds parameters for the twap module
public struct Osmosis_Twap_V1beta1_Params {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var pruneEpochIdentifier: String = String()

  public var recordHistoryKeepPeriod: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _recordHistoryKeepPeriod ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_recordHistoryKeepPeriod = newValue}
  }
  /// Returns true if `recordHistoryKeepPeriod` has been explicitly set.
  public var hasRecordHistoryKeepPeriod: Bool {return self._recordHistoryKeepPeriod != nil}
  /// Clears the value of `recordHistoryKeepPeriod`. Subsequent reads from it will return its default value.
  public mutating func clearRecordHistoryKeepPeriod() {self._recordHistoryKeepPeriod = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _recordHistoryKeepPeriod: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

/// GenesisState defines the twap module's genesis state.
public struct Osmosis_Twap_V1beta1_GenesisState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// twaps is the collection of all twap records.
  public var twaps: [Osmosis_Twap_V1beta1_TwapRecord] = []

  /// params is the container of twap parameters.
  public var params: Osmosis_Twap_V1beta1_Params {
    get {return _params ?? Osmosis_Twap_V1beta1_Params()}
    set {_params = newValue}
  }
  /// Returns true if `params` has been explicitly set.
  public var hasParams: Bool {return self._params != nil}
  /// Clears the value of `params`. Subsequent reads from it will return its default value.
  public mutating func clearParams() {self._params = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _params: Osmosis_Twap_V1beta1_Params? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Osmosis_Twap_V1beta1_Params: @unchecked Sendable {}
extension Osmosis_Twap_V1beta1_GenesisState: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "osmosis.twap.v1beta1"

extension Osmosis_Twap_V1beta1_Params: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Params"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "prune_epoch_identifier"),
    2: .standard(proto: "record_history_keep_period"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.pruneEpochIdentifier) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._recordHistoryKeepPeriod) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.pruneEpochIdentifier.isEmpty {
      try visitor.visitSingularStringField(value: self.pruneEpochIdentifier, fieldNumber: 1)
    }
    try { if let v = self._recordHistoryKeepPeriod {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Osmosis_Twap_V1beta1_Params, rhs: Osmosis_Twap_V1beta1_Params) -> Bool {
    if lhs.pruneEpochIdentifier != rhs.pruneEpochIdentifier {return false}
    if lhs._recordHistoryKeepPeriod != rhs._recordHistoryKeepPeriod {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Osmosis_Twap_V1beta1_GenesisState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GenesisState"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "twaps"),
    2: .same(proto: "params"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.twaps) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._params) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.twaps.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.twaps, fieldNumber: 1)
    }
    try { if let v = self._params {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Osmosis_Twap_V1beta1_GenesisState, rhs: Osmosis_Twap_V1beta1_GenesisState) -> Bool {
    if lhs.twaps != rhs.twaps {return false}
    if lhs._params != rhs._params {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
