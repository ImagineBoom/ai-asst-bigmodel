// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExamAnswerDetailStruct extends BaseStruct {
  ExamAnswerDetailStruct({
    String? code,
    String? message,
  })  : _code = code,
        _message = message;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static ExamAnswerDetailStruct fromMap(Map<String, dynamic> data) =>
      ExamAnswerDetailStruct(
        code: data['code'] as String?,
        message: data['message'] as String?,
      );

  static ExamAnswerDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? ExamAnswerDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static ExamAnswerDetailStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ExamAnswerDetailStruct(
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ExamAnswerDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExamAnswerDetailStruct &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode => const ListEquality().hash([code, message]);
}

ExamAnswerDetailStruct createExamAnswerDetailStruct({
  String? code,
  String? message,
}) =>
    ExamAnswerDetailStruct(
      code: code,
      message: message,
    );
