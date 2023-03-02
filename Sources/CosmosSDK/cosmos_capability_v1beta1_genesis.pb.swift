// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: cosmos/capability/v1beta1/genesis.proto
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

/// GenesisOwners defines the capability owners with their corresponding index.
public struct Cosmos_Capability_V1beta1_GenesisOwners {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// index is the index of the capability owner.
  public var index: UInt64 = 0

  /// index_owners are the owners at the given index.
  public var indexOwners: Cosmos_Capability_V1beta1_CapabilityOwners {
    get {return _indexOwners ?? Cosmos_Capability_V1beta1_CapabilityOwners()}
    set {_indexOwners = newValue}
  }
  /// Returns true if `indexOwners` has been explicitly set.
  public var hasIndexOwners: Bool {return self._indexOwners != nil}
  /// Clears the value of `indexOwners`. Subsequent reads from it will return its default value.
  public mutating func clearIndexOwners() {self._indexOwners = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _indexOwners: Cosmos_Capability_V1beta1_CapabilityOwners? = nil
}

/// GenesisState defines the capability module's genesis state.
public struct Cosmos_Capability_V1beta1_GenesisState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// index is the capability global index.
  public var index: UInt64 = 0

  /// owners represents a map from index to owners of the capability index
  /// index key is string to allow amino marshalling.
  public var owners: [Cosmos_Capability_V1beta1_GenesisOwners] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Cosmos_Capability_V1beta1_GenesisOwners: @unchecked Sendable {}
extension Cosmos_Capability_V1beta1_GenesisState: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "cosmos.capability.v1beta1"

extension Cosmos_Capability_V1beta1_GenesisOwners: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GenesisOwners"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "index"),
    2: .standard(proto: "index_owners"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.index) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._indexOwners) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.index != 0 {
      try visitor.visitSingularUInt64Field(value: self.index, fieldNumber: 1)
    }
    try { if let v = self._indexOwners {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Capability_V1beta1_GenesisOwners, rhs: Cosmos_Capability_V1beta1_GenesisOwners) -> Bool {
    if lhs.index != rhs.index {return false}
    if lhs._indexOwners != rhs._indexOwners {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Capability_V1beta1_GenesisState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GenesisState"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "index"),
    2: .same(proto: "owners"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.index) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.owners) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.index != 0 {
      try visitor.visitSingularUInt64Field(value: self.index, fieldNumber: 1)
    }
    if !self.owners.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.owners, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Capability_V1beta1_GenesisState, rhs: Cosmos_Capability_V1beta1_GenesisState) -> Bool {
    if lhs.index != rhs.index {return false}
    if lhs.owners != rhs.owners {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
