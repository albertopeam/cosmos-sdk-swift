// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: osmosis/validator-preference/v1beta1/state.proto
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

/// ValidatorPreference defines the message structure for
/// CreateValidatorSetPreference. It allows a user to set {val_addr, weight} in
/// state. If a user does not have a validator set preference list set, and has
/// staked, make their preference list default to their current staking
/// distribution.
public struct Osmosis_Validatorpreference_V1beta1_ValidatorPreference {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// val_oper_address holds the validator address the user wants to delegate
  /// funds to.
  public var valOperAddress: String = String()

  /// weight is decimal between 0 and 1, and they all sum to 1.
  public var weight: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// ValidatorSetPreferences defines a delegator's validator set preference.
/// It contains a list of (validator, percent_allocation) pairs.
/// The percent allocation are arranged in decimal notation from 0 to 1 and must
/// add up to 1.
public struct Osmosis_Validatorpreference_V1beta1_ValidatorSetPreferences {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// preference holds {valAddr, weight} for the user who created it.
  public var preferences: [Osmosis_Validatorpreference_V1beta1_ValidatorPreference] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Osmosis_Validatorpreference_V1beta1_ValidatorPreference: @unchecked Sendable {}
extension Osmosis_Validatorpreference_V1beta1_ValidatorSetPreferences: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "osmosis.validatorpreference.v1beta1"

extension Osmosis_Validatorpreference_V1beta1_ValidatorPreference: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ValidatorPreference"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "val_oper_address"),
    2: .same(proto: "weight"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.valOperAddress) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.weight) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.valOperAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.valOperAddress, fieldNumber: 1)
    }
    if !self.weight.isEmpty {
      try visitor.visitSingularStringField(value: self.weight, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Osmosis_Validatorpreference_V1beta1_ValidatorPreference, rhs: Osmosis_Validatorpreference_V1beta1_ValidatorPreference) -> Bool {
    if lhs.valOperAddress != rhs.valOperAddress {return false}
    if lhs.weight != rhs.weight {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Osmosis_Validatorpreference_V1beta1_ValidatorSetPreferences: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ValidatorSetPreferences"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "preferences"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.preferences) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.preferences.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.preferences, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Osmosis_Validatorpreference_V1beta1_ValidatorSetPreferences, rhs: Osmosis_Validatorpreference_V1beta1_ValidatorSetPreferences) -> Bool {
    if lhs.preferences != rhs.preferences {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}