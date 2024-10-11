// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExamBankStruct extends BaseStruct {
  ExamBankStruct({
    int? id,
    int? asstExamSubjectId,
    int? type,
    String? name,
    String? group,
    String? description,
    String? creator,
    String? status,
    String? createTime,
    String? updateTime,
    String? finishTime,
  })  : _id = id,
        _asstExamSubjectId = asstExamSubjectId,
        _type = type,
        _name = name,
        _group = group,
        _description = description,
        _creator = creator,
        _status = status,
        _createTime = createTime,
        _updateTime = updateTime,
        _finishTime = finishTime;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "asstExamSubjectId" field.
  int? _asstExamSubjectId;
  int get asstExamSubjectId => _asstExamSubjectId ?? 0;
  set asstExamSubjectId(int? val) => _asstExamSubjectId = val;

  void incrementAsstExamSubjectId(int amount) =>
      asstExamSubjectId = asstExamSubjectId + amount;

  bool hasAsstExamSubjectId() => _asstExamSubjectId != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  set type(int? val) => _type = val;

  void incrementType(int amount) => type = type + amount;

  bool hasType() => _type != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "group" field.
  String? _group;
  String get group => _group ?? '';
  set group(String? val) => _group = val;

  bool hasGroup() => _group != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "creator" field.
  String? _creator;
  String get creator => _creator ?? '';
  set creator(String? val) => _creator = val;

  bool hasCreator() => _creator != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

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

  static ExamBankStruct fromMap(Map<String, dynamic> data) => ExamBankStruct(
        id: castToType<int>(data['id']),
        asstExamSubjectId: castToType<int>(data['asstExamSubjectId']),
        type: castToType<int>(data['type']),
        name: data['name'] as String?,
        group: data['group'] as String?,
        description: data['description'] as String?,
        creator: data['creator'] as String?,
        status: data['status'] as String?,
        createTime: data['createTime'] as String?,
        updateTime: data['updateTime'] as String?,
        finishTime: data['finishTime'] as String?,
      );

  static ExamBankStruct? maybeFromMap(dynamic data) =>
      data is Map ? ExamBankStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'asstExamSubjectId': _asstExamSubjectId,
        'type': _type,
        'name': _name,
        'group': _group,
        'description': _description,
        'creator': _creator,
        'status': _status,
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
        'asstExamSubjectId': serializeParam(
          _asstExamSubjectId,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'group': serializeParam(
          _group,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'creator': serializeParam(
          _creator,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
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
      }.withoutNulls;

  static ExamBankStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExamBankStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        asstExamSubjectId: deserializeParam(
          data['asstExamSubjectId'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        group: deserializeParam(
          data['group'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        creator: deserializeParam(
          data['creator'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
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
      );

  @override
  String toString() => 'ExamBankStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExamBankStruct &&
        id == other.id &&
        asstExamSubjectId == other.asstExamSubjectId &&
        type == other.type &&
        name == other.name &&
        group == other.group &&
        description == other.description &&
        creator == other.creator &&
        status == other.status &&
        createTime == other.createTime &&
        updateTime == other.updateTime &&
        finishTime == other.finishTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        asstExamSubjectId,
        type,
        name,
        group,
        description,
        creator,
        status,
        createTime,
        updateTime,
        finishTime
      ]);
}

ExamBankStruct createExamBankStruct({
  int? id,
  int? asstExamSubjectId,
  int? type,
  String? name,
  String? group,
  String? description,
  String? creator,
  String? status,
  String? createTime,
  String? updateTime,
  String? finishTime,
}) =>
    ExamBankStruct(
      id: id,
      asstExamSubjectId: asstExamSubjectId,
      type: type,
      name: name,
      group: group,
      description: description,
      creator: creator,
      status: status,
      createTime: createTime,
      updateTime: updateTime,
      finishTime: finishTime,
    );
