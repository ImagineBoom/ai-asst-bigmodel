// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScoreKeyPointStruct extends BaseStruct {
  ScoreKeyPointStruct({
    String? stuName,
    int? stuId,
    String? singleAnswerKeyPointName,
    double? singleAnswerKeyPointScore,
  })  : _stuName = stuName,
        _stuId = stuId,
        _singleAnswerKeyPointName = singleAnswerKeyPointName,
        _singleAnswerKeyPointScore = singleAnswerKeyPointScore;

  // "stu_name" field.
  String? _stuName;
  String get stuName => _stuName ?? '';
  set stuName(String? val) => _stuName = val;

  bool hasStuName() => _stuName != null;

  // "stu_id" field.
  int? _stuId;
  int get stuId => _stuId ?? 0;
  set stuId(int? val) => _stuId = val;

  void incrementStuId(int amount) => stuId = stuId + amount;

  bool hasStuId() => _stuId != null;

  // "single_answer_key_point_name" field.
  String? _singleAnswerKeyPointName;
  String get singleAnswerKeyPointName => _singleAnswerKeyPointName ?? '';
  set singleAnswerKeyPointName(String? val) => _singleAnswerKeyPointName = val;

  bool hasSingleAnswerKeyPointName() => _singleAnswerKeyPointName != null;

  // "single_answer_key_point_score" field.
  double? _singleAnswerKeyPointScore;
  double get singleAnswerKeyPointScore => _singleAnswerKeyPointScore ?? 0.0;
  set singleAnswerKeyPointScore(double? val) =>
      _singleAnswerKeyPointScore = val;

  void incrementSingleAnswerKeyPointScore(double amount) =>
      singleAnswerKeyPointScore = singleAnswerKeyPointScore + amount;

  bool hasSingleAnswerKeyPointScore() => _singleAnswerKeyPointScore != null;

  static ScoreKeyPointStruct fromMap(Map<String, dynamic> data) =>
      ScoreKeyPointStruct(
        stuName: data['stu_name'] as String?,
        stuId: castToType<int>(data['stu_id']),
        singleAnswerKeyPointName:
            data['single_answer_key_point_name'] as String?,
        singleAnswerKeyPointScore:
            castToType<double>(data['single_answer_key_point_score']),
      );

  static ScoreKeyPointStruct? maybeFromMap(dynamic data) => data is Map
      ? ScoreKeyPointStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'stu_name': _stuName,
        'stu_id': _stuId,
        'single_answer_key_point_name': _singleAnswerKeyPointName,
        'single_answer_key_point_score': _singleAnswerKeyPointScore,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'stu_name': serializeParam(
          _stuName,
          ParamType.String,
        ),
        'stu_id': serializeParam(
          _stuId,
          ParamType.int,
        ),
        'single_answer_key_point_name': serializeParam(
          _singleAnswerKeyPointName,
          ParamType.String,
        ),
        'single_answer_key_point_score': serializeParam(
          _singleAnswerKeyPointScore,
          ParamType.double,
        ),
      }.withoutNulls;

  static ScoreKeyPointStruct fromSerializableMap(Map<String, dynamic> data) =>
      ScoreKeyPointStruct(
        stuName: deserializeParam(
          data['stu_name'],
          ParamType.String,
          false,
        ),
        stuId: deserializeParam(
          data['stu_id'],
          ParamType.int,
          false,
        ),
        singleAnswerKeyPointName: deserializeParam(
          data['single_answer_key_point_name'],
          ParamType.String,
          false,
        ),
        singleAnswerKeyPointScore: deserializeParam(
          data['single_answer_key_point_score'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ScoreKeyPointStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ScoreKeyPointStruct &&
        stuName == other.stuName &&
        stuId == other.stuId &&
        singleAnswerKeyPointName == other.singleAnswerKeyPointName &&
        singleAnswerKeyPointScore == other.singleAnswerKeyPointScore;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [stuName, stuId, singleAnswerKeyPointName, singleAnswerKeyPointScore]);
}

ScoreKeyPointStruct createScoreKeyPointStruct({
  String? stuName,
  int? stuId,
  String? singleAnswerKeyPointName,
  double? singleAnswerKeyPointScore,
}) =>
    ScoreKeyPointStruct(
      stuName: stuName,
      stuId: stuId,
      singleAnswerKeyPointName: singleAnswerKeyPointName,
      singleAnswerKeyPointScore: singleAnswerKeyPointScore,
    );
