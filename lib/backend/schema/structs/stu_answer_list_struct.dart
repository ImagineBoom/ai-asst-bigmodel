// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StuAnswerListStruct extends BaseStruct {
  StuAnswerListStruct({
    String? aiScoreReason,
    List<String>? aiScoreTags,
    bool? aiStatus,
    String? answerTime,
    int? hitViewCount,
    List<String>? hitViewList,
    String? stuAnswer,
    String? stuAnswerAiSuspiciousReason,
    String? stuAnswerPlagiarismSuspiciousReason,
    List<int>? stuAnswerScoreKeyPointsMatchList,
    String? stuCharacteristics,
    int? stuId,
    String? stuName,
    String? stuScoreLevel,
    int? teacherScoreRank,
    String? teacherScoreReason,
    double? aiScore,
    double? teacherScore,
    double? stuAnswerPlagiarismSuspicious,
    double? stuAnswerAiSuspicious,
    String? stuViewClarify,
  })  : _aiScoreReason = aiScoreReason,
        _aiScoreTags = aiScoreTags,
        _aiStatus = aiStatus,
        _answerTime = answerTime,
        _hitViewCount = hitViewCount,
        _hitViewList = hitViewList,
        _stuAnswer = stuAnswer,
        _stuAnswerAiSuspiciousReason = stuAnswerAiSuspiciousReason,
        _stuAnswerPlagiarismSuspiciousReason =
            stuAnswerPlagiarismSuspiciousReason,
        _stuAnswerScoreKeyPointsMatchList = stuAnswerScoreKeyPointsMatchList,
        _stuCharacteristics = stuCharacteristics,
        _stuId = stuId,
        _stuName = stuName,
        _stuScoreLevel = stuScoreLevel,
        _teacherScoreRank = teacherScoreRank,
        _teacherScoreReason = teacherScoreReason,
        _aiScore = aiScore,
        _teacherScore = teacherScore,
        _stuAnswerPlagiarismSuspicious = stuAnswerPlagiarismSuspicious,
        _stuAnswerAiSuspicious = stuAnswerAiSuspicious,
        _stuViewClarify = stuViewClarify;

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

  // "ai_status" field.
  bool? _aiStatus;
  bool get aiStatus => _aiStatus ?? false;
  set aiStatus(bool? val) => _aiStatus = val;

  bool hasAiStatus() => _aiStatus != null;

  // "answer_time" field.
  String? _answerTime;
  String get answerTime => _answerTime ?? '';
  set answerTime(String? val) => _answerTime = val;

  bool hasAnswerTime() => _answerTime != null;

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

  // "stu_answer" field.
  String? _stuAnswer;
  String get stuAnswer => _stuAnswer ?? '';
  set stuAnswer(String? val) => _stuAnswer = val;

  bool hasStuAnswer() => _stuAnswer != null;

  // "stu_answer_ai_suspicious_reason" field.
  String? _stuAnswerAiSuspiciousReason;
  String get stuAnswerAiSuspiciousReason => _stuAnswerAiSuspiciousReason ?? '';
  set stuAnswerAiSuspiciousReason(String? val) =>
      _stuAnswerAiSuspiciousReason = val;

  bool hasStuAnswerAiSuspiciousReason() => _stuAnswerAiSuspiciousReason != null;

  // "stu_answer_plagiarism_suspicious_reason" field.
  String? _stuAnswerPlagiarismSuspiciousReason;
  String get stuAnswerPlagiarismSuspiciousReason =>
      _stuAnswerPlagiarismSuspiciousReason ?? '';
  set stuAnswerPlagiarismSuspiciousReason(String? val) =>
      _stuAnswerPlagiarismSuspiciousReason = val;

  bool hasStuAnswerPlagiarismSuspiciousReason() =>
      _stuAnswerPlagiarismSuspiciousReason != null;

  // "stu_answer_score_key_points_match_list" field.
  List<int>? _stuAnswerScoreKeyPointsMatchList;
  List<int> get stuAnswerScoreKeyPointsMatchList =>
      _stuAnswerScoreKeyPointsMatchList ?? const [];
  set stuAnswerScoreKeyPointsMatchList(List<int>? val) =>
      _stuAnswerScoreKeyPointsMatchList = val;

  void updateStuAnswerScoreKeyPointsMatchList(Function(List<int>) updateFn) {
    updateFn(_stuAnswerScoreKeyPointsMatchList ??= []);
  }

  bool hasStuAnswerScoreKeyPointsMatchList() =>
      _stuAnswerScoreKeyPointsMatchList != null;

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

  // "stu_name" field.
  String? _stuName;
  String get stuName => _stuName ?? '';
  set stuName(String? val) => _stuName = val;

  bool hasStuName() => _stuName != null;

  // "stu_score_level" field.
  String? _stuScoreLevel;
  String get stuScoreLevel => _stuScoreLevel ?? '';
  set stuScoreLevel(String? val) => _stuScoreLevel = val;

  bool hasStuScoreLevel() => _stuScoreLevel != null;

  // "teacher_score_rank" field.
  int? _teacherScoreRank;
  int get teacherScoreRank => _teacherScoreRank ?? 0;
  set teacherScoreRank(int? val) => _teacherScoreRank = val;

  void incrementTeacherScoreRank(int amount) =>
      teacherScoreRank = teacherScoreRank + amount;

  bool hasTeacherScoreRank() => _teacherScoreRank != null;

  // "teacher_score_reason" field.
  String? _teacherScoreReason;
  String get teacherScoreReason => _teacherScoreReason ?? '';
  set teacherScoreReason(String? val) => _teacherScoreReason = val;

  bool hasTeacherScoreReason() => _teacherScoreReason != null;

  // "ai_score" field.
  double? _aiScore;
  double get aiScore => _aiScore ?? 0.0;
  set aiScore(double? val) => _aiScore = val;

  void incrementAiScore(double amount) => aiScore = aiScore + amount;

  bool hasAiScore() => _aiScore != null;

  // "teacher_score" field.
  double? _teacherScore;
  double get teacherScore => _teacherScore ?? 0.0;
  set teacherScore(double? val) => _teacherScore = val;

  void incrementTeacherScore(double amount) =>
      teacherScore = teacherScore + amount;

  bool hasTeacherScore() => _teacherScore != null;

  // "stu_answer_plagiarism_suspicious" field.
  double? _stuAnswerPlagiarismSuspicious;
  double get stuAnswerPlagiarismSuspicious =>
      _stuAnswerPlagiarismSuspicious ?? 0.0;
  set stuAnswerPlagiarismSuspicious(double? val) =>
      _stuAnswerPlagiarismSuspicious = val;

  void incrementStuAnswerPlagiarismSuspicious(double amount) =>
      stuAnswerPlagiarismSuspicious = stuAnswerPlagiarismSuspicious + amount;

  bool hasStuAnswerPlagiarismSuspicious() =>
      _stuAnswerPlagiarismSuspicious != null;

  // "stu_answer_ai_suspicious" field.
  double? _stuAnswerAiSuspicious;
  double get stuAnswerAiSuspicious => _stuAnswerAiSuspicious ?? 0.0;
  set stuAnswerAiSuspicious(double? val) => _stuAnswerAiSuspicious = val;

  void incrementStuAnswerAiSuspicious(double amount) =>
      stuAnswerAiSuspicious = stuAnswerAiSuspicious + amount;

  bool hasStuAnswerAiSuspicious() => _stuAnswerAiSuspicious != null;

  // "stu_view_clarify" field.
  String? _stuViewClarify;
  String get stuViewClarify => _stuViewClarify ?? '';
  set stuViewClarify(String? val) => _stuViewClarify = val;

  bool hasStuViewClarify() => _stuViewClarify != null;

  static StuAnswerListStruct fromMap(Map<String, dynamic> data) =>
      StuAnswerListStruct(
        aiScoreReason: data['ai_score_reason'] as String?,
        aiScoreTags: getDataList(data['ai_score_tags']),
        aiStatus: data['ai_status'] as bool?,
        answerTime: data['answer_time'] as String?,
        hitViewCount: castToType<int>(data['hit_view_count']),
        hitViewList: getDataList(data['hit_view_list']),
        stuAnswer: data['stu_answer'] as String?,
        stuAnswerAiSuspiciousReason:
            data['stu_answer_ai_suspicious_reason'] as String?,
        stuAnswerPlagiarismSuspiciousReason:
            data['stu_answer_plagiarism_suspicious_reason'] as String?,
        stuAnswerScoreKeyPointsMatchList:
            getDataList(data['stu_answer_score_key_points_match_list']),
        stuCharacteristics: data['stu_characteristics'] as String?,
        stuId: castToType<int>(data['stu_id']),
        stuName: data['stu_name'] as String?,
        stuScoreLevel: data['stu_score_level'] as String?,
        teacherScoreRank: castToType<int>(data['teacher_score_rank']),
        teacherScoreReason: data['teacher_score_reason'] as String?,
        aiScore: castToType<double>(data['ai_score']),
        teacherScore: castToType<double>(data['teacher_score']),
        stuAnswerPlagiarismSuspicious:
            castToType<double>(data['stu_answer_plagiarism_suspicious']),
        stuAnswerAiSuspicious:
            castToType<double>(data['stu_answer_ai_suspicious']),
        stuViewClarify: data['stu_view_clarify'] as String?,
      );

  static StuAnswerListStruct? maybeFromMap(dynamic data) => data is Map
      ? StuAnswerListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ai_score_reason': _aiScoreReason,
        'ai_score_tags': _aiScoreTags,
        'ai_status': _aiStatus,
        'answer_time': _answerTime,
        'hit_view_count': _hitViewCount,
        'hit_view_list': _hitViewList,
        'stu_answer': _stuAnswer,
        'stu_answer_ai_suspicious_reason': _stuAnswerAiSuspiciousReason,
        'stu_answer_plagiarism_suspicious_reason':
            _stuAnswerPlagiarismSuspiciousReason,
        'stu_answer_score_key_points_match_list':
            _stuAnswerScoreKeyPointsMatchList,
        'stu_characteristics': _stuCharacteristics,
        'stu_id': _stuId,
        'stu_name': _stuName,
        'stu_score_level': _stuScoreLevel,
        'teacher_score_rank': _teacherScoreRank,
        'teacher_score_reason': _teacherScoreReason,
        'ai_score': _aiScore,
        'teacher_score': _teacherScore,
        'stu_answer_plagiarism_suspicious': _stuAnswerPlagiarismSuspicious,
        'stu_answer_ai_suspicious': _stuAnswerAiSuspicious,
        'stu_view_clarify': _stuViewClarify,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ai_score_reason': serializeParam(
          _aiScoreReason,
          ParamType.String,
        ),
        'ai_score_tags': serializeParam(
          _aiScoreTags,
          ParamType.String,
          isList: true,
        ),
        'ai_status': serializeParam(
          _aiStatus,
          ParamType.bool,
        ),
        'answer_time': serializeParam(
          _answerTime,
          ParamType.String,
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
        'stu_answer': serializeParam(
          _stuAnswer,
          ParamType.String,
        ),
        'stu_answer_ai_suspicious_reason': serializeParam(
          _stuAnswerAiSuspiciousReason,
          ParamType.String,
        ),
        'stu_answer_plagiarism_suspicious_reason': serializeParam(
          _stuAnswerPlagiarismSuspiciousReason,
          ParamType.String,
        ),
        'stu_answer_score_key_points_match_list': serializeParam(
          _stuAnswerScoreKeyPointsMatchList,
          ParamType.int,
          isList: true,
        ),
        'stu_characteristics': serializeParam(
          _stuCharacteristics,
          ParamType.String,
        ),
        'stu_id': serializeParam(
          _stuId,
          ParamType.int,
        ),
        'stu_name': serializeParam(
          _stuName,
          ParamType.String,
        ),
        'stu_score_level': serializeParam(
          _stuScoreLevel,
          ParamType.String,
        ),
        'teacher_score_rank': serializeParam(
          _teacherScoreRank,
          ParamType.int,
        ),
        'teacher_score_reason': serializeParam(
          _teacherScoreReason,
          ParamType.String,
        ),
        'ai_score': serializeParam(
          _aiScore,
          ParamType.double,
        ),
        'teacher_score': serializeParam(
          _teacherScore,
          ParamType.double,
        ),
        'stu_answer_plagiarism_suspicious': serializeParam(
          _stuAnswerPlagiarismSuspicious,
          ParamType.double,
        ),
        'stu_answer_ai_suspicious': serializeParam(
          _stuAnswerAiSuspicious,
          ParamType.double,
        ),
        'stu_view_clarify': serializeParam(
          _stuViewClarify,
          ParamType.String,
        ),
      }.withoutNulls;

  static StuAnswerListStruct fromSerializableMap(Map<String, dynamic> data) =>
      StuAnswerListStruct(
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
        aiStatus: deserializeParam(
          data['ai_status'],
          ParamType.bool,
          false,
        ),
        answerTime: deserializeParam(
          data['answer_time'],
          ParamType.String,
          false,
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
        stuAnswer: deserializeParam(
          data['stu_answer'],
          ParamType.String,
          false,
        ),
        stuAnswerAiSuspiciousReason: deserializeParam(
          data['stu_answer_ai_suspicious_reason'],
          ParamType.String,
          false,
        ),
        stuAnswerPlagiarismSuspiciousReason: deserializeParam(
          data['stu_answer_plagiarism_suspicious_reason'],
          ParamType.String,
          false,
        ),
        stuAnswerScoreKeyPointsMatchList: deserializeParam<int>(
          data['stu_answer_score_key_points_match_list'],
          ParamType.int,
          true,
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
        stuName: deserializeParam(
          data['stu_name'],
          ParamType.String,
          false,
        ),
        stuScoreLevel: deserializeParam(
          data['stu_score_level'],
          ParamType.String,
          false,
        ),
        teacherScoreRank: deserializeParam(
          data['teacher_score_rank'],
          ParamType.int,
          false,
        ),
        teacherScoreReason: deserializeParam(
          data['teacher_score_reason'],
          ParamType.String,
          false,
        ),
        aiScore: deserializeParam(
          data['ai_score'],
          ParamType.double,
          false,
        ),
        teacherScore: deserializeParam(
          data['teacher_score'],
          ParamType.double,
          false,
        ),
        stuAnswerPlagiarismSuspicious: deserializeParam(
          data['stu_answer_plagiarism_suspicious'],
          ParamType.double,
          false,
        ),
        stuAnswerAiSuspicious: deserializeParam(
          data['stu_answer_ai_suspicious'],
          ParamType.double,
          false,
        ),
        stuViewClarify: deserializeParam(
          data['stu_view_clarify'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StuAnswerListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is StuAnswerListStruct &&
        aiScoreReason == other.aiScoreReason &&
        listEquality.equals(aiScoreTags, other.aiScoreTags) &&
        aiStatus == other.aiStatus &&
        answerTime == other.answerTime &&
        hitViewCount == other.hitViewCount &&
        listEquality.equals(hitViewList, other.hitViewList) &&
        stuAnswer == other.stuAnswer &&
        stuAnswerAiSuspiciousReason == other.stuAnswerAiSuspiciousReason &&
        stuAnswerPlagiarismSuspiciousReason ==
            other.stuAnswerPlagiarismSuspiciousReason &&
        listEquality.equals(stuAnswerScoreKeyPointsMatchList,
            other.stuAnswerScoreKeyPointsMatchList) &&
        stuCharacteristics == other.stuCharacteristics &&
        stuId == other.stuId &&
        stuName == other.stuName &&
        stuScoreLevel == other.stuScoreLevel &&
        teacherScoreRank == other.teacherScoreRank &&
        teacherScoreReason == other.teacherScoreReason &&
        aiScore == other.aiScore &&
        teacherScore == other.teacherScore &&
        stuAnswerPlagiarismSuspicious == other.stuAnswerPlagiarismSuspicious &&
        stuAnswerAiSuspicious == other.stuAnswerAiSuspicious &&
        stuViewClarify == other.stuViewClarify;
  }

  @override
  int get hashCode => const ListEquality().hash([
        aiScoreReason,
        aiScoreTags,
        aiStatus,
        answerTime,
        hitViewCount,
        hitViewList,
        stuAnswer,
        stuAnswerAiSuspiciousReason,
        stuAnswerPlagiarismSuspiciousReason,
        stuAnswerScoreKeyPointsMatchList,
        stuCharacteristics,
        stuId,
        stuName,
        stuScoreLevel,
        teacherScoreRank,
        teacherScoreReason,
        aiScore,
        teacherScore,
        stuAnswerPlagiarismSuspicious,
        stuAnswerAiSuspicious,
        stuViewClarify
      ]);
}

StuAnswerListStruct createStuAnswerListStruct({
  String? aiScoreReason,
  bool? aiStatus,
  String? answerTime,
  int? hitViewCount,
  String? stuAnswer,
  String? stuAnswerAiSuspiciousReason,
  String? stuAnswerPlagiarismSuspiciousReason,
  String? stuCharacteristics,
  int? stuId,
  String? stuName,
  String? stuScoreLevel,
  int? teacherScoreRank,
  String? teacherScoreReason,
  double? aiScore,
  double? teacherScore,
  double? stuAnswerPlagiarismSuspicious,
  double? stuAnswerAiSuspicious,
  String? stuViewClarify,
}) =>
    StuAnswerListStruct(
      aiScoreReason: aiScoreReason,
      aiStatus: aiStatus,
      answerTime: answerTime,
      hitViewCount: hitViewCount,
      stuAnswer: stuAnswer,
      stuAnswerAiSuspiciousReason: stuAnswerAiSuspiciousReason,
      stuAnswerPlagiarismSuspiciousReason: stuAnswerPlagiarismSuspiciousReason,
      stuCharacteristics: stuCharacteristics,
      stuId: stuId,
      stuName: stuName,
      stuScoreLevel: stuScoreLevel,
      teacherScoreRank: teacherScoreRank,
      teacherScoreReason: teacherScoreReason,
      aiScore: aiScore,
      teacherScore: teacherScore,
      stuAnswerPlagiarismSuspicious: stuAnswerPlagiarismSuspicious,
      stuAnswerAiSuspicious: stuAnswerAiSuspicious,
      stuViewClarify: stuViewClarify,
    );
