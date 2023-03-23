// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: evmos/erc20/v1/events.proto
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

/// EventRegisterPair is an event emitted when a coin is registered.
public struct Evmos_Erc20_V1_EventRegisterPair {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// denom is the coin's denomination.
  public var denom: String = String()

  /// erc20_address is the ERC20 contract address.
  public var erc20Address: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// EventToggleTokenConversion is an event emitted when a coin's token conversion is toggled.
public struct Evmos_Erc20_V1_EventToggleTokenConversion {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// denom is the coin's denomination.
  public var denom: String = String()

  /// erc20_address is the ERC20 contract address.
  public var erc20Address: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// EventConvertCoin is an event emitted when a coin is converted.
public struct Evmos_Erc20_V1_EventConvertCoin {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// sender is the sender's address.
  public var sender: String = String()

  /// receiver is the receiver's address.
  public var receiver: String = String()

  /// amount is the amount of coins to be converted.
  public var amount: String = String()

  /// denom is the coin's denomination.
  public var denom: String = String()

  /// erc20_address is the ERC20 contract address.
  public var erc20Address: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// EventConvertERC20 is an event emitted when an ERC20 is converted.
public struct Evmos_Erc20_V1_EventConvertERC20 {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// sender is the sender's address.
  public var sender: String = String()

  /// receiver is the receiver's address.
  public var receiver: String = String()

  /// amount is the amount of coins to be converted.
  public var amount: String = String()

  /// denom is the coin's denomination.
  public var denom: String = String()

  /// contract_address of an ERC20 token contract, that is registered in a token pair
  public var contractAddress: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Evmos_Erc20_V1_EventRegisterPair: @unchecked Sendable {}
extension Evmos_Erc20_V1_EventToggleTokenConversion: @unchecked Sendable {}
extension Evmos_Erc20_V1_EventConvertCoin: @unchecked Sendable {}
extension Evmos_Erc20_V1_EventConvertERC20: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "evmos.erc20.v1"

extension Evmos_Erc20_V1_EventRegisterPair: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EventRegisterPair"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "denom"),
    2: .standard(proto: "erc20_address"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.denom) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.erc20Address) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.denom.isEmpty {
      try visitor.visitSingularStringField(value: self.denom, fieldNumber: 1)
    }
    if !self.erc20Address.isEmpty {
      try visitor.visitSingularStringField(value: self.erc20Address, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Erc20_V1_EventRegisterPair, rhs: Evmos_Erc20_V1_EventRegisterPair) -> Bool {
    if lhs.denom != rhs.denom {return false}
    if lhs.erc20Address != rhs.erc20Address {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Evmos_Erc20_V1_EventToggleTokenConversion: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EventToggleTokenConversion"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "denom"),
    2: .standard(proto: "erc20_address"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.denom) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.erc20Address) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.denom.isEmpty {
      try visitor.visitSingularStringField(value: self.denom, fieldNumber: 1)
    }
    if !self.erc20Address.isEmpty {
      try visitor.visitSingularStringField(value: self.erc20Address, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Erc20_V1_EventToggleTokenConversion, rhs: Evmos_Erc20_V1_EventToggleTokenConversion) -> Bool {
    if lhs.denom != rhs.denom {return false}
    if lhs.erc20Address != rhs.erc20Address {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Evmos_Erc20_V1_EventConvertCoin: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EventConvertCoin"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sender"),
    2: .same(proto: "receiver"),
    3: .same(proto: "amount"),
    4: .same(proto: "denom"),
    5: .standard(proto: "erc20_address"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sender) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.receiver) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.amount) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.denom) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.erc20Address) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sender.isEmpty {
      try visitor.visitSingularStringField(value: self.sender, fieldNumber: 1)
    }
    if !self.receiver.isEmpty {
      try visitor.visitSingularStringField(value: self.receiver, fieldNumber: 2)
    }
    if !self.amount.isEmpty {
      try visitor.visitSingularStringField(value: self.amount, fieldNumber: 3)
    }
    if !self.denom.isEmpty {
      try visitor.visitSingularStringField(value: self.denom, fieldNumber: 4)
    }
    if !self.erc20Address.isEmpty {
      try visitor.visitSingularStringField(value: self.erc20Address, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Erc20_V1_EventConvertCoin, rhs: Evmos_Erc20_V1_EventConvertCoin) -> Bool {
    if lhs.sender != rhs.sender {return false}
    if lhs.receiver != rhs.receiver {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.denom != rhs.denom {return false}
    if lhs.erc20Address != rhs.erc20Address {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Evmos_Erc20_V1_EventConvertERC20: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EventConvertERC20"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sender"),
    2: .same(proto: "receiver"),
    3: .same(proto: "amount"),
    4: .same(proto: "denom"),
    5: .standard(proto: "contract_address"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sender) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.receiver) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.amount) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.denom) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.contractAddress) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sender.isEmpty {
      try visitor.visitSingularStringField(value: self.sender, fieldNumber: 1)
    }
    if !self.receiver.isEmpty {
      try visitor.visitSingularStringField(value: self.receiver, fieldNumber: 2)
    }
    if !self.amount.isEmpty {
      try visitor.visitSingularStringField(value: self.amount, fieldNumber: 3)
    }
    if !self.denom.isEmpty {
      try visitor.visitSingularStringField(value: self.denom, fieldNumber: 4)
    }
    if !self.contractAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.contractAddress, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Erc20_V1_EventConvertERC20, rhs: Evmos_Erc20_V1_EventConvertERC20) -> Bool {
    if lhs.sender != rhs.sender {return false}
    if lhs.receiver != rhs.receiver {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.denom != rhs.denom {return false}
    if lhs.contractAddress != rhs.contractAddress {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
