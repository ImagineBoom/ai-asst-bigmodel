// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StuAnswerList2Struct extends BaseStruct {
  StuAnswerList2Struct({
    String? stuName,
    String? stuAnswer,
    String? teacherScoreReason,
    String? aiScoreReason,
    List<String>? aiScoreTags,
    int? hitViewCount,
    List<String>? hitViewList,
    List<double>? stuAnswerScoreKeyPointsMatchList,
    double? stuAnswerAiSuspicious,
    String? stuAnswerAiSuspiciousReason,
    int? stuAnswerPlagiarismSuspicious,
    String? stuAnswerPlagiarismSuspiciousReason,
    String? stuCharacteristics,
    int? stuId,
    bool? aiStatus,
    String? stuScoreLevel,
    double? teacherScore,
    double? aiScore,
    int? teacherScoreRank,
    String? answerTime,
  })  : _stuName = stuName,
        _stuAnswer = stuAnswer,
        _teacherScoreReason = teacherScoreReason,
        _aiScoreReason = aiScoreReason,
        _aiScoreTags = aiScoreTags,
        _hitViewCount = hitViewCount,
        _hitViewList = hitViewList,
        _stuAnswerScoreKeyPointsMatchList = stuAnswerScoreKeyPointsMatchList,
        _stuAnswerAiSuspicious = stuAnswerAiSuspicious,
        _stuAnswerAiSuspiciousReason = stuAnswerAiSuspiciousReason,
        _stuAnswerPlagiarismSuspicious = stuAnswerPlagiarismSuspicious,
        _stuAnswerPlagiarismSuspiciousReason =
            stuAnswerPlagiarismSuspiciousReason,
        _stuCharacteristics = stuCharacteristics,
        _stuId = stuId,
        _aiStatus = aiStatus,
        _stuScoreLevel = stuScoreLevel,
        _teacherScore = teacherScore,
        _aiScore = aiScore,
        _teacherScoreRank = teacherScoreRank,
        _answerTime = answerTime;

  // "stu_name" field.
  String? _stuName;
  String get stuName => _stuName ?? '';
  set stuName(String? val) => _stuName = val;

  bool hasStuName() => _stuName != null;

  // "stu_answer" field.
  String? _stuAnswer;
  String get stuAnswer => _stuAnswer ?? '';
  set stuAnswer(String? val) => _stuAnswer = val;

  bool hasStuAnswer() => _stuAnswer != null;

  // "teacher_score_reason" field.
  String? _teacherScoreReason;
  String get teacherScoreReason => _teacherScoreReason ?? '';
  set teacherScoreReason(String? val) => _teacherScoreReason = val;

  bool hasTeacherScoreReason() => _teacherScoreReason != null;

  // "ai_score_reason" field.
  String? _aiScoreReason;
  String get aiScoreReason => _aiScoreReason ?? '';
  set aiScoreReason(String? val) => _aiScoreReason = val;

  bool hasAiScoreReason() => _aiScoreReason != null;

  // "ai_score_tags" field.
  List<String>? _aiScoreTags;
  List<String> get aiScoreTags => _aiScoreTags ?? const [];
  set aiScoreTags(List<String>? val) => _aiScoreTags = val;

  void updateAiScoreTags(Function(List<String>) updateFn) {
    updateFn(_aiScoreTags ??= []);
  }

  bool hasAiScoreTags() => _aiScoreTags != null;

  // "hit_view_count" field.
  int? _hitViewCount;
  int get hitViewCount => _hitViewCount ?? 0;
  set hitViewCount(int? val) => _hitViewCount = val;

  void incrementHitViewCount(int amount) =>
      hitViewCount = hitViewCount + amount;

  bool hasHitViewCount() => _hitViewCount != null;

  // "hit_view_list" field.
  List<String>? _hitViewList;
  List<String> get hitViewList => _hitViewList ?? const [];
  set hitViewList(List<String>? val) => _hitViewList = val;

  void updateHitViewList(Function(List<String>) updateFn) {
    updateFn(_hitViewList ??= []);
  }

  bool hasHitViewList() => _hitViewList != null;

  // "stu_answer_score_key_points_match_list" field.
  List<double>? _stuAnswerScoreKeyPointsMatchList;
  List<double> get stuAnswerScoreKeyPointsMatchList =>
      _stuAnswerScoreKeyPointsMatchList ?? const [];
  set stuAnswerScoreKeyPointsMatchList(List<double>? val) =>
      _stuAnswerScoreKeyPointsMatchList = val;

  void updateStuAnswerScoreKeyPointsMatchList(Function(List<double>) updateFn) {
    updateFn(_stuAnswerScoreKeyPointsMatchList ??= []);
  }

  bool hasStuAnswerScoreKeyPointsMatchList() =>
      _stuAnswerScoreKeyPointsMatchList != null;

  // "stu_answer_ai_suspicious" field.
  double? _stuAnswerAiSuspicious;
  double get stuAnswerAiSuspicious => _stuAnswerAiSuspicious ?? 0.0;
  set stuAnswerAiSuspicious(double? val) => _stuAnswerAiSuspicious = val;

  void incrementStuAnswerAiSuspicious(double amount) =>
      stuAnswerAiSuspicious = stuAnswerAiSuspicious + amount;

  bool hasStuAnswerAiSuspicious() => _stuAnswerAiSuspicious != null;

  // "stu_answer_ai_suspicious_reason" field.
  String? _stuAnswerAiSuspiciousReason;
  String get stuAnswerAiSuspiciousReason => _stuAnswerAiSuspiciousReason ?? '';
  set stuAnswerAiSuspiciousReason(String? val) =>
      _stuAnswerAiSuspiciousReason = val;

  bool hasStuAnswerAiSuspiciousReason() => _stuAnswerAiSuspiciousReason != null;

  // "stu_answer_plagiarism_suspicious" field.
  int? _stuAnswerPlagiarismSuspicious;
  int get stuAnswerPlagiarismSuspicious => _stuAnswerPlagiarismSuspicious ?? 0;
  set stuAnswerPlagiarismSuspicious(int? val) =>
      _stuAnswerPlagiarismSuspicious = val;

  void incrementStuAnswerPlagiarismSuspicious(int amount) =>
      stuAnswerPlagiarismSuspicious = stuAnswerPlagiarismSuspicious + amount;

  bool hasStuAnswerPlagiarismSuspicious() =>
      _stuAnswerPlagiarismSuspicious != null;

  // "stu_answer_plagiarism_suspicious_reason" field.
  String? _stuAnswerPlagiarismSuspiciousReason;
  String get stuAnswerPlagiarismSuspiciousReason =>
      _stuAnswerPlagiarismSuspiciousReason ?? '';
  set stuAnswerPlagiarismSuspiciousReason(String? val) =>
      _stuAnswerPlagiarismSuspiciousReason = val;

  bool hasStuAnswerPlagiarismSuspiciousReason() =>
      _stuAnswerPlagiarismSuspiciousReason != null;

  // "stu_characteristics" field.
  String? _stuCharacteristics;
  String get stuCharacteristics => _stuCharacteristics ?? '';
  set stuCharacteristics(String? val) => _stuCharacteristics = val;

  bool hasStuCharacteristics() => _stuCharacteristics != null;

  // "stu_id" field.
  int? _stuId;
  int get stuId => _stuId ?? 0;
  set stuId(int? val) => _stuId = val;

  void incrementStuId(int amount) => stuId = stuId + amount;

  bool hasStuId() => _stuId != null;

  // "ai_status" field.
  bool? _aiStatus;
  bool get aiStatus => _aiStatus ?? false;
  set aiStatus(bool? val) => _aiStatus = val;

  bool hasAiStatus() => _aiStatus != null;

  // "stu_score_level" field.
  String? _stuScoreLevel;
  String get stuScoreLevel => _stuScoreLevel ?? '';
  set stuScoreLevel(String? val) => _stuScoreLevel = val;

  bool hasStuScoreLevel() => _stuScoreLevel != null;

  // "teacher_score" field.
  double? _teacherScore;
  double get teacherScore => _teacherScore ?? 0.0;
  set teacherScore(double? val) => _teacherScore = val;

  void incrementTeacherScore(double amount) =>
      teacherScore = teacherScore + amount;

  bool hasTeacherScore() => _teacherScore != null;

  // "ai_score" field.
  double? _aiScore;
  double get aiScore => _aiScore ?? 0.0;
  set aiScore(double? val) => _aiScore = val;

  void incrementAiScore(double amount) => aiScore = aiScore + amount;

  bool hasAiScore() => _aiScore != null;

  // "teacher_score_rank" field.
  int? _teacherScoreRank;
  int get teacherScoreRank => _teacherScoreRank ?? 0;
  set teacherScoreRank(int? val) => _teacherScoreRank = val;

  void incrementTeacherScoreRank(int amount) =>
      teacherScoreRank = teacherScoreRank + amount;

  bool hasTeacherScoreRank() => _teacherScoreRank != null;

  // "answer_time" field.
  String? _answerTime;
  String get answerTime => _answerTime ?? '';
  set answerTime(String? val) => _answerTime = val;

  bool hasAnswerTime() => _answerTime != null;

  static StuAnswerList2Struct fromMap(Map<String, dynamic> data) =>
      StuAnswerList2Struct(
        stuName: data['stu_name'] as String?,
        stuAnswer: data['stu_answer'] as String?,
        teacherScoreReason: data['teacher_score_reason'] as String?,
        aiScoreReason: data['ai_score_reason'] as String?,
        aiScoreTags: getDataList(data['ai_score_tags']),
        hitViewCount: castToType<int>(data['hit_view_count']),
        hitViewList: getDataList(data['hit_view_list']),
        stuAnswerScoreKeyPointsMatchList:
            getDataList(data['stu_answer_score_key_points_match_list']),
        stuAnswerAiSuspicious:
            castToType<double>(data['stu_answer_ai_suspicious']),
        stuAnswerAiSuspiciousReason:
            data['stu_answer_ai_suspicious_reason'] as String?,
        stuAnswerPlagiarismSuspicious:
            castToType<int>(data['stu_answer_plagiarism_suspicious']),
        stuAnswerPlagiarismSuspiciousReason:
            data['stu_answer_plagiarism_suspicious_reason'] as String?,
        stuCharacteristics: data['stu_characteristics'] as String?,
        stuId: castToType<int>(data['stu_id']),
        aiStatus: data['ai_status'] as bool?,
        stuScoreLevel: data['stu_score_level'] as String?,
        teacherScore: castToType<double>(data['teacher_score']),
        aiScore: castToType<double>(data['ai_score']),
        teacherScoreRank: castToType<int>(data['teacher_score_rank']),
        answerTime: data['answer_time'] as String?,
      );

  static StuAnswerList2Struct? maybeFromMap(dynamic data) => data is Map
      ? StuAnswerList2Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'stu_name': _stuName,
        'stu_answer': _stuAnswer,
        'teacher_score_reason': _teacherScoreReason,
        'ai_score_reason': _aiScoreReason,
        'ai_score_tags': _aiScoreTags,
        'hit_view_count': _hitViewCount,
        'hit_view_list': _hitViewList,
        'stu_answer_score_key_points_match_list':
            _stuAnswerScoreKeyPointsMatchList,
        'stu_answer_ai_suspicious': _stuAnswerAiSuspicious,
        'stu_answer_ai_suspicious_reason': _stuAnswerAiSuspiciousReason,
        'stu_answer_plagiarism_suspicious': _stuAnswerPlagiarismSuspicious,
        'stu_answer_plagiarism_suspicious_reason':
            _stuAnswerPlagiarismSuspiciousReason,
        'stu_characteristics': _stuCharacteristics,
        'stu_id': _stuId,
        'ai_status': _aiStatus,
        'stu_score_level': _stuScoreLevel,
        'teacher_score': _teacherScore,
        'ai_score': _aiScore,
        'teacher_score_rank': _teacherScoreRank,
        'answer_time': _answerTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'stu_name': serializeParam(
          _stuName,
          ParamType.String,
        ),
        'stu_answer': serializeParam(
          _stuAnswer,
          ParamType.String,
        ),
        'teacher_score_reason': serializeParam(
          _teacherScoreReason,
          ParamType.String,
        ),
        'ai_score_reason': serializeParam(
          _aiScoreReason,
          ParamType.String,
        ),
        'ai_score_tags': serializeParam(
          _aiScoreTags,
          ParamType.String,
          isList: true,
        ),
        'hit_view_count': serializeParam(
          _hitViewCount,
          ParamType.int,
        ),
        'hit_view_list': serializeParam(
          _hitViewList,
          ParamType.String,
          isList: true,
        ),
        'stu_answer_score_key_points_match_list': serializeParam(
          _stuAnswerScoreKeyPointsMatchList,
          ParamType.double,
          isList: true,
        ),
        'stu_answer_ai_suspicious': serializeParam(
          _stuAnswerAiSuspicious,
          ParamType.double,
        ),
        'stu_answer_ai_suspicious_reason': serializeParam(
          _stuAnswerAiSuspiciousReason,
          ParamType.String,
        ),
        'stu_answer_plagiarism_suspicious': serializeParam(
          _stuAnswerPlagiarismSuspicious,
          ParamType.int,
        ),
        'stu_answer_plagiarism_suspicious_reason': serializeParam(
          _stuAnswerPlagiarismSuspiciousReason,
          ParamType.String,
        ),
        'stu_characteristics': serializeParam(
          _stuCharacteristics,
          ParamType.String,
        ),
        'stu_id': serializeParam(
          _stuId,
          ParamType.int,
        ),
        'ai_status': serializeParam(
          _aiStatus,
          ParamType.bool,
        ),
        'stu_score_level': serializeParam(
          _stuScoreLevel,
          ParamType.String,
        ),
        'teacher_score': serializeParam(
          _teacherScore,
          ParamType.double,
        ),
        'ai_score': serializeParam(
          _aiScore,
          ParamType.double,
        ),
        'teacher_score_rank': serializeParam(
          _teacherScoreRank,
          ParamType.int,
        ),
        'answer_time': serializeParam(
          _answerTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static StuAnswerList2Struct fromSerializableMap(Map<String, dynamic> data) =>
      StuAnswerList2Struct(
        stuName: deserializeParam(
          data['stu_name'],
          ParamType.String,
          false,
        ),
        stuAnswer: deserializeParam(
          data['stu_answer'],
          ParamType.String,
          false,
        ),
        teacherScoreReason: deserializeParam(
          data['teacher_score_reason'],
          ParamType.String,
          false,
        ),
        aiScoreReason: deserializeParam(
          data['ai_score_reason'],
          ParamType.String,
          false,
        ),
        aiScoreTags: deserializeParam<String>(
          data['ai_score_tags'],
          ParamType.String,
          true,
        ),
        hitViewCount: deserializeParam(
          data['hit_view_count'],
          ParamType.int,
          false,
        ),
        hitViewList: deserializeParam<String>(
          data['hit_view_list'],
          ParamType.String,
          true,
        ),
        stuAnswerScoreKeyPointsMatchList: deserializeParam<double>(
          data['stu_answer_score_key_points_match_list'],
          ParamType.double,
          true,
        ),
        stuAnswerAiSuspicious: deserializeParam(
          data['stu_answer_ai_suspicious'],
          ParamType.double,
          false,
        ),
        stuAnswerAiSuspiciousReason: deserializeParam(
          data['stu_answer_ai_suspicious_reason'],
          ParamType.String,
          false,
        ),
        stuAnswerPlagiarismSuspicious: deserializeParam(
          data['stu_answer_plagiarism_suspicious'],
          ParamType.int,
          false,
        ),
        stuAnswerPlagiarismSuspiciousReason: deserializeParam(
          data['stu_answer_plagiarism_suspicious_reason'],
          ParamType.String,
          false,
        ),
        stuCharacteristics: deserializeParam(
          data['stu_characteristics'],
          ParamType.String,
          false,
        ),
        stuId: deserializeParam(
          data['stu_id'],
          ParamType.int,
          false,
        ),
        aiStatus: deserializeParam(
          data['ai_status'],
          ParamType.bool,
          false,
        ),
        stuScoreLevel: deserializeParam(
          data['stu_score_level'],
          ParamType.String,
          false,
        ),
        teacherScore: deserializeParam(
          data['teacher_score'],
          ParamType.double,
          false,
        ),
        aiScore: deserializeParam(
          data['ai_score'],
          ParamType.double,
          false,
        ),
        teacherScoreRank: deserializeParam(
          data['teacher_score_rank'],
          ParamType.int,
          false,
        ),
        answerTime: deserializeParam(
          data['answer_time'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StuAnswerList2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is StuAnswerList2Struct &&
        stuName == other.stuName &&
        stuAnswer == other.stuAnswer &&
        teacherScoreReason == other.teacherScoreReason &&
        aiScoreReason == other.aiScoreReason &&
        listEquality.equals(aiScoreTags, other.aiScoreTags) &&
        hitViewCount == other.hitViewCount &&
        listEquality.equals(hitViewList, other.hitViewList) &&
        listEquality.equals(stuAnswerScoreKeyPointsMatchList,
            other.stuAnswerScoreKeyPointsMatchList) &&
        stuAnswerAiSuspicious == other.stuAnswerAiSuspicious &&
        stuAnswerAiSuspiciousReason == other.stuAnswerAiSuspiciousReason &&
        stuAnswerPlagiarismSuspicious == other.stuAnswerPlagiarismSuspicious &&
        stuAnswerPlagiarismSuspiciousReason ==
            other.stuAnswerPlagiarismSuspiciousReason &&
        stuCharacteristics == other.stuCharacteristics &&
        stuId == other.stuId &&
        aiStatus == other.aiStatus &&
        stuScoreLevel == other.stuScoreLevel &&
        teacherScore == other.teacherScore &&
        aiScore == other.aiScore &&
        teacherScoreRank == other.teacherScoreRank &&
        answerTime == other.answerTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        stuName,
        stuAnswer,
        teacherScoreReason,
        aiScoreReason,
        aiScoreTags,
        hitViewCount,
        hitViewList,
        stuAnswerScoreKeyPointsMatchList,
        stuAnswerAiSuspicious,
        stuAnswerAiSuspiciousReason,
        stuAnswerPlagiarismSuspicious,
        stuAnswerPlagiarismSuspiciousReason,
        stuCharacteristics,
        stuId,
        aiStatus,
        stuScoreLevel,
        teacherScore,
        aiScore,
        teacherScoreRank,
        answerTime
      ]);
}

StuAnswerList2Struct createStuAnswerList2Struct({
  String? stuName,
  String? stuAnswer,
  String? teacherScoreReason,
  String? aiScoreReason,
  int? hitViewCount,
  double? stuAnswerAiSuspicious,
  String? stuAnswerAiSuspiciousReason,
  int? stuAnswerPlagiarismSuspicious,
  String? stuAnswerPlagiarismSuspiciousReason,
  String? stuCharacteristics,
  int? stuId,
  bool? aiStatus,
  String? stuScoreLevel,
  double? teacherScore,
  double? aiScore,
  int? teacherScoreRank,
  String? answerTime,
}) =>
    StuAnswerList2Struct(
      stuName: stuName,
      stuAnswer: stuAnswer,
      teacherScoreReason: teacherScoreReason,
      aiScoreReason: aiScoreReason,
      hitViewCount: hitViewCount,
      stuAnswerAiSuspicious: stuAnswerAiSuspicious,
      stuAnswerAiSuspiciousReason: stuAnswerAiSuspiciousReason,
      stuAnswerPlagiarismSuspicious: stuAnswerPlagiarismSuspicious,
      stuAnswerPlagiarismSuspiciousReason: stuAnswerPlagiarismSuspiciousReason,
      stuCharacteristics: stuCharacteristics,
      stuId: stuId,
      aiStatus: aiStatus,
      stuScoreLevel: stuScoreLevel,
      teacherScore: teacherScore,
      aiScore: aiScore,
      teacherScoreRank: teacherScoreRank,
      answerTime: answerTime,
    );
