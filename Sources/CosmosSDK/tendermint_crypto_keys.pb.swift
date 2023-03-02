// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tendermint/crypto/keys.proto
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

/// PublicKey defines the keys available for use with Tendermint Validators
public struct Tendermint_Crypto_PublicKey {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var sum: Tendermint_Crypto_PublicKey.OneOf_Sum? = nil

  public var ed25519: Data {
    get {
      if case .ed25519(let v)? = sum {return v}
      return Data()
    }
    set {sum = .ed25519(newValue)}
  }

  public var secp256K1: Data {
    get {
      if case .secp256K1(let v)? = sum {return v}
      return Data()
    }
    set {sum = .secp256K1(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Sum: Equatable {
    case ed25519(Data)
    case secp256K1(Data)

  #if !swift(>=4.1)
    public static func ==(lhs: Tendermint_Crypto_PublicKey.OneOf_Sum, rhs: Tendermint_Crypto_PublicKey.OneOf_Sum) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.ed25519, .ed25519): return {
        guard case .ed25519(let l) = lhs, case .ed25519(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.secp256K1, .secp256K1): return {
        guard case .secp256K1(let l) = lhs, case .secp256K1(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Tendermint_Crypto_PublicKey: @unchecked Sendable {}
extension Tendermint_Crypto_PublicKey.OneOf_Sum: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tendermint.crypto"

extension Tendermint_Crypto_PublicKey: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PublicKey"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "ed25519"),
    2: .same(proto: "secp256k1"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Data?
        try decoder.decodeSingularBytesField(value: &v)
        if let v = v {
          if self.sum != nil {try decoder.handleConflictingOneOf()}
          self.sum = .ed25519(v)
        }
      }()
      case 2: try {
        var v: Data?
        try decoder.decodeSingularBytesField(value: &v)
        if let v = v {
          if self.sum != nil {try decoder.handleConflictingOneOf()}
          self.sum = .secp256K1(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.sum {
    case .ed25519?: try {
      guard case .ed25519(let v)? = self.sum else { preconditionFailure() }
      try visitor.visitSingularBytesField(value: v, fieldNumber: 1)
    }()
    case .secp256K1?: try {
      guard case .secp256K1(let v)? = self.sum else { preconditionFailure() }
      try visitor.visitSingularBytesField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Crypto_PublicKey, rhs: Tendermint_Crypto_PublicKey) -> Bool {
    if lhs.sum != rhs.sum {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
