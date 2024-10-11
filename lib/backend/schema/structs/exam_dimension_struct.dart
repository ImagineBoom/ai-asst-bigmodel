// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExamDimensionStruct extends BaseStruct {
  ExamDimensionStruct({
    String? dimensionName,
    String? firstLevelIndex,
    String? secondLevelIndex,
    String? coreFieldRecall,
    bool? ifAnalyse,
  })  : _dimensionName = dimensionName,
        _firstLevelIndex = firstLevelIndex,
        _secondLevelIndex = secondLevelIndex,
        _coreFieldRecall = coreFieldRecall,
        _ifAnalyse = ifAnalyse;

  // "dimension_name" field.
  String? _dimensionName;
  String get dimensionName => _dimensionName ?? '';
  set dimensionName(String? val) => _dimensionName = val;

  bool hasDimensionName() => _dimensionName != null;

  // "first_level_index" field.
  String? _firstLevelIndex;
  String get firstLevelIndex => _firstLevelIndex ?? '';
  set firstLevelIndex(String? val) => _firstLevelIndex = val;

  bool hasFirstLevelIndex() => _firstLevelIndex != null;

  // "second_level_index" field.
  String? _secondLevelIndex;
  String get secondLevelIndex => _secondLevelIndex ?? '';
  set secondLevelIndex(String? val) => _secondLevelIndex = val;

  bool hasSecondLevelIndex() => _secondLevelIndex != null;

  // "core_field_recall" field.
  String? _coreFieldRecall;
  String get coreFieldRecall => _coreFieldRecall ?? '';
  set coreFieldRecall(String? val) => _coreFieldRecall = val;

  bool hasCoreFieldRecall() => _coreFieldRecall != null;

  // "ifAnalyse" field.
  bool? _ifAnalyse;
  bool get ifAnalyse => _ifAnalyse ?? false;
  set ifAnalyse(bool? val) => _ifAnalyse = val;

  bool hasIfAnalyse() => _ifAnalyse != null;

  static ExamDimensionStruct fromMap(Map<String, dynamic> data) =>
      ExamDimensionStruct(
        dimensionName: data['dimension_name'] as String?,
        firstLevelIndex: data['first_level_index'] as String?,
        secondLevelIndex: data['second_level_index'] as String?,
        coreFieldRecall: data['core_field_recall'] as String?,
        ifAnalyse: data['ifAnalyse'] as bool?,
      );

  static ExamDimensionStruct? maybeFromMap(dynamic data) => data is Map
      ? ExamDimensionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dimension_name': _dimensionName,
        'first_level_index': _firstLevelIndex,
        'second_level_index': _secondLevelIndex,
        'core_field_recall': _coreFieldRecall,
        'ifAnalyse': _ifAnalyse,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dimension_name': serializeParam(
          _dimensionName,
          ParamType.String,
        ),
        'first_level_index': serializeParam(
          _firstLevelIndex,
          ParamType.String,
        ),
        'second_level_index': serializeParam(
          _secondLevelIndex,
          ParamType.String,
        ),
        'core_field_recall': serializeParam(
          _coreFieldRecall,
          ParamType.String,
        ),
        'ifAnalyse': serializeParam(
          _ifAnalyse,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ExamDimensionStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExamDimensionStruct(
        dimensionName: deserializeParam(
          data['dimension_name'],
          ParamType.String,
          false,
        ),
        firstLevelIndex: deserializeParam(
          data['first_level_index'],
          ParamType.String,
          false,
        ),
        secondLevelIndex: deserializeParam(
          data['second_level_index'],
          ParamType.String,
          false,
        ),
        coreFieldRecall: deserializeParam(
          data['core_field_recall'],
          ParamType.String,
          false,
        ),
        ifAnalyse: deserializeParam(
          data['ifAnalyse'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ExamDimensionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExamDimensionStruct &&
        dimensionName == other.dimensionName &&
        firstLevelIndex == other.firstLevelIndex &&
        secondLevelIndex == other.secondLevelIndex &&
        coreFieldRecall == other.coreFieldRecall &&
        ifAnalyse == other.ifAnalyse;
  }

  @override
  int get hashCode => const ListEquality().hash([
        dimensionName,
        firstLevelIndex,
        secondLevelIndex,
        coreFieldRecall,
        ifAnalyse
      ]);
}

ExamDimensionStruct createExamDimensionStruct({
  String? dimensionName,
  String? firstLevelIndex,
  String? secondLevelIndex,
  String? coreFieldRecall,
  bool? ifAnalyse,
}) =>
    ExamDimensionStruct(
      dimensionName: dimensionName,
      firstLevelIndex: firstLevelIndex,
      secondLevelIndex: secondLevelIndex,
      coreFieldRecall: coreFieldRecall,
      ifAnalyse: ifAnalyse,
    );
