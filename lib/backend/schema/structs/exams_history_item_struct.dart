// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExamsHistoryItemStruct extends BaseStruct {
  ExamsHistoryItemStruct({
    String? courseName,
    String? className,
    String? group,
    String? creater,
    String? updateTime,
    String? state,
  })  : _courseName = courseName,
        _className = className,
        _group = group,
        _creater = creater,
        _updateTime = updateTime,
        _state = state;

  // "course_name" field.
  String? _courseName;
  String get courseName => _courseName ?? '';
  set courseName(String? val) => _courseName = val;

  bool hasCourseName() => _courseName != null;

  // "class_name" field.
  String? _className;
  String get className => _className ?? '';
  set className(String? val) => _className = val;

  bool hasClassName() => _className != null;

  // "group" field.
  String? _group;
  String get group => _group ?? '';
  set group(String? val) => _group = val;

  bool hasGroup() => _group != null;

  // "creater" field.
  String? _creater;
  String get creater => _creater ?? '';
  set creater(String? val) => _creater = val;

  bool hasCreater() => _creater != null;

  // "update_time" field.
  String? _updateTime;
  String get updateTime => _updateTime ?? '';
  set updateTime(String? val) => _updateTime = val;

  bool hasUpdateTime() => _updateTime != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  static ExamsHistoryItemStruct fromMap(Map<String, dynamic> data) =>
      ExamsHistoryItemStruct(
        courseName: data['course_name'] as String?,
        className: data['class_name'] as String?,
        group: data['group'] as String?,
        creater: data['creater'] as String?,
        updateTime: data['update_time'] as String?,
        state: data['state'] as String?,
      );

  static ExamsHistoryItemStruct? maybeFromMap(dynamic data) => data is Map
      ? ExamsHistoryItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'course_name': _courseName,
        'class_name': _className,
        'group': _group,
        'creater': _creater,
        'update_time': _updateTime,
        'state': _state,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'course_name': serializeParam(
          _courseName,
          ParamType.String,
        ),
        'class_name': serializeParam(
          _className,
          ParamType.String,
        ),
        'group': serializeParam(
          _group,
          ParamType.String,
        ),
        'creater': serializeParam(
          _creater,
          ParamType.String,
        ),
        'update_time': serializeParam(
          _updateTime,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
      }.withoutNulls;

  static ExamsHistoryItemStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ExamsHistoryItemStruct(
        courseName: deserializeParam(
          data['course_name'],
          ParamType.String,
          false,
        ),
        className: deserializeParam(
          data['class_name'],
          ParamType.String,
          false,
        ),
        group: deserializeParam(
          data['group'],
          ParamType.String,
          false,
        ),
        creater: deserializeParam(
          data['creater'],
          ParamType.String,
          false,
        ),
        updateTime: deserializeParam(
          data['update_time'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ExamsHistoryItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExamsHistoryItemStruct &&
        courseName == other.courseName &&
        className == other.className &&
        group == other.group &&
        creater == other.creater &&
        updateTime == other.updateTime &&
        state == other.state;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([courseName, className, group, creater, updateTime, state]);
}

ExamsHistoryItemStruct createExamsHistoryItemStruct({
  String? courseName,
  String? className,
  String? group,
  String? creater,
  String? updateTime,
  String? state,
}) =>
    ExamsHistoryItemStruct(
      courseName: courseName,
      className: className,
      group: group,
      creater: creater,
      updateTime: updateTime,
      state: state,
    );
