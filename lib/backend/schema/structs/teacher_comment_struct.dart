// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeacherCommentStruct extends BaseStruct {
  TeacherCommentStruct({
    String? group,
    String? originalText,
    String? comment,
    String? creator,
    String? createTime,
    String? updateTime,
    String? finishTime,
    int? id,
    int? asstExamAnswerId,
    int? asstInfoTeacherId,
    int? type,
    int? dataStatus,
  })  : _group = group,
        _originalText = originalText,
        _comment = comment,
        _creator = creator,
        _createTime = createTime,
        _updateTime = updateTime,
        _finishTime = finishTime,
        _id = id,
        _asstExamAnswerId = asstExamAnswerId,
        _asstInfoTeacherId = asstInfoTeacherId,
        _type = type,
        _dataStatus = dataStatus;

  // "group" field.
  String? _group;
  String get group => _group ?? '';
  set group(String? val) => _group = val;

  bool hasGroup() => _group != null;

  // "originalText" field.
  String? _originalText;
  String get originalText => _originalText ?? '';
  set originalText(String? val) => _originalText = val;

  bool hasOriginalText() => _originalText != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  set comment(String? val) => _comment = val;

  bool hasComment() => _comment != null;

  // "creator" field.
  String? _creator;
  String get creator => _creator ?? '';
  set creator(String? val) => _creator = val;

  bool hasCreator() => _creator != null;

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

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "asstExamAnswerId" field.
  int? _asstExamAnswerId;
  int get asstExamAnswerId => _asstExamAnswerId ?? 0;
  set asstExamAnswerId(int? val) => _asstExamAnswerId = val;

  void incrementAsstExamAnswerId(int amount) =>
      asstExamAnswerId = asstExamAnswerId + amount;

  bool hasAsstExamAnswerId() => _asstExamAnswerId != null;

  // "asstInfoTeacherId" field.
  int? _asstInfoTeacherId;
  int get asstInfoTeacherId => _asstInfoTeacherId ?? 0;
  set asstInfoTeacherId(int? val) => _asstInfoTeacherId = val;

  void incrementAsstInfoTeacherId(int amount) =>
      asstInfoTeacherId = asstInfoTeacherId + amount;

  bool hasAsstInfoTeacherId() => _asstInfoTeacherId != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  set type(int? val) => _type = val;

  void incrementType(int amount) => type = type + amount;

  bool hasType() => _type != null;

  // "dataStatus" field.
  int? _dataStatus;
  int get dataStatus => _dataStatus ?? 0;
  set dataStatus(int? val) => _dataStatus = val;

  void incrementDataStatus(int amount) => dataStatus = dataStatus + amount;

  bool hasDataStatus() => _dataStatus != null;

  static TeacherCommentStruct fromMap(Map<String, dynamic> data) =>
      TeacherCommentStruct(
        group: data['group'] as String?,
        originalText: data['originalText'] as String?,
        comment: data['comment'] as String?,
        creator: data['creator'] as String?,
        createTime: data['createTime'] as String?,
        updateTime: data['updateTime'] as String?,
        finishTime: data['finishTime'] as String?,
        id: castToType<int>(data['id']),
        asstExamAnswerId: castToType<int>(data['asstExamAnswerId']),
        asstInfoTeacherId: castToType<int>(data['asstInfoTeacherId']),
        type: castToType<int>(data['type']),
        dataStatus: castToType<int>(data['dataStatus']),
      );

  static TeacherCommentStruct? maybeFromMap(dynamic data) => data is Map
      ? TeacherCommentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'group': _group,
        'originalText': _originalText,
        'comment': _comment,
        'creator': _creator,
        'createTime': _createTime,
        'updateTime': _updateTime,
        'finishTime': _finishTime,
        'id': _id,
        'asstExamAnswerId': _asstExamAnswerId,
        'asstInfoTeacherId': _asstInfoTeacherId,
        'type': _type,
        'dataStatus': _dataStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'group': serializeParam(
          _group,
          ParamType.String,
        ),
        'originalText': serializeParam(
          _originalText,
          ParamType.String,
        ),
        'comment': serializeParam(
          _comment,
          ParamType.String,
        ),
        'creator': serializeParam(
          _creator,
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
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'asstExamAnswerId': serializeParam(
          _asstExamAnswerId,
          ParamType.int,
        ),
        'asstInfoTeacherId': serializeParam(
          _asstInfoTeacherId,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.int,
        ),
        'dataStatus': serializeParam(
          _dataStatus,
          ParamType.int,
        ),
      }.withoutNulls;

  static TeacherCommentStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeacherCommentStruct(
        group: deserializeParam(
          data['group'],
          ParamType.String,
          false,
        ),
        originalText: deserializeParam(
          data['originalText'],
          ParamType.String,
          false,
        ),
        comment: deserializeParam(
          data['comment'],
          ParamType.String,
          false,
        ),
        creator: deserializeParam(
          data['creator'],
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
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        asstExamAnswerId: deserializeParam(
          data['asstExamAnswerId'],
          ParamType.int,
          false,
        ),
        asstInfoTeacherId: deserializeParam(
          data['asstInfoTeacherId'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.int,
          false,
        ),
        dataStatus: deserializeParam(
          data['dataStatus'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TeacherCommentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeacherCommentStruct &&
        group == other.group &&
        originalText == other.originalText &&
        comment == other.comment &&
        creator == other.creator &&
        createTime == other.createTime &&
        updateTime == other.updateTime &&
        finishTime == other.finishTime &&
        id == other.id &&
        asstExamAnswerId == other.asstExamAnswerId &&
        asstInfoTeacherId == other.asstInfoTeacherId &&
        type == other.type &&
        dataStatus == other.dataStatus;
  }

  @override
  int get hashCode => const ListEquality().hash([
        group,
        originalText,
        comment,
        creator,
        createTime,
        updateTime,
        finishTime,
        id,
        asstExamAnswerId,
        asstInfoTeacherId,
        type,
        dataStatus
      ]);
}

TeacherCommentStruct createTeacherCommentStruct({
  String? group,
  String? originalText,
  String? comment,
  String? creator,
  String? createTime,
  String? updateTime,
  String? finishTime,
  int? id,
  int? asstExamAnswerId,
  int? asstInfoTeacherId,
  int? type,
  int? dataStatus,
}) =>
    TeacherCommentStruct(
      group: group,
      originalText: originalText,
      comment: comment,
      creator: creator,
      createTime: createTime,
      updateTime: updateTime,
      finishTime: finishTime,
      id: id,
      asstExamAnswerId: asstExamAnswerId,
      asstInfoTeacherId: asstInfoTeacherId,
      type: type,
      dataStatus: dataStatus,
    );
