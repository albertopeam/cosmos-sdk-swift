// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: osmosis/streamswap/v1/params.proto
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

/// Params holds parameters for the streamswap module
public struct Osmosis_Streamswap_V1_Params {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// fee charged when creating a new sale. The fee will go to the
  /// sale_fee_recipient unless it is not defined (empty).
  public var saleCreationFee: [Cosmos_Base_V1beta1_Coin] = []

  /// bech32 address of the fee recipient
  public var saleCreationFeeRecipient: String = String()

  /// minimum amount duration of time between the sale creation and the sale
  /// start time.
  public var minDurationUntilStartTime: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _minDurationUntilStartTime ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_minDurationUntilStartTime = newValue}
  }
  /// Returns true if `minDurationUntilStartTime` has been explicitly set.
  public var hasMinDurationUntilStartTime: Bool {return self._minDurationUntilStartTime != nil}
  /// Clears the value of `minDurationUntilStartTime`. Subsequent reads from it will return its default value.
  public mutating func clearMinDurationUntilStartTime() {self._minDurationUntilStartTime = nil}

  /// minimum duration for every new sale.
  public var minSaleDuration: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _minSaleDuration ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_minSaleDuration = newValue}
  }
  /// Returns true if `minSaleDuration` has been explicitly set.
  public var hasMinSaleDuration: Bool {return self._minSaleDuration != nil}
  /// Clears the value of `minSaleDuration`. Subsequent reads from it will return its default value.
  public mutating func clearMinSaleDuration() {self._minSaleDuration = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _minDurationUntilStartTime: SwiftProtobuf.Google_Protobuf_Duration? = nil
  fileprivate var _minSaleDuration: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Osmosis_Streamswap_V1_Params: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "osmosis.streamswap.v1"

extension Osmosis_Streamswap_V1_Params: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Params"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "sale_creation_fee"),
    2: .standard(proto: "sale_creation_fee_recipient"),
    3: .standard(proto: "min_duration_until_start_time"),
    4: .standard(proto: "min_sale_duration"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.saleCreationFee) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.saleCreationFeeRecipient) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._minDurationUntilStartTime) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._minSaleDuration) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.saleCreationFee.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.saleCreationFee, fieldNumber: 1)
    }
    if !self.saleCreationFeeRecipient.isEmpty {
      try visitor.visitSingularStringField(value: self.saleCreationFeeRecipient, fieldNumber: 2)
    }
    try { if let v = self._minDurationUntilStartTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._minSaleDuration {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Osmosis_Streamswap_V1_Params, rhs: Osmosis_Streamswap_V1_Params) -> Bool {
    if lhs.saleCreationFee != rhs.saleCreationFee {return false}
    if lhs.saleCreationFeeRecipient != rhs.saleCreationFeeRecipient {return false}
    if lhs._minDurationUntilStartTime != rhs._minDurationUntilStartTime {return false}
    if lhs._minSaleDuration != rhs._minSaleDuration {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
