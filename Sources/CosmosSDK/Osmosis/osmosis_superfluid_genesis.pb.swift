// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: osmosis/superfluid/genesis.proto
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

/// GenesisState defines the module's genesis state.
public struct Osmosis_Superfluid_GenesisState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var params: Osmosis_Superfluid_Params {
    get {return _params ?? Osmosis_Superfluid_Params()}
    set {_params = newValue}
  }
  /// Returns true if `params` has been explicitly set.
  public var hasParams: Bool {return self._params != nil}
  /// Clears the value of `params`. Subsequent reads from it will return its default value.
  public mutating func clearParams() {self._params = nil}

  /// superfluid_assets defines the registered superfluid assets that have been
  /// registered via governance.
  public var superfluidAssets: [Osmosis_Superfluid_SuperfluidAsset] = []

  /// osmo_equivalent_multipliers is the records of osmo equivalent amount of
  /// each superfluid registered pool, updated every epoch.
  public var osmoEquivalentMultipliers: [Osmosis_Superfluid_OsmoEquivalentMultiplierRecord] = []

  /// intermediary_accounts is a secondary account for superfluid staking that
  /// plays an intermediary role between validators and the delegators.
  public var intermediaryAccounts: [Osmosis_Superfluid_SuperfluidIntermediaryAccount] = []

  public var intemediaryAccountConnections: [Osmosis_Superfluid_LockIdIntermediaryAccountConnection] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _params: Osmosis_Superfluid_Params? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Osmosis_Superfluid_GenesisState: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "osmosis.superfluid"

extension Osmosis_Superfluid_GenesisState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GenesisState"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "params"),
    2: .standard(proto: "superfluid_assets"),
    3: .standard(proto: "osmo_equivalent_multipliers"),
    4: .standard(proto: "intermediary_accounts"),
    5: .standard(proto: "intemediary_account_connections"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._params) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.superfluidAssets) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.osmoEquivalentMultipliers) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.intermediaryAccounts) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.intemediaryAccountConnections) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._params {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.superfluidAssets.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.superfluidAssets, fieldNumber: 2)
    }
    if !self.osmoEquivalentMultipliers.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.osmoEquivalentMultipliers, fieldNumber: 3)
    }
    if !self.intermediaryAccounts.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.intermediaryAccounts, fieldNumber: 4)
    }
    if !self.intemediaryAccountConnections.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.intemediaryAccountConnections, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Osmosis_Superfluid_GenesisState, rhs: Osmosis_Superfluid_GenesisState) -> Bool {
    if lhs._params != rhs._params {return false}
    if lhs.superfluidAssets != rhs.superfluidAssets {return false}
    if lhs.osmoEquivalentMultipliers != rhs.osmoEquivalentMultipliers {return false}
    if lhs.intermediaryAccounts != rhs.intermediaryAccounts {return false}
    if lhs.intemediaryAccountConnections != rhs.intemediaryAccountConnections {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
