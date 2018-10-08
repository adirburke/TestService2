// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: CheckTask.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct CheckTaskDto {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var resID: Int64 = 0

  var date: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct RMSTaskDto {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var task: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension CheckTaskDto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "CheckTaskDto"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "resId"),
    2: .same(proto: "date"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.resID)
      case 2: try decoder.decodeSingularStringField(value: &self.date)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.resID != 0 {
      try visitor.visitSingularInt64Field(value: self.resID, fieldNumber: 1)
    }
    if !self.date.isEmpty {
      try visitor.visitSingularStringField(value: self.date, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CheckTaskDto, rhs: CheckTaskDto) -> Bool {
    if lhs.resID != rhs.resID {return false}
    if lhs.date != rhs.date {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension RMSTaskDto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "RMSTaskDto"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "task"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.task)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.task.isEmpty {
      try visitor.visitSingularStringField(value: self.task, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: RMSTaskDto, rhs: RMSTaskDto) -> Bool {
    if lhs.task != rhs.task {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
