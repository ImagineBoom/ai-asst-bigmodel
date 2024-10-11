// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScoreKeyPointsRankListStruct extends BaseStruct {
  ScoreKeyPointsRankListStruct({
    List<ScoreKeyPointStruct>? scoreKeyPoint,
  }) : _scoreKeyPoint = scoreKeyPoint;

  // "score_key_point" field.
  List<ScoreKeyPointStruct>? _scoreKeyPoint;
  List<ScoreKeyPointStruct> get scoreKeyPoint => _scoreKeyPoint ?? const [];
  set scoreKeyPoint(List<ScoreKeyPointStruct>? val) => _scoreKeyPoint = val;

  void updateScoreKeyPoint(Function(List<ScoreKeyPointStruct>) updateFn) {
    updateFn(_scoreKeyPoint ??= []);
  }

  bool hasScoreKeyPoint() => _scoreKeyPoint != null;

  static ScoreKeyPointsRankListStruct fromMap(Map<String, dynamic> data) =>
      ScoreKeyPointsRankListStruct(
        scoreKeyPoint: getStructList(
          data['score_key_point'],
          ScoreKeyPointStruct.fromMap,
        ),
      );

  static ScoreKeyPointsRankListStruct? maybeFromMap(dynamic data) => data is Map
      ? ScoreKeyPointsRankListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'score_key_point': _scoreKeyPoint?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'score_key_point': serializeParam(
          _scoreKeyPoint,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ScoreKeyPointsRankListStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ScoreKeyPointsRankListStruct(
        scoreKeyPoint: deserializeStructParam<ScoreKeyPointStruct>(
          data['score_key_point'],
          ParamType.DataStruct,
          true,
          structBuilder: ScoreKeyPointStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ScoreKeyPointsRankListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ScoreKeyPointsRankListStruct &&
        listEquality.equals(scoreKeyPoint, other.scoreKeyPoint);
  }

  @override
  int get hashCode => const ListEquality().hash([scoreKeyPoint]);
}

ScoreKeyPointsRankListStruct createScoreKeyPointsRankListStruct() =>
    ScoreKeyPointsRankListStruct();
