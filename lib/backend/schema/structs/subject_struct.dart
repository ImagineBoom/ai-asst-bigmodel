// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubjectStruct extends BaseStruct {
  SubjectStruct({
    int? id,
    int? type,
    String? name,
    String? group,
    String? description,
    String? creator,
    String? createTime,
    String? updateTime,
    String? finishTime,
  })  : _id = id,
        _type = type,
        _name = name,
        _group = group,
        _description = description,
        _creator = creator,
        _createTime = createTime,
        _updateTime = updateTime,
        _finishTime = finishTime;

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

  static SubjectStruct fromMap(Map<String, dynamic> data) => SubjectStruct(
        id: castToType<int>(data['id']),
        type: castToType<int>(data['type']),
        name: data['name'] as String?,
        group: data['group'] as String?,
        description: data['description'] as String?,
        creator: data['creator'] as String?,
        createTime: data['createTime'] as String?,
        updateTime: data['updateTime'] as String?,
        finishTime: data['finishTime'] as String?,
      );

  static SubjectStruct? maybeFromMap(dynamic data) =>
      data is Map ? SubjectStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'type': _type,
        'name': _name,
        'group': _group,
        'description': _description,
        'creator': _creator,
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

  static SubjectStruct fromSerializableMap(Map<String, dynamic> data) =>
      SubjectStruct(
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
  String toString() => 'SubjectStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SubjectStruct &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        group == other.group &&
        description == other.description &&
        creator == other.creator &&
        createTime == other.createTime &&
        updateTime == other.updateTime &&
        finishTime == other.finishTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        type,
        name,
        group,
        description,
        creator,
        createTime,
        updateTime,
        finishTime
      ]);
}

SubjectStruct createSubjectStruct({
  int? id,
  int? type,
  String? name,
  String? group,
  String? description,
  String? creator,
  String? createTime,
  String? updateTime,
  String? finishTime,
}) =>
    SubjectStruct(
      id: id,
      type: type,
      name: name,
      group: group,
      description: description,
      creator: creator,
      createTime: createTime,
      updateTime: updateTime,
      finishTime: finishTime,
    );
