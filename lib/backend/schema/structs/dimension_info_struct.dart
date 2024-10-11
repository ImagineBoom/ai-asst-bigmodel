// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DimensionInfoStruct extends BaseStruct {
  DimensionInfoStruct({
    int? id,
    int? type,
    String? dimension,
    String? firstClassification,
    String? secondClassification,
    String? coreFieldRecall,
    String? createTime,
    String? updateTime,
    String? finishTime,
    bool? ifAnalyse,
  })  : _id = id,
        _type = type,
        _dimension = dimension,
        _firstClassification = firstClassification,
        _secondClassification = secondClassification,
        _coreFieldRecall = coreFieldRecall,
        _createTime = createTime,
        _updateTime = updateTime,
        _finishTime = finishTime,
        _ifAnalyse = ifAnalyse;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  set type(int? val) => _type = val;

  void incrementType(int amount) => type = type + amount;

  bool hasType() => _type != null;

  // "dimension" field.
  String? _dimension;
  String get dimension => _dimension ?? '';
  set dimension(String? val) => _dimension = val;

  bool hasDimension() => _dimension != null;

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

  // "createTime" field.
  String? _createTime;
  String get createTime => _createTime ?? '';
  set createTime(String? val) => _createTime = val;

  bool hasCreateTime() => _createTime != null;

  // "updateTime" field.
  String? _updateTime;
  String get updateTime => _updateTime ?? '';
  set updateTime(String? val) => _updateTime = val;

  bool hasUpdateTime() => _updateTime != null;

  // "finishTime" field.
  String? _finishTime;
  String get finishTime => _finishTime ?? '';
  set finishTime(String? val) => _finishTime = val;

  bool hasFinishTime() => _finishTime != null;

  // "if_analyse" field.
  bool? _ifAnalyse;
  bool get ifAnalyse => _ifAnalyse ?? true;
  set ifAnalyse(bool? val) => _ifAnalyse = val;

  bool hasIfAnalyse() => _ifAnalyse != null;

  static DimensionInfoStruct fromMap(Map<String, dynamic> data) =>
      DimensionInfoStruct(
        id: castToType<int>(data['id']),
        type: castToType<int>(data['type']),
        dimension: data['dimension'] as String?,
        firstClassification: data['firstClassification'] as String?,
        secondClassification: data['secondClassification'] as String?,
        coreFieldRecall: data['coreFieldRecall'] as String?,
        createTime: data['createTime'] as String?,
        updateTime: data['updateTime'] as String?,
        finishTime: data['finishTime'] as String?,
        ifAnalyse: data['if_analyse'] as bool?,
      );

  static DimensionInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? DimensionInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'type': _type,
        'dimension': _dimension,
        'firstClassification': _firstClassification,
        'secondClassification': _secondClassification,
        'coreFieldRecall': _coreFieldRecall,
        'createTime': _createTime,
        'updateTime': _updateTime,
        'finishTime': _finishTime,
        'if_analyse': _ifAnalyse,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.int,
        ),
        'dimension': serializeParam(
          _dimension,
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
        'createTime': serializeParam(
          _createTime,
          ParamType.String,
        ),
        'updateTime': serializeParam(
          _updateTime,
          ParamType.String,
        ),
        'finishTime': serializeParam(
          _finishTime,
          ParamType.String,
        ),
        'if_analyse': serializeParam(
          _ifAnalyse,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DimensionInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DimensionInfoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.int,
          false,
        ),
        dimension: deserializeParam(
          data['dimension'],
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
        createTime: deserializeParam(
          data['createTime'],
          ParamType.String,
          false,
        ),
        updateTime: deserializeParam(
          data['updateTime'],
          ParamType.String,
          false,
        ),
        finishTime: deserializeParam(
          data['finishTime'],
          ParamType.String,
          false,
        ),
        ifAnalyse: deserializeParam(
          data['if_analyse'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'DimensionInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DimensionInfoStruct &&
        id == other.id &&
        type == other.type &&
        dimension == other.dimension &&
        firstClassification == other.firstClassification &&
        secondClassification == other.secondClassification &&
        coreFieldRecall == other.coreFieldRecall &&
        createTime == other.createTime &&
        updateTime == other.updateTime &&
        finishTime == other.finishTime &&
        ifAnalyse == other.ifAnalyse;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        type,
        dimension,
        firstClassification,
        secondClassification,
        coreFieldRecall,
        createTime,
        updateTime,
        finishTime,
        ifAnalyse
      ]);
}

DimensionInfoStruct createDimensionInfoStruct({
  int? id,
  int? type,
  String? dimension,
  String? firstClassification,
  String? secondClassification,
  String? coreFieldRecall,
  String? createTime,
  String? updateTime,
  String? finishTime,
  bool? ifAnalyse,
}) =>
    DimensionInfoStruct(
      id: id,
      type: type,
      dimension: dimension,
      firstClassification: firstClassification,
      secondClassification: secondClassification,
      coreFieldRecall: coreFieldRecall,
      createTime: createTime,
      updateTime: updateTime,
      finishTime: finishTime,
      ifAnalyse: ifAnalyse,
    );
