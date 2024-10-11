// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentListStruct extends BaseStruct {
  CommentListStruct({
    int? id,
    int? asstExamAnswerId,
    int? asstInfoTeacherId,
    int? type,
    String? group,
    String? originalText,
    String? comment,
    String? creator,
    int? dataStatus,
    String? createTime,
    String? updateTime,
    String? finishTime,
  })  : _id = id,
        _asstExamAnswerId = asstExamAnswerId,
        _asstInfoTeacherId = asstInfoTeacherId,
        _type = type,
        _group = group,
        _originalText = originalText,
        _comment = comment,
        _creator = creator,
        _dataStatus = dataStatus,
        _createTime = createTime,
        _updateTime = updateTime,
        _finishTime = finishTime;

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

  // "dataStatus" field.
  int? _dataStatus;
  int get dataStatus => _dataStatus ?? 0;
  set dataStatus(int? val) => _dataStatus = val;

  void incrementDataStatus(int amount) => dataStatus = dataStatus + amount;

  bool hasDataStatus() => _dataStatus != null;

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

  static CommentListStruct fromMap(Map<String, dynamic> data) =>
      CommentListStruct(
        id: castToType<int>(data['id']),
        asstExamAnswerId: castToType<int>(data['asstExamAnswerId']),
        asstInfoTeacherId: castToType<int>(data['asstInfoTeacherId']),
        type: castToType<int>(data['type']),
        group: data['group'] as String?,
        originalText: data['originalText'] as String?,
        comment: data['comment'] as String?,
        creator: data['creator'] as String?,
        dataStatus: castToType<int>(data['dataStatus']),
        createTime: data['createTime'] as String?,
        updateTime: data['updateTime'] as String?,
        finishTime: data['finishTime'] as String?,
      );

  static CommentListStruct? maybeFromMap(dynamic data) => data is Map
      ? CommentListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'asstExamAnswerId': _asstExamAnswerId,
        'asstInfoTeacherId': _asstInfoTeacherId,
        'type': _type,
        'group': _group,
        'originalText': _originalText,
        'comment': _comment,
        'creator': _creator,
        'dataStatus': _dataStatus,
        'createTime': _createTime,
        'updateTime': _updateTime,
        'finishTime': _finishTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'dataStatus': serializeParam(
          _dataStatus,
          ParamType.int,
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
      }.withoutNulls;

  static CommentListStruct fromSerializableMap(Map<String, dynamic> data) =>
      CommentListStruct(
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
        dataStatus: deserializeParam(
          data['dataStatus'],
          ParamType.int,
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
      );

  @override
  String toString() => 'CommentListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CommentListStruct &&
        id == other.id &&
        asstExamAnswerId == other.asstExamAnswerId &&
        asstInfoTeacherId == other.asstInfoTeacherId &&
        type == other.type &&
        group == other.group &&
        originalText == other.originalText &&
        comment == other.comment &&
        creator == other.creator &&
        dataStatus == other.dataStatus &&
        createTime == other.createTime &&
        updateTime == other.updateTime &&
        finishTime == other.finishTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        asstExamAnswerId,
        asstInfoTeacherId,
        type,
        group,
        originalText,
        comment,
        creator,
        dataStatus,
        createTime,
        updateTime,
        finishTime
      ]);
}

CommentListStruct createCommentListStruct({
  int? id,
  int? asstExamAnswerId,
  int? asstInfoTeacherId,
  int? type,
  String? group,
  String? originalText,
  String? comment,
  String? creator,
  int? dataStatus,
  String? createTime,
  String? updateTime,
  String? finishTime,
}) =>
    CommentListStruct(
      id: id,
      asstExamAnswerId: asstExamAnswerId,
      asstInfoTeacherId: asstInfoTeacherId,
      type: type,
      group: group,
      originalText: originalText,
      comment: comment,
      creator: creator,
      dataStatus: dataStatus,
      createTime: createTime,
      updateTime: updateTime,
      finishTime: finishTime,
    );
