// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: cosmos/autocli/v1/options.proto
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

/// ModuleOptions describes the CLI options for a Cosmos SDK module.
public struct Cosmos_Autocli_V1_ModuleOptions {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// tx describes the tx command for the module.
  public var tx: Cosmos_Autocli_V1_ServiceCommandDescriptor {
    get {return _tx ?? Cosmos_Autocli_V1_ServiceCommandDescriptor()}
    set {_tx = newValue}
  }
  /// Returns true if `tx` has been explicitly set.
  public var hasTx: Bool {return self._tx != nil}
  /// Clears the value of `tx`. Subsequent reads from it will return its default value.
  public mutating func clearTx() {self._tx = nil}

  /// query describes the tx command for the module.
  public var query: Cosmos_Autocli_V1_ServiceCommandDescriptor {
    get {return _query ?? Cosmos_Autocli_V1_ServiceCommandDescriptor()}
    set {_query = newValue}
  }
  /// Returns true if `query` has been explicitly set.
  public var hasQuery: Bool {return self._query != nil}
  /// Clears the value of `query`. Subsequent reads from it will return its default value.
  public mutating func clearQuery() {self._query = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _tx: Cosmos_Autocli_V1_ServiceCommandDescriptor? = nil
  fileprivate var _query: Cosmos_Autocli_V1_ServiceCommandDescriptor? = nil
}

/// ServiceCommandDescriptor describes a CLI command based on a protobuf service.
public struct Cosmos_Autocli_V1_ServiceCommandDescriptor {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// service is the fully qualified name of the protobuf service to build
  /// the command from. It can be left empty if sub_commands are used instead
  /// which may be the case if a module provides multiple tx and/or query services.
  public var service: String = String()

  /// rpc_command_options are options for commands generated from rpc methods.
  /// If no options are specified for a given rpc method on the service, a
  /// command will be generated for that method with the default options.
  public var rpcCommandOptions: [Cosmos_Autocli_V1_RpcCommandOptions] = []

  /// sub_commands is a map of optional sub-commands for this command based on
  /// different protobuf services. The map key is used as the name of the
  /// sub-command.
  public var subCommands: Dictionary<String,Cosmos_Autocli_V1_ServiceCommandDescriptor> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// RpcCommandOptions specifies options for commands generated from protobuf
/// rpc methods.
public struct Cosmos_Autocli_V1_RpcCommandOptions {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// rpc_method is short name of the protobuf rpc method that this command is
  /// generated from.
  public var rpcMethod: String = String()

  /// use is the one-line usage method. It also allows specifying an alternate
  /// name for the command as the first word of the usage text.
  ///
  /// By default the name of an rpc command is the kebab-case short name of the
  /// rpc method.
  public var use: String = String()

  /// long is the long message shown in the 'help <this-command>' output.
  public var long: String = String()

  /// short is the short description shown in the 'help' output.
  public var short: String = String()

  /// example is examples of how to use the command.
  public var example: String = String()

  /// alias is an array of aliases that can be used instead of the first word in Use.
  public var alias: [String] = []

  /// suggest_for is an array of command names for which this command will be suggested -
  /// similar to aliases but only suggests.
  public var suggestFor: [String] = []

  /// deprecated defines, if this command is deprecated and should print this string when used.
  public var deprecated: String = String()

  /// version defines the version for this command. If this value is non-empty and the command does not
  /// define a "version" flag, a "version" boolean flag will be added to the command and, if specified,
  /// will print content of the "Version" variable. A shorthand "v" flag will also be added if the
  /// command does not define one.
  public var version: String = String()

  /// flag_options are options for flags generated from rpc request fields.
  /// By default all request fields are configured as flags. They can
  /// also be configured as positional args instead using positional_args.
  public var flagOptions: Dictionary<String,Cosmos_Autocli_V1_FlagOptions> = [:]

  /// positional_args specifies positional arguments for the command.
  public var positionalArgs: [Cosmos_Autocli_V1_PositionalArgDescriptor] = []

  /// skip specifies whether to skip this rpc method when generating commands.
  public var skip: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// FlagOptions are options for flags generated from rpc request fields.
/// By default, all request fields are configured as flags based on the
/// kebab-case name of the field. Fields can be turned into positional arguments
/// instead by using RpcCommandOptions.positional_args.
public struct Cosmos_Autocli_V1_FlagOptions {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// name is an alternate name to use for the field flag.
  public var name: String = String()

  /// shorthand is a one-letter abbreviated flag.
  public var shorthand: String = String()

  /// usage is the help message.
  public var usage: String = String()

  /// default_value is the default value as text.
  public var defaultValue: String = String()

  /// deprecated is the usage text to show if this flag is deprecated.
  public var deprecated: String = String()

  /// shorthand_deprecated is the usage text to show if the shorthand of this flag is deprecated.
  public var shorthandDeprecated: String = String()

  /// hidden hides the flag from help/usage text
  public var hidden: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// PositionalArgDescriptor describes a positional argument.
public struct Cosmos_Autocli_V1_PositionalArgDescriptor {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// proto_field specifies the proto field to use as the positional arg. Any
  /// fields used as positional args will not have a flag generated.
  public var protoField: String = String()

  /// varargs makes a positional parameter a varargs parameter. This can only be
  /// applied to last positional parameter and the proto_field must a repeated
  /// field.
  public var varargs: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Cosmos_Autocli_V1_ModuleOptions: @unchecked Sendable {}
extension Cosmos_Autocli_V1_ServiceCommandDescriptor: @unchecked Sendable {}
extension Cosmos_Autocli_V1_RpcCommandOptions: @unchecked Sendable {}
extension Cosmos_Autocli_V1_FlagOptions: @unchecked Sendable {}
extension Cosmos_Autocli_V1_PositionalArgDescriptor: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "cosmos.autocli.v1"

extension Cosmos_Autocli_V1_ModuleOptions: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ModuleOptions"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tx"),
    2: .same(proto: "query"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._tx) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._query) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._tx {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._query {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Autocli_V1_ModuleOptions, rhs: Cosmos_Autocli_V1_ModuleOptions) -> Bool {
    if lhs._tx != rhs._tx {return false}
    if lhs._query != rhs._query {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Autocli_V1_ServiceCommandDescriptor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ServiceCommandDescriptor"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "service"),
    2: .standard(proto: "rpc_command_options"),
    3: .standard(proto: "sub_commands"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.service) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.rpcCommandOptions) }()
      case 3: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Cosmos_Autocli_V1_ServiceCommandDescriptor>.self, value: &self.subCommands) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.service.isEmpty {
      try visitor.visitSingularStringField(value: self.service, fieldNumber: 1)
    }
    if !self.rpcCommandOptions.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.rpcCommandOptions, fieldNumber: 2)
    }
    if !self.subCommands.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Cosmos_Autocli_V1_ServiceCommandDescriptor>.self, value: self.subCommands, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Autocli_V1_ServiceCommandDescriptor, rhs: Cosmos_Autocli_V1_ServiceCommandDescriptor) -> Bool {
    if lhs.service != rhs.service {return false}
    if lhs.rpcCommandOptions != rhs.rpcCommandOptions {return false}
    if lhs.subCommands != rhs.subCommands {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Autocli_V1_RpcCommandOptions: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RpcCommandOptions"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "rpc_method"),
    2: .same(proto: "use"),
    3: .same(proto: "long"),
    4: .same(proto: "short"),
    5: .same(proto: "example"),
    6: .same(proto: "alias"),
    7: .standard(proto: "suggest_for"),
    8: .same(proto: "deprecated"),
    9: .same(proto: "version"),
    10: .standard(proto: "flag_options"),
    11: .standard(proto: "positional_args"),
    12: .same(proto: "skip"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.rpcMethod) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.use) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.long) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.short) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.example) }()
      case 6: try { try decoder.decodeRepeatedStringField(value: &self.alias) }()
      case 7: try { try decoder.decodeRepeatedStringField(value: &self.suggestFor) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self.deprecated) }()
      case 9: try { try decoder.decodeSingularStringField(value: &self.version) }()
      case 10: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Cosmos_Autocli_V1_FlagOptions>.self, value: &self.flagOptions) }()
      case 11: try { try decoder.decodeRepeatedMessageField(value: &self.positionalArgs) }()
      case 12: try { try decoder.decodeSingularBoolField(value: &self.skip) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.rpcMethod.isEmpty {
      try visitor.visitSingularStringField(value: self.rpcMethod, fieldNumber: 1)
    }
    if !self.use.isEmpty {
      try visitor.visitSingularStringField(value: self.use, fieldNumber: 2)
    }
    if !self.long.isEmpty {
      try visitor.visitSingularStringField(value: self.long, fieldNumber: 3)
    }
    if !self.short.isEmpty {
      try visitor.visitSingularStringField(value: self.short, fieldNumber: 4)
    }
    if !self.example.isEmpty {
      try visitor.visitSingularStringField(value: self.example, fieldNumber: 5)
    }
    if !self.alias.isEmpty {
      try visitor.visitRepeatedStringField(value: self.alias, fieldNumber: 6)
    }
    if !self.suggestFor.isEmpty {
      try visitor.visitRepeatedStringField(value: self.suggestFor, fieldNumber: 7)
    }
    if !self.deprecated.isEmpty {
      try visitor.visitSingularStringField(value: self.deprecated, fieldNumber: 8)
    }
    if !self.version.isEmpty {
      try visitor.visitSingularStringField(value: self.version, fieldNumber: 9)
    }
    if !self.flagOptions.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Cosmos_Autocli_V1_FlagOptions>.self, value: self.flagOptions, fieldNumber: 10)
    }
    if !self.positionalArgs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.positionalArgs, fieldNumber: 11)
    }
    if self.skip != false {
      try visitor.visitSingularBoolField(value: self.skip, fieldNumber: 12)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Autocli_V1_RpcCommandOptions, rhs: Cosmos_Autocli_V1_RpcCommandOptions) -> Bool {
    if lhs.rpcMethod != rhs.rpcMethod {return false}
    if lhs.use != rhs.use {return false}
    if lhs.long != rhs.long {return false}
    if lhs.short != rhs.short {return false}
    if lhs.example != rhs.example {return false}
    if lhs.alias != rhs.alias {return false}
    if lhs.suggestFor != rhs.suggestFor {return false}
    if lhs.deprecated != rhs.deprecated {return false}
    if lhs.version != rhs.version {return false}
    if lhs.flagOptions != rhs.flagOptions {return false}
    if lhs.positionalArgs != rhs.positionalArgs {return false}
    if lhs.skip != rhs.skip {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Autocli_V1_FlagOptions: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FlagOptions"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "shorthand"),
    3: .same(proto: "usage"),
    4: .standard(proto: "default_value"),
    6: .same(proto: "deprecated"),
    7: .standard(proto: "shorthand_deprecated"),
    8: .same(proto: "hidden"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.shorthand) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.usage) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.defaultValue) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.deprecated) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.shorthandDeprecated) }()
      case 8: try { try decoder.decodeSingularBoolField(value: &self.hidden) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.shorthand.isEmpty {
      try visitor.visitSingularStringField(value: self.shorthand, fieldNumber: 2)
    }
    if !self.usage.isEmpty {
      try visitor.visitSingularStringField(value: self.usage, fieldNumber: 3)
    }
    if !self.defaultValue.isEmpty {
      try visitor.visitSingularStringField(value: self.defaultValue, fieldNumber: 4)
    }
    if !self.deprecated.isEmpty {
      try visitor.visitSingularStringField(value: self.deprecated, fieldNumber: 6)
    }
    if !self.shorthandDeprecated.isEmpty {
      try visitor.visitSingularStringField(value: self.shorthandDeprecated, fieldNumber: 7)
    }
    if self.hidden != false {
      try visitor.visitSingularBoolField(value: self.hidden, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Autocli_V1_FlagOptions, rhs: Cosmos_Autocli_V1_FlagOptions) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.shorthand != rhs.shorthand {return false}
    if lhs.usage != rhs.usage {return false}
    if lhs.defaultValue != rhs.defaultValue {return false}
    if lhs.deprecated != rhs.deprecated {return false}
    if lhs.shorthandDeprecated != rhs.shorthandDeprecated {return false}
    if lhs.hidden != rhs.hidden {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Autocli_V1_PositionalArgDescriptor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PositionalArgDescriptor"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "proto_field"),
    2: .same(proto: "varargs"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.protoField) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.varargs) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.protoField.isEmpty {
      try visitor.visitSingularStringField(value: self.protoField, fieldNumber: 1)
    }
    if self.varargs != false {
      try visitor.visitSingularBoolField(value: self.varargs, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Autocli_V1_PositionalArgDescriptor, rhs: Cosmos_Autocli_V1_PositionalArgDescriptor) -> Bool {
    if lhs.protoField != rhs.protoField {return false}
    if lhs.varargs != rhs.varargs {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
