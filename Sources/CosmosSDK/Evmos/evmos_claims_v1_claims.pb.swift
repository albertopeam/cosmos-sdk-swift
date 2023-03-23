// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: evmos/claims/v1/claims.proto
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

/// Action defines the list of available actions to claim the airdrop tokens.
public enum Evmos_Claims_V1_Action: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// ACTION_UNSPECIFIED defines an invalid action.
  case unspecified // = 0

  /// ACTION_VOTE defines a proposal vote.
  case vote // = 1

  /// ACTION_DELEGATE defines an staking delegation.
  case delegate // = 2

  /// ACTION_EVM defines an EVM transaction.
  case evm // = 3

  /// ACTION_IBC_TRANSFER defines a fungible token transfer transaction via IBC.
  case ibcTransfer // = 4
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .vote
    case 2: self = .delegate
    case 3: self = .evm
    case 4: self = .ibcTransfer
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .vote: return 1
    case .delegate: return 2
    case .evm: return 3
    case .ibcTransfer: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Evmos_Claims_V1_Action: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Evmos_Claims_V1_Action] = [
    .unspecified,
    .vote,
    .delegate,
    .evm,
    .ibcTransfer,
  ]
}

#endif  // swift(>=4.2)

/// Claim defines the action, completed flag and the remaining claimable amount
/// for a given user. This is only used during client queries.
public struct Evmos_Claims_V1_Claim {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// action enum
  public var action: Evmos_Claims_V1_Action = .unspecified

  /// completed is true if the action has been completed
  public var completed: Bool = false

  /// claimable_amount of tokens for the action. Zero if completed
  public var claimableAmount: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// ClaimsRecordAddress is the claims metadata per address that is used at
/// Genesis.
public struct Evmos_Claims_V1_ClaimsRecordAddress {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// address of claiming user in either bech32 or hex format
  public var address: String = String()

  /// initial_claimable_amount for the user
  public var initialClaimableAmount: String = String()

  /// actions_completed is a slice that describes which actions were completed
  public var actionsCompleted: [Bool] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// ClaimsRecord defines the initial claimable airdrop amount and the list of
/// completed actions to claim the tokens.
public struct Evmos_Claims_V1_ClaimsRecord {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// initial_claimable_amount for the user
  public var initialClaimableAmount: String = String()

  /// actions_completed is a slice that describes which actions were completed
  public var actionsCompleted: [Bool] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Evmos_Claims_V1_Action: @unchecked Sendable {}
extension Evmos_Claims_V1_Claim: @unchecked Sendable {}
extension Evmos_Claims_V1_ClaimsRecordAddress: @unchecked Sendable {}
extension Evmos_Claims_V1_ClaimsRecord: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "evmos.claims.v1"

extension Evmos_Claims_V1_Action: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ACTION_UNSPECIFIED"),
    1: .same(proto: "ACTION_VOTE"),
    2: .same(proto: "ACTION_DELEGATE"),
    3: .same(proto: "ACTION_EVM"),
    4: .same(proto: "ACTION_IBC_TRANSFER"),
  ]
}

extension Evmos_Claims_V1_Claim: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Claim"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "action"),
    2: .same(proto: "completed"),
    3: .standard(proto: "claimable_amount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.action) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.completed) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.claimableAmount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.action != .unspecified {
      try visitor.visitSingularEnumField(value: self.action, fieldNumber: 1)
    }
    if self.completed != false {
      try visitor.visitSingularBoolField(value: self.completed, fieldNumber: 2)
    }
    if !self.claimableAmount.isEmpty {
      try visitor.visitSingularStringField(value: self.claimableAmount, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Claims_V1_Claim, rhs: Evmos_Claims_V1_Claim) -> Bool {
    if lhs.action != rhs.action {return false}
    if lhs.completed != rhs.completed {return false}
    if lhs.claimableAmount != rhs.claimableAmount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Evmos_Claims_V1_ClaimsRecordAddress: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ClaimsRecordAddress"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
    2: .standard(proto: "initial_claimable_amount"),
    3: .standard(proto: "actions_completed"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.address) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.initialClaimableAmount) }()
      case 3: try { try decoder.decodeRepeatedBoolField(value: &self.actionsCompleted) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 1)
    }
    if !self.initialClaimableAmount.isEmpty {
      try visitor.visitSingularStringField(value: self.initialClaimableAmount, fieldNumber: 2)
    }
    if !self.actionsCompleted.isEmpty {
      try visitor.visitPackedBoolField(value: self.actionsCompleted, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Claims_V1_ClaimsRecordAddress, rhs: Evmos_Claims_V1_ClaimsRecordAddress) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.initialClaimableAmount != rhs.initialClaimableAmount {return false}
    if lhs.actionsCompleted != rhs.actionsCompleted {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Evmos_Claims_V1_ClaimsRecord: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ClaimsRecord"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "initial_claimable_amount"),
    2: .standard(proto: "actions_completed"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.initialClaimableAmount) }()
      case 2: try { try decoder.decodeRepeatedBoolField(value: &self.actionsCompleted) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.initialClaimableAmount.isEmpty {
      try visitor.visitSingularStringField(value: self.initialClaimableAmount, fieldNumber: 1)
    }
    if !self.actionsCompleted.isEmpty {
      try visitor.visitPackedBoolField(value: self.actionsCompleted, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Claims_V1_ClaimsRecord, rhs: Evmos_Claims_V1_ClaimsRecord) -> Bool {
    if lhs.initialClaimableAmount != rhs.initialClaimableAmount {return false}
    if lhs.actionsCompleted != rhs.actionsCompleted {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
