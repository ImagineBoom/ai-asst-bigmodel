// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InfoStruct extends BaseStruct {
  InfoStruct({
    int? count,
  }) : _count = count;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  static InfoStruct fromMap(Map<String, dynamic> data) => InfoStruct(
        count: castToType<int>(data['count']),
      );

  static InfoStruct? maybeFromMap(dynamic data) =>
      data is Map ? InfoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'count': _count,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
      }.withoutNulls;

  static InfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      InfoStruct(
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'InfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InfoStruct && count == other.count;
  }

  @override
  int get hashCode => const ListEquality().hash([count]);
}

InfoStruct createInfoStruct({
  int? count,
}) =>
    InfoStruct(
      count: count,
    );
