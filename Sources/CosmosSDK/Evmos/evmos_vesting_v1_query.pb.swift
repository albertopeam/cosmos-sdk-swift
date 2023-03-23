// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: evmos/vesting/v1/query.proto
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

/// QueryBalancesRequest is the request type for the Query/Balances RPC method.
public struct Evmos_Vesting_V1_QueryBalancesRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// address of the clawback vesting account
  public var address: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// QueryBalancesResponse is the response type for the Query/Balances RPC
/// method.
public struct Evmos_Vesting_V1_QueryBalancesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// locked defines the current amount of locked tokens
  public var locked: [Cosmos_Base_V1beta1_Coin] = []

  /// unvested defines the current amount of unvested tokens
  public var unvested: [Cosmos_Base_V1beta1_Coin] = []

  /// vested defines the current amount of vested tokens
  public var vested: [Cosmos_Base_V1beta1_Coin] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Evmos_Vesting_V1_QueryBalancesRequest: @unchecked Sendable {}
extension Evmos_Vesting_V1_QueryBalancesResponse: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "evmos.vesting.v1"

extension Evmos_Vesting_V1_QueryBalancesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryBalancesRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.address) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Vesting_V1_QueryBalancesRequest, rhs: Evmos_Vesting_V1_QueryBalancesRequest) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Evmos_Vesting_V1_QueryBalancesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryBalancesResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "locked"),
    2: .same(proto: "unvested"),
    3: .same(proto: "vested"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.locked) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.unvested) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.vested) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.locked.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.locked, fieldNumber: 1)
    }
    if !self.unvested.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.unvested, fieldNumber: 2)
    }
    if !self.vested.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.vested, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Evmos_Vesting_V1_QueryBalancesResponse, rhs: Evmos_Vesting_V1_QueryBalancesResponse) -> Bool {
    if lhs.locked != rhs.locked {return false}
    if lhs.unvested != rhs.unvested {return false}
    if lhs.vested != rhs.vested {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
