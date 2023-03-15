// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: cosmos/vesting/v1beta1/vesting.proto
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

/// BaseVestingAccount implements the VestingAccount interface. It contains all
/// the necessary fields needed for any vesting account implementation.
public struct Cosmos_Vesting_V1beta1_BaseVestingAccount {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var baseAccount: Cosmos_Auth_V1beta1_BaseAccount {
    get {return _baseAccount ?? Cosmos_Auth_V1beta1_BaseAccount()}
    set {_baseAccount = newValue}
  }
  /// Returns true if `baseAccount` has been explicitly set.
  public var hasBaseAccount: Bool {return self._baseAccount != nil}
  /// Clears the value of `baseAccount`. Subsequent reads from it will return its default value.
  public mutating func clearBaseAccount() {self._baseAccount = nil}

  public var originalVesting: [Cosmos_Base_V1beta1_Coin] = []

  public var delegatedFree: [Cosmos_Base_V1beta1_Coin] = []

  public var delegatedVesting: [Cosmos_Base_V1beta1_Coin] = []

  public var endTime: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _baseAccount: Cosmos_Auth_V1beta1_BaseAccount? = nil
}

/// ContinuousVestingAccount implements the VestingAccount interface. It
/// continuously vests by unlocking coins linearly with respect to time.
public struct Cosmos_Vesting_V1beta1_ContinuousVestingAccount {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var baseVestingAccount: Cosmos_Vesting_V1beta1_BaseVestingAccount {
    get {return _baseVestingAccount ?? Cosmos_Vesting_V1beta1_BaseVestingAccount()}
    set {_baseVestingAccount = newValue}
  }
  /// Returns true if `baseVestingAccount` has been explicitly set.
  public var hasBaseVestingAccount: Bool {return self._baseVestingAccount != nil}
  /// Clears the value of `baseVestingAccount`. Subsequent reads from it will return its default value.
  public mutating func clearBaseVestingAccount() {self._baseVestingAccount = nil}

  public var startTime: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _baseVestingAccount: Cosmos_Vesting_V1beta1_BaseVestingAccount? = nil
}

/// DelayedVestingAccount implements the VestingAccount interface. It vests all
/// coins after a specific time, but non prior. In other words, it keeps them
/// locked until a specified time.
public struct Cosmos_Vesting_V1beta1_DelayedVestingAccount {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var baseVestingAccount: Cosmos_Vesting_V1beta1_BaseVestingAccount {
    get {return _baseVestingAccount ?? Cosmos_Vesting_V1beta1_BaseVestingAccount()}
    set {_baseVestingAccount = newValue}
  }
  /// Returns true if `baseVestingAccount` has been explicitly set.
  public var hasBaseVestingAccount: Bool {return self._baseVestingAccount != nil}
  /// Clears the value of `baseVestingAccount`. Subsequent reads from it will return its default value.
  public mutating func clearBaseVestingAccount() {self._baseVestingAccount = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _baseVestingAccount: Cosmos_Vesting_V1beta1_BaseVestingAccount? = nil
}

/// Period defines a length of time and amount of coins that will vest.
public struct Cosmos_Vesting_V1beta1_Period {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var length: Int64 = 0

  public var amount: [Cosmos_Base_V1beta1_Coin] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// PeriodicVestingAccount implements the VestingAccount interface. It
/// periodically vests by unlocking coins during each specified period.
public struct Cosmos_Vesting_V1beta1_PeriodicVestingAccount {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var baseVestingAccount: Cosmos_Vesting_V1beta1_BaseVestingAccount {
    get {return _baseVestingAccount ?? Cosmos_Vesting_V1beta1_BaseVestingAccount()}
    set {_baseVestingAccount = newValue}
  }
  /// Returns true if `baseVestingAccount` has been explicitly set.
  public var hasBaseVestingAccount: Bool {return self._baseVestingAccount != nil}
  /// Clears the value of `baseVestingAccount`. Subsequent reads from it will return its default value.
  public mutating func clearBaseVestingAccount() {self._baseVestingAccount = nil}

  public var startTime: Int64 = 0

  public var vestingPeriods: [Cosmos_Vesting_V1beta1_Period] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _baseVestingAccount: Cosmos_Vesting_V1beta1_BaseVestingAccount? = nil
}

/// PermanentLockedAccount implements the VestingAccount interface. It does
/// not ever release coins, locking them indefinitely. Coins in this account can
/// still be used for delegating and for governance votes even while locked.
///
/// Since: cosmos-sdk 0.43
public struct Cosmos_Vesting_V1beta1_PermanentLockedAccount {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var baseVestingAccount: Cosmos_Vesting_V1beta1_BaseVestingAccount {
    get {return _baseVestingAccount ?? Cosmos_Vesting_V1beta1_BaseVestingAccount()}
    set {_baseVestingAccount = newValue}
  }
  /// Returns true if `baseVestingAccount` has been explicitly set.
  public var hasBaseVestingAccount: Bool {return self._baseVestingAccount != nil}
  /// Clears the value of `baseVestingAccount`. Subsequent reads from it will return its default value.
  public mutating func clearBaseVestingAccount() {self._baseVestingAccount = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _baseVestingAccount: Cosmos_Vesting_V1beta1_BaseVestingAccount? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Cosmos_Vesting_V1beta1_BaseVestingAccount: @unchecked Sendable {}
extension Cosmos_Vesting_V1beta1_ContinuousVestingAccount: @unchecked Sendable {}
extension Cosmos_Vesting_V1beta1_DelayedVestingAccount: @unchecked Sendable {}
extension Cosmos_Vesting_V1beta1_Period: @unchecked Sendable {}
extension Cosmos_Vesting_V1beta1_PeriodicVestingAccount: @unchecked Sendable {}
extension Cosmos_Vesting_V1beta1_PermanentLockedAccount: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "cosmos.vesting.v1beta1"

extension Cosmos_Vesting_V1beta1_BaseVestingAccount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BaseVestingAccount"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "base_account"),
    2: .standard(proto: "original_vesting"),
    3: .standard(proto: "delegated_free"),
    4: .standard(proto: "delegated_vesting"),
    5: .standard(proto: "end_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._baseAccount) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.originalVesting) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.delegatedFree) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.delegatedVesting) }()
      case 5: try { try decoder.decodeSingularInt64Field(value: &self.endTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._baseAccount {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.originalVesting.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.originalVesting, fieldNumber: 2)
    }
    if !self.delegatedFree.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.delegatedFree, fieldNumber: 3)
    }
    if !self.delegatedVesting.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.delegatedVesting, fieldNumber: 4)
    }
    if self.endTime != 0 {
      try visitor.visitSingularInt64Field(value: self.endTime, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Vesting_V1beta1_BaseVestingAccount, rhs: Cosmos_Vesting_V1beta1_BaseVestingAccount) -> Bool {
    if lhs._baseAccount != rhs._baseAccount {return false}
    if lhs.originalVesting != rhs.originalVesting {return false}
    if lhs.delegatedFree != rhs.delegatedFree {return false}
    if lhs.delegatedVesting != rhs.delegatedVesting {return false}
    if lhs.endTime != rhs.endTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Vesting_V1beta1_ContinuousVestingAccount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ContinuousVestingAccount"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "base_vesting_account"),
    2: .standard(proto: "start_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._baseVestingAccount) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.startTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._baseVestingAccount {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if self.startTime != 0 {
      try visitor.visitSingularInt64Field(value: self.startTime, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Vesting_V1beta1_ContinuousVestingAccount, rhs: Cosmos_Vesting_V1beta1_ContinuousVestingAccount) -> Bool {
    if lhs._baseVestingAccount != rhs._baseVestingAccount {return false}
    if lhs.startTime != rhs.startTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Vesting_V1beta1_DelayedVestingAccount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DelayedVestingAccount"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "base_vesting_account"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._baseVestingAccount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._baseVestingAccount {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Vesting_V1beta1_DelayedVestingAccount, rhs: Cosmos_Vesting_V1beta1_DelayedVestingAccount) -> Bool {
    if lhs._baseVestingAccount != rhs._baseVestingAccount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Vesting_V1beta1_Period: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Period"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "length"),
    2: .same(proto: "amount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.length) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.amount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.length != 0 {
      try visitor.visitSingularInt64Field(value: self.length, fieldNumber: 1)
    }
    if !self.amount.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.amount, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Vesting_V1beta1_Period, rhs: Cosmos_Vesting_V1beta1_Period) -> Bool {
    if lhs.length != rhs.length {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Vesting_V1beta1_PeriodicVestingAccount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PeriodicVestingAccount"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "base_vesting_account"),
    2: .standard(proto: "start_time"),
    3: .standard(proto: "vesting_periods"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._baseVestingAccount) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.startTime) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.vestingPeriods) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._baseVestingAccount {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if self.startTime != 0 {
      try visitor.visitSingularInt64Field(value: self.startTime, fieldNumber: 2)
    }
    if !self.vestingPeriods.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.vestingPeriods, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Vesting_V1beta1_PeriodicVestingAccount, rhs: Cosmos_Vesting_V1beta1_PeriodicVestingAccount) -> Bool {
    if lhs._baseVestingAccount != rhs._baseVestingAccount {return false}
    if lhs.startTime != rhs.startTime {return false}
    if lhs.vestingPeriods != rhs.vestingPeriods {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Vesting_V1beta1_PermanentLockedAccount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PermanentLockedAccount"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "base_vesting_account"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._baseVestingAccount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._baseVestingAccount {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Vesting_V1beta1_PermanentLockedAccount, rhs: Cosmos_Vesting_V1beta1_PermanentLockedAccount) -> Bool {
    if lhs._baseVestingAccount != rhs._baseVestingAccount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}