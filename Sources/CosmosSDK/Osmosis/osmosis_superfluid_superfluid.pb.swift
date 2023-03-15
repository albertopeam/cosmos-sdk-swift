// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: osmosis/superfluid/superfluid.proto
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

/// SuperfluidAssetType indicates whether the superfluid asset is
/// a native token itself or the lp share of a pool.
public enum Osmosis_Superfluid_SuperfluidAssetType: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case native // = 0

  /// SuperfluidAssetTypeLendingShare = 2; // for now not exist
  case lpshare // = 1
  case UNRECOGNIZED(Int)

  public init() {
    self = .native
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .native
    case 1: self = .lpshare
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .native: return 0
    case .lpshare: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Osmosis_Superfluid_SuperfluidAssetType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Osmosis_Superfluid_SuperfluidAssetType] = [
    .native,
    .lpshare,
  ]
}

#endif  // swift(>=4.2)

/// SuperfluidAsset stores the pair of superfluid asset type and denom pair
public struct Osmosis_Superfluid_SuperfluidAsset {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var denom: String = String()

  /// AssetType indicates whether the superfluid asset is a native token or an lp
  /// share
  public var assetType: Osmosis_Superfluid_SuperfluidAssetType = .native

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// SuperfluidIntermediaryAccount takes the role of intermediary between LP token
/// and OSMO tokens for superfluid staking. The intermediary account is the
/// actual account responsible for delegation, not the validator account itself.
public struct Osmosis_Superfluid_SuperfluidIntermediaryAccount {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Denom indicates the denom of the superfluid asset.
  public var denom: String = String()

  public var valAddr: String = String()

  /// perpetual gauge for rewards distribution
  public var gaugeID: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The Osmo-Equivalent-Multiplier Record for epoch N refers to the osmo worth we
/// treat an LP share as having, for all of epoch N. Eventually this is intended
/// to be set as the Time-weighted-average-osmo-backing for the entire duration
/// of epoch N-1. (Thereby locking whats in use for epoch N as based on the prior
/// epochs rewards) However for now, this is not the TWAP but instead the spot
/// price at the boundary. For different types of assets in the future, it could
/// change.
public struct Osmosis_Superfluid_OsmoEquivalentMultiplierRecord {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var epochNumber: Int64 = 0

  /// superfluid asset denom, can be LP token or native token
  public var denom: String = String()

  public var multiplier: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// SuperfluidDelegationRecord is a struct used to indicate superfluid
/// delegations of an account in the state machine in a user friendly form.
public struct Osmosis_Superfluid_SuperfluidDelegationRecord {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var delegatorAddress: String = String()

  public var validatorAddress: String = String()

  public var delegationAmount: Cosmos_Base_V1beta1_Coin {
    get {return _delegationAmount ?? Cosmos_Base_V1beta1_Coin()}
    set {_delegationAmount = newValue}
  }
  /// Returns true if `delegationAmount` has been explicitly set.
  public var hasDelegationAmount: Bool {return self._delegationAmount != nil}
  /// Clears the value of `delegationAmount`. Subsequent reads from it will return its default value.
  public mutating func clearDelegationAmount() {self._delegationAmount = nil}

  public var equivalentStakedAmount: Cosmos_Base_V1beta1_Coin {
    get {return _equivalentStakedAmount ?? Cosmos_Base_V1beta1_Coin()}
    set {_equivalentStakedAmount = newValue}
  }
  /// Returns true if `equivalentStakedAmount` has been explicitly set.
  public var hasEquivalentStakedAmount: Bool {return self._equivalentStakedAmount != nil}
  /// Clears the value of `equivalentStakedAmount`. Subsequent reads from it will return its default value.
  public mutating func clearEquivalentStakedAmount() {self._equivalentStakedAmount = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _delegationAmount: Cosmos_Base_V1beta1_Coin? = nil
  fileprivate var _equivalentStakedAmount: Cosmos_Base_V1beta1_Coin? = nil
}

/// LockIdIntermediaryAccountConnection is a struct used to indicate the
/// relationship between the underlying lock id and superfluid delegation done
/// via lp shares.
public struct Osmosis_Superfluid_LockIdIntermediaryAccountConnection {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var lockID: UInt64 = 0

  public var intermediaryAccount: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Osmosis_Superfluid_UnpoolWhitelistedPools {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var ids: [UInt64] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Osmosis_Superfluid_SuperfluidAssetType: @unchecked Sendable {}
extension Osmosis_Superfluid_SuperfluidAsset: @unchecked Sendable {}
extension Osmosis_Superfluid_SuperfluidIntermediaryAccount: @unchecked Sendable {}
extension Osmosis_Superfluid_OsmoEquivalentMultiplierRecord: @unchecked Sendable {}
extension Osmosis_Superfluid_SuperfluidDelegationRecord: @unchecked Sendable {}
extension Osmosis_Superfluid_LockIdIntermediaryAccountConnection: @unchecked Sendable {}
extension Osmosis_Superfluid_UnpoolWhitelistedPools: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "osmosis.superfluid"

extension Osmosis_Superfluid_SuperfluidAssetType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SuperfluidAssetTypeNative"),
    1: .same(proto: "SuperfluidAssetTypeLPShare"),
  ]
}

extension Osmosis_Superfluid_SuperfluidAsset: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SuperfluidAsset"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "denom"),
    2: .standard(proto: "asset_type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.denom) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.assetType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.denom.isEmpty {
      try visitor.visitSingularStringField(value: self.denom, fieldNumber: 1)
    }
    if self.assetType != .native {
      try visitor.visitSingularEnumField(value: self.assetType, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Osmosis_Superfluid_SuperfluidAsset, rhs: Osmosis_Superfluid_SuperfluidAsset) -> Bool {
    if lhs.denom != rhs.denom {return false}
    if lhs.assetType != rhs.assetType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Osmosis_Superfluid_SuperfluidIntermediaryAccount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SuperfluidIntermediaryAccount"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "denom"),
    2: .standard(proto: "val_addr"),
    3: .standard(proto: "gauge_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.denom) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.valAddr) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.gaugeID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.denom.isEmpty {
      try visitor.visitSingularStringField(value: self.denom, fieldNumber: 1)
    }
    if !self.valAddr.isEmpty {
      try visitor.visitSingularStringField(value: self.valAddr, fieldNumber: 2)
    }
    if self.gaugeID != 0 {
      try visitor.visitSingularUInt64Field(value: self.gaugeID, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Osmosis_Superfluid_SuperfluidIntermediaryAccount, rhs: Osmosis_Superfluid_SuperfluidIntermediaryAccount) -> Bool {
    if lhs.denom != rhs.denom {return false}
    if lhs.valAddr != rhs.valAddr {return false}
    if lhs.gaugeID != rhs.gaugeID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Osmosis_Superfluid_OsmoEquivalentMultiplierRecord: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OsmoEquivalentMultiplierRecord"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "epoch_number"),
    2: .same(proto: "denom"),
    3: .same(proto: "multiplier"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.epochNumber) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.denom) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.multiplier) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.epochNumber != 0 {
      try visitor.visitSingularInt64Field(value: self.epochNumber, fieldNumber: 1)
    }
    if !self.denom.isEmpty {
      try visitor.visitSingularStringField(value: self.denom, fieldNumber: 2)
    }
    if !self.multiplier.isEmpty {
      try visitor.visitSingularStringField(value: self.multiplier, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Osmosis_Superfluid_OsmoEquivalentMultiplierRecord, rhs: Osmosis_Superfluid_OsmoEquivalentMultiplierRecord) -> Bool {
    if lhs.epochNumber != rhs.epochNumber {return false}
    if lhs.denom != rhs.denom {return false}
    if lhs.multiplier != rhs.multiplier {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Osmosis_Superfluid_SuperfluidDelegationRecord: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SuperfluidDelegationRecord"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "delegator_address"),
    2: .standard(proto: "validator_address"),
    3: .standard(proto: "delegation_amount"),
    4: .standard(proto: "equivalent_staked_amount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.delegatorAddress) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.validatorAddress) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._delegationAmount) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._equivalentStakedAmount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.delegatorAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.delegatorAddress, fieldNumber: 1)
    }
    if !self.validatorAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.validatorAddress, fieldNumber: 2)
    }
    try { if let v = self._delegationAmount {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._equivalentStakedAmount {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Osmosis_Superfluid_SuperfluidDelegationRecord, rhs: Osmosis_Superfluid_SuperfluidDelegationRecord) -> Bool {
    if lhs.delegatorAddress != rhs.delegatorAddress {return false}
    if lhs.validatorAddress != rhs.validatorAddress {return false}
    if lhs._delegationAmount != rhs._delegationAmount {return false}
    if lhs._equivalentStakedAmount != rhs._equivalentStakedAmount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Osmosis_Superfluid_LockIdIntermediaryAccountConnection: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LockIdIntermediaryAccountConnection"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "lock_id"),
    2: .standard(proto: "intermediary_account"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.lockID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.intermediaryAccount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.lockID != 0 {
      try visitor.visitSingularUInt64Field(value: self.lockID, fieldNumber: 1)
    }
    if !self.intermediaryAccount.isEmpty {
      try visitor.visitSingularStringField(value: self.intermediaryAccount, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Osmosis_Superfluid_LockIdIntermediaryAccountConnection, rhs: Osmosis_Superfluid_LockIdIntermediaryAccountConnection) -> Bool {
    if lhs.lockID != rhs.lockID {return false}
    if lhs.intermediaryAccount != rhs.intermediaryAccount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Osmosis_Superfluid_UnpoolWhitelistedPools: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UnpoolWhitelistedPools"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "ids"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedUInt64Field(value: &self.ids) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.ids.isEmpty {
      try visitor.visitPackedUInt64Field(value: self.ids, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Osmosis_Superfluid_UnpoolWhitelistedPools, rhs: Osmosis_Superfluid_UnpoolWhitelistedPools) -> Bool {
    if lhs.ids != rhs.ids {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
