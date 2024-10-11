// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestStruct extends BaseStruct {
  TestStruct({
    String? name,
    QuestionStruct? question,
  })  : _name = name,
        _question = question;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "question" field.
  QuestionStruct? _question;
  QuestionStruct get question => _question ?? QuestionStruct();
  set question(QuestionStruct? val) => _question = val;

  void updateQuestion(Function(QuestionStruct) updateFn) {
    updateFn(_question ??= QuestionStruct());
  }

  bool hasQuestion() => _question != null;

  static TestStruct fromMap(Map<String, dynamic> data) => TestStruct(
        name: data['name'] as String?,
        question: QuestionStruct.maybeFromMap(data['question']),
      );

  static TestStruct? maybeFromMap(dynamic data) =>
      data is Map ? TestStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'question': _question?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'question': serializeParam(
          _question,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static TestStruct fromSerializableMap(Map<String, dynamic> data) =>
      TestStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        question: deserializeStructParam(
          data['question'],
          ParamType.DataStruct,
          false,
          structBuilder: QuestionStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TestStruct &&
        name == other.name &&
        question == other.question;
  }

  @override
  int get hashCode => const ListEquality().hash([name, question]);
}

TestStruct createTestStruct({
  String? name,
  QuestionStruct? question,
}) =>
    TestStruct(
      name: name,
      question: question ?? QuestionStruct(),
    );
