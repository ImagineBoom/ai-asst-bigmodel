// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourseInfoStruct extends BaseStruct {
  CourseInfoStruct({
    String? courseName,
    String? address,
    String? department,
    String? className,
    String? time,
    int? studentNum,
    String? courseCover,
  })  : _courseName = courseName,
        _address = address,
        _department = department,
        _className = className,
        _time = time,
        _studentNum = studentNum,
        _courseCover = courseCover;

  // "course_name" field.
  String? _courseName;
  String get courseName => _courseName ?? '';
  set courseName(String? val) => _courseName = val;

  bool hasCourseName() => _courseName != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  set department(String? val) => _department = val;

  bool hasDepartment() => _department != null;

  // "class_name" field.
  String? _className;
  String get className => _className ?? '';
  set className(String? val) => _className = val;

  bool hasClassName() => _className != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  // "student_num" field.
  int? _studentNum;
  int get studentNum => _studentNum ?? 0;
  set studentNum(int? val) => _studentNum = val;

  void incrementStudentNum(int amount) => studentNum = studentNum + amount;

  bool hasStudentNum() => _studentNum != null;

  // "course_cover" field.
  String? _courseCover;
  String get courseCover => _courseCover ?? '';
  set courseCover(String? val) => _courseCover = val;

  bool hasCourseCover() => _courseCover != null;

  static CourseInfoStruct fromMap(Map<String, dynamic> data) =>
      CourseInfoStruct(
        courseName: data['course_name'] as String?,
        address: data['address'] as String?,
        department: data['department'] as String?,
        className: data['class_name'] as String?,
        time: data['time'] as String?,
        studentNum: castToType<int>(data['student_num']),
        courseCover: data['course_cover'] as String?,
      );

  static CourseInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? CourseInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'course_name': _courseName,
        'address': _address,
        'department': _department,
        'class_name': _className,
        'time': _time,
        'student_num': _studentNum,
        'course_cover': _courseCover,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'course_name': serializeParam(
          _courseName,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'department': serializeParam(
          _department,
          ParamType.String,
        ),
        'class_name': serializeParam(
          _className,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'student_num': serializeParam(
          _studentNum,
          ParamType.int,
        ),
        'course_cover': serializeParam(
          _courseCover,
          ParamType.String,
        ),
      }.withoutNulls;

  static CourseInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CourseInfoStruct(
        courseName: deserializeParam(
          data['course_name'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        department: deserializeParam(
          data['department'],
          ParamType.String,
          false,
        ),
        className: deserializeParam(
          data['class_name'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        studentNum: deserializeParam(
          data['student_num'],
          ParamType.int,
          false,
        ),
        courseCover: deserializeParam(
          data['course_cover'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CourseInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CourseInfoStruct &&
        courseName == other.courseName &&
        address == other.address &&
        department == other.department &&
        className == other.className &&
        time == other.time &&
        studentNum == other.studentNum &&
        courseCover == other.courseCover;
  }

  @override
  int get hashCode => const ListEquality().hash([
        courseName,
        address,
        department,
        className,
        time,
        studentNum,
        courseCover
      ]);
}

CourseInfoStruct createCourseInfoStruct({
  String? courseName,
  String? address,
  String? department,
  String? className,
  String? time,
  int? studentNum,
  String? courseCover,
}) =>
    CourseInfoStruct(
      courseName: courseName,
      address: address,
      department: department,
      className: className,
      time: time,
      studentNum: studentNum,
      courseCover: courseCover,
    );
