// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExamDimensionStruct extends BaseStruct {
  ExamDimensionStruct({
    String? analyseDimension,
    String? firstClassification,
    String? secondClassification,
    String? coreFieldRecall,
    bool? ifAnalyse,
  })  : _analyseDimension = analyseDimension,
        _firstClassification = firstClassification,
        _secondClassification = secondClassification,
        _coreFieldRecall = coreFieldRecall,
        _ifAnalyse = ifAnalyse;

  // "analyse_dimension" field.
  String? _analyseDimension;
  String get analyseDimension => _analyseDimension ?? '';
  set analyseDimension(String? val) => _analyseDimension = val;

  bool hasAnalyseDimension() => _analyseDimension != null;

  // "firstClassification" field.
  String? _firstClassification;
  String get firstClassification => _firstClassification ?? '';
  set firstClassification(String? val) => _firstClassification = val;

  bool hasFirstClassification() => _firstClassification != null;

  // "secondClassification" field.
  String? _secondClassification;
  String get secondClassification => _secondClassification ?? '';
  set secondClassification(String? val) => _secondClassification = val;

  bool hasSecondClassification() => _secondClassification != null;

  // "coreFieldRecall" field.
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
        analyseDimension: data['analyse_dimension'] as String?,
        firstClassification: data['firstClassification'] as String?,
        secondClassification: data['secondClassification'] as String?,
        coreFieldRecall: data['coreFieldRecall'] as String?,
        ifAnalyse: data['ifAnalyse'] as bool?,
      );

  static ExamDimensionStruct? maybeFromMap(dynamic data) => data is Map
      ? ExamDimensionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'analyse_dimension': _analyseDimension,
        'firstClassification': _firstClassification,
        'secondClassification': _secondClassification,
        'coreFieldRecall': _coreFieldRecall,
        'ifAnalyse': _ifAnalyse,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'analyse_dimension': serializeParam(
          _analyseDimension,
          ParamType.String,
        ),
        'firstClassification': serializeParam(
          _firstClassification,
          ParamType.String,
        ),
        'secondClassification': serializeParam(
          _secondClassification,
          ParamType.String,
        ),
        'coreFieldRecall': serializeParam(
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
        analyseDimension: deserializeParam(
          data['analyse_dimension'],
          ParamType.String,
          false,
        ),
        firstClassification: deserializeParam(
          data['firstClassification'],
          ParamType.String,
          false,
        ),
        secondClassification: deserializeParam(
          data['secondClassification'],
          ParamType.String,
          false,
        ),
        coreFieldRecall: deserializeParam(
          data['coreFieldRecall'],
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
        analyseDimension == other.analyseDimension &&
        firstClassification == other.firstClassification &&
        secondClassification == other.secondClassification &&
        coreFieldRecall == other.coreFieldRecall &&
        ifAnalyse == other.ifAnalyse;
  }

  @override
  int get hashCode => const ListEquality().hash([
        analyseDimension,
        firstClassification,
        secondClassification,
        coreFieldRecall,
        ifAnalyse
      ]);
}

ExamDimensionStruct createExamDimensionStruct({
  String? analyseDimension,
  String? firstClassification,
  String? secondClassification,
  String? coreFieldRecall,
  bool? ifAnalyse,
}) =>
    ExamDimensionStruct(
      analyseDimension: analyseDimension,
      firstClassification: firstClassification,
      secondClassification: secondClassification,
      coreFieldRecall: coreFieldRecall,
      ifAnalyse: ifAnalyse,
    );
