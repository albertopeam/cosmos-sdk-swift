// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: osmosis/validator-preference/v1beta1/query.proto
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

/// Request type for UserValidatorPreferences.
public struct Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// user account address
  public var user: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Response type the QueryUserValidatorPreferences query request
public struct Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferenceResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var preferences: [Osmosis_Validatorpreference_V1beta1_ValidatorPreference] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences: @unchecked Sendable {}
extension Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferenceResponse: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "osmosis.validatorpreference.v1beta1"

extension Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryUserValidatorPreferences"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "user"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.user) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.user.isEmpty {
      try visitor.visitSingularStringField(value: self.user, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences, rhs: Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferences) -> Bool {
    if lhs.user != rhs.user {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferenceResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryUserValidatorPreferenceResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "preferences"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.preferences) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.preferences.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.preferences, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferenceResponse, rhs: Osmosis_Validatorpreference_V1beta1_QueryUserValidatorPreferenceResponse) -> Bool {
    if lhs.preferences != rhs.preferences {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
