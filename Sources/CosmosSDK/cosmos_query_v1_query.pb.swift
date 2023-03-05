// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: cosmos/query/v1/query.proto
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

// MARK: - Extension support defined in query.proto.

// MARK: - Extension Properties

// Swift Extensions on the exteneded Messages to add easy access to the declared
// extension fields. The names are based on the extension field name from the proto
// declaration. To avoid naming collisions, the names are prefixed with the name of
// the scope where the extend directive occurs.

extension SwiftProtobuf.Google_Protobuf_MethodOptions {

  /// module_query_safe is set to true when the query is safe to be called from
  /// within the state machine, for example from another module's Keeper, via
  /// ADR-033 calls or from CosmWasm contracts.
  /// Concretely, it means that the query is:
  /// 1. deterministic: given a block height, returns the exact same response
  /// upon multiple calls; and doesn't introduce any state-machine-breaking
  /// changes across SDK patch version.
  /// 2. consumes gas correctly.
  ///
  /// If you are a module developer and want to add this annotation to one of
  /// your own queries, please make sure that the corresponding query:
  /// 1. is deterministic and won't introduce state-machine-breaking changes
  /// without a coordinated upgrade path,
  /// 2. has its gas tracked, to avoid the attack vector where no gas is
  /// accounted for on potentially high-computation queries.
  ///
  /// For queries that potentially consume a large amount of gas (for example
  /// those with pagination, if the pagination field is incorrectly set), we
  /// also recommend adding Protobuf comments to warn module developers
  /// consuming these queries.
  ///
  /// When set to true, the query can safely be called
  public var Cosmos_Query_V1_moduleQuerySafe: Bool {
    get {return getExtensionValue(ext: Cosmos_Query_V1_Extensions_module_query_safe) ?? false}
    set {setExtensionValue(ext: Cosmos_Query_V1_Extensions_module_query_safe, value: newValue)}
  }
  /// Returns true if extension `Cosmos_Query_V1_Extensions_module_query_safe`
  /// has been explicitly set.
  public var hasCosmos_Query_V1_moduleQuerySafe: Bool {
    return hasExtensionValue(ext: Cosmos_Query_V1_Extensions_module_query_safe)
  }
  /// Clears the value of extension `Cosmos_Query_V1_Extensions_module_query_safe`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearCosmos_Query_V1_moduleQuerySafe() {
    clearExtensionValue(ext: Cosmos_Query_V1_Extensions_module_query_safe)
  }

}

// MARK: - File's ExtensionMap: Cosmos_Query_V1_Query_Extensions

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
public let Cosmos_Query_V1_Query_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  Cosmos_Query_V1_Extensions_module_query_safe
]

// Extension Objects - The only reason these might be needed is when manually
// constructing a `SimpleExtensionMap`, otherwise, use the above _Extension Properties_
// accessors for the extension fields on the messages directly.

/// module_query_safe is set to true when the query is safe to be called from
/// within the state machine, for example from another module's Keeper, via
/// ADR-033 calls or from CosmWasm contracts.
/// Concretely, it means that the query is:
/// 1. deterministic: given a block height, returns the exact same response
/// upon multiple calls; and doesn't introduce any state-machine-breaking
/// changes across SDK patch version.
/// 2. consumes gas correctly.
///
/// If you are a module developer and want to add this annotation to one of
/// your own queries, please make sure that the corresponding query:
/// 1. is deterministic and won't introduce state-machine-breaking changes
/// without a coordinated upgrade path,
/// 2. has its gas tracked, to avoid the attack vector where no gas is
/// accounted for on potentially high-computation queries.
///
/// For queries that potentially consume a large amount of gas (for example
/// those with pagination, if the pagination field is incorrectly set), we
/// also recommend adding Protobuf comments to warn module developers
/// consuming these queries.
///
/// When set to true, the query can safely be called
public let Cosmos_Query_V1_Extensions_module_query_safe = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufBool>, SwiftProtobuf.Google_Protobuf_MethodOptions>(
  _protobuf_fieldNumber: 11110001,
  fieldName: "cosmos.query.v1.module_query_safe"
)
