// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: osmosis/pool-incentives/v1beta1/genesis.proto
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

/// GenesisState defines the pool incentives module's genesis state.
public struct Osmosis_Poolincentives_V1beta1_GenesisState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// params defines all the paramaters of the module.
  public var params: Osmosis_Poolincentives_V1beta1_Params {
    get {return _params ?? Osmosis_Poolincentives_V1beta1_Params()}
    set {_params = newValue}
  }
  /// Returns true if `params` has been explicitly set.
  public var hasParams: Bool {return self._params != nil}
  /// Clears the value of `params`. Subsequent reads from it will return its default value.
  public mutating func clearParams() {self._params = nil}

  public var lockableDurations: [SwiftProtobuf.Google_Protobuf_Duration] = []

  public var distrInfo: Osmosis_Poolincentives_V1beta1_DistrInfo {
    get {return _distrInfo ?? Osmosis_Poolincentives_V1beta1_DistrInfo()}
    set {_distrInfo = newValue}
  }
  /// Returns true if `distrInfo` has been explicitly set.
  public var hasDistrInfo: Bool {return self._distrInfo != nil}
  /// Clears the value of `distrInfo`. Subsequent reads from it will return its default value.
  public mutating func clearDistrInfo() {self._distrInfo = nil}

  public var poolToGauges: Osmosis_Poolincentives_V1beta1_PoolToGauges {
    get {return _poolToGauges ?? Osmosis_Poolincentives_V1beta1_PoolToGauges()}
    set {_poolToGauges = newValue}
  }
  /// Returns true if `poolToGauges` has been explicitly set.
  public var hasPoolToGauges: Bool {return self._poolToGauges != nil}
  /// Clears the value of `poolToGauges`. Subsequent reads from it will return its default value.
  public mutating func clearPoolToGauges() {self._poolToGauges = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _params: Osmosis_Poolincentives_V1beta1_Params? = nil
  fileprivate var _distrInfo: Osmosis_Poolincentives_V1beta1_DistrInfo? = nil
  fileprivate var _poolToGauges: Osmosis_Poolincentives_V1beta1_PoolToGauges? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Osmosis_Poolincentives_V1beta1_GenesisState: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "osmosis.poolincentives.v1beta1"

extension Osmosis_Poolincentives_V1beta1_GenesisState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GenesisState"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "params"),
    2: .standard(proto: "lockable_durations"),
    3: .standard(proto: "distr_info"),
    4: .standard(proto: "pool_to_gauges"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._params) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.lockableDurations) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._distrInfo) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._poolToGauges) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._params {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.lockableDurations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.lockableDurations, fieldNumber: 2)
    }
    try { if let v = self._distrInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._poolToGauges {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Osmosis_Poolincentives_V1beta1_GenesisState, rhs: Osmosis_Poolincentives_V1beta1_GenesisState) -> Bool {
    if lhs._params != rhs._params {return false}
    if lhs.lockableDurations != rhs.lockableDurations {return false}
    if lhs._distrInfo != rhs._distrInfo {return false}
    if lhs._poolToGauges != rhs._poolToGauges {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
