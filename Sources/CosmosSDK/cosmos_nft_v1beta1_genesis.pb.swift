// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: cosmos/nft/v1beta1/genesis.proto
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

/// GenesisState defines the nft module's genesis state.
public struct Cosmos_Nft_V1beta1_GenesisState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// class defines the class of the nft type.
  public var classes: [Cosmos_Nft_V1beta1_Class] = []

  /// entry defines all nft owned by a person.
  public var entries: [Cosmos_Nft_V1beta1_Entry] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Entry Defines all nft owned by a person
public struct Cosmos_Nft_V1beta1_Entry {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// owner is the owner address of the following nft
  public var owner: String = String()

  /// nfts is a group of nfts of the same owner
  public var nfts: [Cosmos_Nft_V1beta1_NFT] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Cosmos_Nft_V1beta1_GenesisState: @unchecked Sendable {}
extension Cosmos_Nft_V1beta1_Entry: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "cosmos.nft.v1beta1"

extension Cosmos_Nft_V1beta1_GenesisState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GenesisState"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "classes"),
    2: .same(proto: "entries"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.classes) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.entries) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.classes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.classes, fieldNumber: 1)
    }
    if !self.entries.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.entries, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Nft_V1beta1_GenesisState, rhs: Cosmos_Nft_V1beta1_GenesisState) -> Bool {
    if lhs.classes != rhs.classes {return false}
    if lhs.entries != rhs.entries {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Nft_V1beta1_Entry: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Entry"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "owner"),
    2: .same(proto: "nfts"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.owner) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.nfts) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.owner.isEmpty {
      try visitor.visitSingularStringField(value: self.owner, fieldNumber: 1)
    }
    if !self.nfts.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.nfts, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Nft_V1beta1_Entry, rhs: Cosmos_Nft_V1beta1_Entry) -> Bool {
    if lhs.owner != rhs.owner {return false}
    if lhs.nfts != rhs.nfts {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
