// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: evmos/vesting/v1/tx.proto
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

/// MsgCreateClawbackVestingAccount defines a message that enables creating a
/// ClawbackVestingAccount.
public struct Evmos_Vesting_V1_MsgCreateClawbackVestingAccount {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// from_address specifies the account to provide the funds and sign the
  /// clawback request
  public var fromAddress: String = String()

  /// to_address specifies the account to receive the funds
  public var toAddress: String = String()

  /// start_time defines the time at which the vesting period begins
  public var startTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _startTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_startTime = newValue}
  }
  /// Returns true if `startTime` has been explicitly set.
  public var hasStartTime: Bool {return self._startTime != nil}
  /// Clears the value of `startTime`. Subsequent reads from it will return its default value.
  public mutating func clearStartTime() {self._startTime = nil}

  /// lockup_periods defines the unlocking schedule relative to the start_time
  public var lockupPeriods: [Cosmos_Vesting_V1beta1_Period] = []

  /// vesting_periods defines the vesting schedule relative to the start_time
  public var vestingPeriods: [Cosmos_Vesting_V1beta1_Period] = []

  /// merge specifies a the creation mechanism for existing
  /// ClawbackVestingAccounts. If true, merge this new grant into an existing
  /// ClawbackVestingAccount, or create it if it does not exist. If false,
  /// creates a new account. New grants to an existing account must be from the
  /// same from_address.
  public var merge: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _startTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// MsgCreateClawbackVestingAccountResponse defines the
/// MsgCreateClawbackVestingAccount response type.
public struct Evmos_Vesting_V1_MsgCreateClawbackVestingAccountResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgClawback defines a message that removes unvested tokens from a
/// ClawbackVestingAccount.
public struct Evmos_Vesting_V1_MsgClawback {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// funder_address is the address which funded the account
  public var funderAddress: String = String()

  /// account_address is the address of the ClawbackVestingAccount to claw back
  /// from.
  public var accountAddress: String = String()

  /// dest_address specifies where the clawed-back tokens should be transferred
  /// to. If empty, the tokens will be transferred back to the original funder of
  /// the account.
  public var destAddress: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgClawbackResponse defines the MsgClawback response type.
public struct Evmos_Vesting_V1_MsgClawbackResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgUpdateVestingFunder defines a message that updates the funder account of a
/// ClawbackVestingAccount.
public struct Evmos_Vesting_V1_MsgUpdateVestingFunder {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// funder_address is the current funder address of the ClawbackVestingAccount
  public var funderAddress: String = String()

  /// new_funder_address is the new address to replace the existing funder_address
  public var newFunderAddress: String = String()

  /// vesting_address is the address of the ClawbackVestingAccount being updated
  public var vestingAddress: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgUpdateVestingFunderResponse defines the MsgUpdateVestingFunder response
/// type.
public struct Evmos_Vesting_V1_MsgUpdateVestingFunderResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgConvertVestingAccount defines a message that enables converting a vesting account to a eth account
public struct Evmos_Vesting_V1_MsgConvertVestingAccount {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// vesting_address is the address of the vesting account to convert
  public var vestingAddress: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgConvertVestingAccountResponse defines the MsgConvertVestingAccount response type.
public struct Evmos_Vesting_V1_MsgConvertVestingAccountResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Evmos_Vesting_V1_MsgCreateClawbackVestingAccount: @unchecked Sendable {}
extension Evmos_Vesting_V1_MsgCreateClawbackVestingAccountResponse: @unchecked Sendable {}
extension Evmos_Vesting_V1_MsgClawback: @unchecked Sendable {}
extension Evmos_Vesting_V1_MsgClawbackResponse: @unchecked Sendable {}
extension Evmos_Vesting_V1_MsgUpdateVestingFunder: @unchecked Sendable {}
extension Evmos_Vesting_V1_MsgUpdateVestingFunderResponse: @unchecked Sendable {}
extension Evmos_Vesting_V1_MsgConvertVestingAccount: @unchecked Sendable {}
extension Evmos_Vesting_V1_MsgConvertVestingAccountResponse: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "evmos.vesting.v1"

extension Evmos_Vesting_V1_MsgCreateClawbackVestingAccount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgCreateClawbackVestingAccount"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "from_address"),
    2: .standard(proto: "to_address"),
    3: .standard(proto: "start_time"),
    4: .standard(proto: "lockup_periods"),
    5: .standard(proto: "vesting_periods"),
    6: .same(proto: "merge"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.fromAddress) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.toAddress) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._startTime) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.lockupPeriods) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.vestingPeriods) }()
      case 6: try { try decoder.decodeSingularBoolField(value: &self.merge) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.fromAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.fromAddress, fieldNumber: 1)
    }
    if !self.toAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.toAddress, fieldNumber: 2)
    }
    try { if let v = self._startTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    if !self.lockupPeriods.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.lockupPeriods, fieldNumber: 4)
    }
    if !self.vestingPeriods.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.vestingPeriods, fieldNumber: 5)
    }
    if self.merge != false {
      try visitor.visitSingularBoolField(value: self.merge, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Vesting_V1_MsgCreateClawbackVestingAccount, rhs: Evmos_Vesting_V1_MsgCreateClawbackVestingAccount) -> Bool {
    if lhs.fromAddress != rhs.fromAddress {return false}
    if lhs.toAddress != rhs.toAddress {return false}
    if lhs._startTime != rhs._startTime {return false}
    if lhs.lockupPeriods != rhs.lockupPeriods {return false}
    if lhs.vestingPeriods != rhs.vestingPeriods {return false}
    if lhs.merge != rhs.merge {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Evmos_Vesting_V1_MsgCreateClawbackVestingAccountResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgCreateClawbackVestingAccountResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Vesting_V1_MsgCreateClawbackVestingAccountResponse, rhs: Evmos_Vesting_V1_MsgCreateClawbackVestingAccountResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Evmos_Vesting_V1_MsgClawback: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgClawback"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "funder_address"),
    2: .standard(proto: "account_address"),
    3: .standard(proto: "dest_address"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.funderAddress) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.accountAddress) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.destAddress) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.funderAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.funderAddress, fieldNumber: 1)
    }
    if !self.accountAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.accountAddress, fieldNumber: 2)
    }
    if !self.destAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.destAddress, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Vesting_V1_MsgClawback, rhs: Evmos_Vesting_V1_MsgClawback) -> Bool {
    if lhs.funderAddress != rhs.funderAddress {return false}
    if lhs.accountAddress != rhs.accountAddress {return false}
    if lhs.destAddress != rhs.destAddress {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Evmos_Vesting_V1_MsgClawbackResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgClawbackResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Vesting_V1_MsgClawbackResponse, rhs: Evmos_Vesting_V1_MsgClawbackResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Evmos_Vesting_V1_MsgUpdateVestingFunder: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgUpdateVestingFunder"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "funder_address"),
    2: .standard(proto: "new_funder_address"),
    3: .standard(proto: "vesting_address"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.funderAddress) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.newFunderAddress) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.vestingAddress) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.funderAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.funderAddress, fieldNumber: 1)
    }
    if !self.newFunderAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.newFunderAddress, fieldNumber: 2)
    }
    if !self.vestingAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.vestingAddress, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Vesting_V1_MsgUpdateVestingFunder, rhs: Evmos_Vesting_V1_MsgUpdateVestingFunder) -> Bool {
    if lhs.funderAddress != rhs.funderAddress {return false}
    if lhs.newFunderAddress != rhs.newFunderAddress {return false}
    if lhs.vestingAddress != rhs.vestingAddress {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Evmos_Vesting_V1_MsgUpdateVestingFunderResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgUpdateVestingFunderResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Vesting_V1_MsgUpdateVestingFunderResponse, rhs: Evmos_Vesting_V1_MsgUpdateVestingFunderResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Evmos_Vesting_V1_MsgConvertVestingAccount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgConvertVestingAccount"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "vesting_address"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.vestingAddress) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.vestingAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.vestingAddress, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Vesting_V1_MsgConvertVestingAccount, rhs: Evmos_Vesting_V1_MsgConvertVestingAccount) -> Bool {
    if lhs.vestingAddress != rhs.vestingAddress {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Evmos_Vesting_V1_MsgConvertVestingAccountResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgConvertVestingAccountResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Vesting_V1_MsgConvertVestingAccountResponse, rhs: Evmos_Vesting_V1_MsgConvertVestingAccountResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
