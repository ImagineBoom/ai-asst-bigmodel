// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExamInfoStruct extends BaseStruct {
  ExamInfoStruct({
    int? rank,
    String? stuNum,
    String? stuName,
    String? sex,
    String? politicFace,
    double? score,
    int? hitPoints,
    String? iphone,
    String? op,
    List<String>? aiTag,
    String? examName,
    List<QuestionInfoStruct>? questionList,
    String? examTotalScore,
    String? examQuestionNums,
  })  : _rank = rank,
        _stuNum = stuNum,
        _stuName = stuName,
        _sex = sex,
        _politicFace = politicFace,
        _score = score,
        _hitPoints = hitPoints,
        _iphone = iphone,
        _op = op,
        _aiTag = aiTag,
        _examName = examName,
        _questionList = questionList,
        _examTotalScore = examTotalScore,
        _examQuestionNums = examQuestionNums;

  // "rank" field.
  int? _rank;
  int get rank => _rank ?? 0;
  set rank(int? val) => _rank = val;

  void incrementRank(int amount) => rank = rank + amount;

  bool hasRank() => _rank != null;

  // "stu_num" field.
  String? _stuNum;
  String get stuNum => _stuNum ?? '';
  set stuNum(String? val) => _stuNum = val;

  bool hasStuNum() => _stuNum != null;

  // "stu_name" field.
  String? _stuName;
  String get stuName => _stuName ?? '';
  set stuName(String? val) => _stuName = val;

  bool hasStuName() => _stuName != null;

  // "sex" field.
  String? _sex;
  String get sex => _sex ?? '';
  set sex(String? val) => _sex = val;

  bool hasSex() => _sex != null;

  // "politic_face" field.
  String? _politicFace;
  String get politicFace => _politicFace ?? '';
  set politicFace(String? val) => _politicFace = val;

  bool hasPoliticFace() => _politicFace != null;

  // "score" field.
  double? _score;
  double get score => _score ?? 0.0;
  set score(double? val) => _score = val;

  void incrementScore(double amount) => score = score + amount;

  bool hasScore() => _score != null;

  // "hit_points" field.
  int? _hitPoints;
  int get hitPoints => _hitPoints ?? 0;
  set hitPoints(int? val) => _hitPoints = val;

  void incrementHitPoints(int amount) => hitPoints = hitPoints + amount;

  bool hasHitPoints() => _hitPoints != null;

  // "iphone" field.
  String? _iphone;
  String get iphone => _iphone ?? '';
  set iphone(String? val) => _iphone = val;

  bool hasIphone() => _iphone != null;

  // "op" field.
  String? _op;
  String get op => _op ?? '';
  set op(String? val) => _op = val;

  bool hasOp() => _op != null;

  // "ai_tag" field.
  List<String>? _aiTag;
  List<String> get aiTag => _aiTag ?? const [];
  set aiTag(List<String>? val) => _aiTag = val;

  void updateAiTag(Function(List<String>) updateFn) {
    updateFn(_aiTag ??= []);
  }

  bool hasAiTag() => _aiTag != null;

  // "exam_name" field.
  String? _examName;
  String get examName => _examName ?? '';
  set examName(String? val) => _examName = val;

  bool hasExamName() => _examName != null;

  // "question_list" field.
  List<QuestionInfoStruct>? _questionList;
  List<QuestionInfoStruct> get questionList => _questionList ?? const [];
  set questionList(List<QuestionInfoStruct>? val) => _questionList = val;

  void updateQuestionList(Function(List<QuestionInfoStruct>) updateFn) {
    updateFn(_questionList ??= []);
  }

  bool hasQuestionList() => _questionList != null;

  // "exam_total_score" field.
  String? _examTotalScore;
  String get examTotalScore => _examTotalScore ?? '';
  set examTotalScore(String? val) => _examTotalScore = val;

  bool hasExamTotalScore() => _examTotalScore != null;

  // "exam_question_nums" field.
  String? _examQuestionNums;
  String get examQuestionNums => _examQuestionNums ?? '';
  set examQuestionNums(String? val) => _examQuestionNums = val;

  bool hasExamQuestionNums() => _examQuestionNums != null;

  static ExamInfoStruct fromMap(Map<String, dynamic> data) => ExamInfoStruct(
        rank: castToType<int>(data['rank']),
        stuNum: data['stu_num'] as String?,
        stuName: data['stu_name'] as String?,
        sex: data['sex'] as String?,
        politicFace: data['politic_face'] as String?,
        score: castToType<double>(data['score']),
        hitPoints: castToType<int>(data['hit_points']),
        iphone: data['iphone'] as String?,
        op: data['op'] as String?,
        aiTag: getDataList(data['ai_tag']),
        examName: data['exam_name'] as String?,
        questionList: getStructList(
          data['question_list'],
          QuestionInfoStruct.fromMap,
        ),
        examTotalScore: data['exam_total_score'] as String?,
        examQuestionNums: data['exam_question_nums'] as String?,
      );

  static ExamInfoStruct? maybeFromMap(dynamic data) =>
      data is Map ? ExamInfoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'rank': _rank,
        'stu_num': _stuNum,
        'stu_name': _stuName,
        'sex': _sex,
        'politic_face': _politicFace,
        'score': _score,
        'hit_points': _hitPoints,
        'iphone': _iphone,
        'op': _op,
        'ai_tag': _aiTag,
        'exam_name': _examName,
        'question_list': _questionList?.map((e) => e.toMap()).toList(),
        'exam_total_score': _examTotalScore,
        'exam_question_nums': _examQuestionNums,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'rank': serializeParam(
          _rank,
          ParamType.int,
        ),
        'stu_num': serializeParam(
          _stuNum,
          ParamType.String,
        ),
        'stu_name': serializeParam(
          _stuName,
          ParamType.String,
        ),
        'sex': serializeParam(
          _sex,
          ParamType.String,
        ),
        'politic_face': serializeParam(
          _politicFace,
          ParamType.String,
        ),
        'score': serializeParam(
          _score,
          ParamType.double,
        ),
        'hit_points': serializeParam(
          _hitPoints,
          ParamType.int,
        ),
        'iphone': serializeParam(
          _iphone,
          ParamType.String,
        ),
        'op': serializeParam(
          _op,
          ParamType.String,
        ),
        'ai_tag': serializeParam(
          _aiTag,
          ParamType.String,
          isList: true,
        ),
        'exam_name': serializeParam(
          _examName,
          ParamType.String,
        ),
        'question_list': serializeParam(
          _questionList,
          ParamType.DataStruct,
          isList: true,
        ),
        'exam_total_score': serializeParam(
          _examTotalScore,
          ParamType.String,
        ),
        'exam_question_nums': serializeParam(
          _examQuestionNums,
          ParamType.String,
        ),
      }.withoutNulls;

  static ExamInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExamInfoStruct(
        rank: deserializeParam(
          data['rank'],
          ParamType.int,
          false,
        ),
        stuNum: deserializeParam(
          data['stu_num'],
          ParamType.String,
          false,
        ),
        stuName: deserializeParam(
          data['stu_name'],
          ParamType.String,
          false,
        ),
        sex: deserializeParam(
          data['sex'],
          ParamType.String,
          false,
        ),
        politicFace: deserializeParam(
          data['politic_face'],
          ParamType.String,
          false,
        ),
        score: deserializeParam(
          data['score'],
          ParamType.double,
          false,
        ),
        hitPoints: deserializeParam(
          data['hit_points'],
          ParamType.int,
          false,
        ),
        iphone: deserializeParam(
          data['iphone'],
          ParamType.String,
          false,
        ),
        op: deserializeParam(
          data['op'],
          ParamType.String,
          false,
        ),
        aiTag: deserializeParam<String>(
          data['ai_tag'],
          ParamType.String,
          true,
        ),
        examName: deserializeParam(
          data['exam_name'],
          ParamType.String,
          false,
        ),
        questionList: deserializeStructParam<QuestionInfoStruct>(
          data['question_list'],
          ParamType.DataStruct,
          true,
          structBuilder: QuestionInfoStruct.fromSerializableMap,
        ),
        examTotalScore: deserializeParam(
          data['exam_total_score'],
          ParamType.String,
          false,
        ),
        examQuestionNums: deserializeParam(
          data['exam_question_nums'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ExamInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ExamInfoStruct &&
        rank == other.rank &&
        stuNum == other.stuNum &&
        stuName == other.stuName &&
        sex == other.sex &&
        politicFace == other.politicFace &&
        score == other.score &&
        hitPoints == other.hitPoints &&
        iphone == other.iphone &&
        op == other.op &&
        listEquality.equals(aiTag, other.aiTag) &&
        examName == other.examName &&
        listEquality.equals(questionList, other.questionList) &&
        examTotalScore == other.examTotalScore &&
        examQuestionNums == other.examQuestionNums;
  }

  @override
  int get hashCode => const ListEquality().hash([
        rank,
        stuNum,
        stuName,
        sex,
        politicFace,
        score,
        hitPoints,
        iphone,
        op,
        aiTag,
        examName,
        questionList,
        examTotalScore,
        examQuestionNums
      ]);
}

ExamInfoStruct createExamInfoStruct({
  int? rank,
  String? stuNum,
  String? stuName,
  String? sex,
  String? politicFace,
  double? score,
  int? hitPoints,
  String? iphone,
  String? op,
  String? examName,
  String? examTotalScore,
  String? examQuestionNums,
}) =>
    ExamInfoStruct(
      rank: rank,
      stuNum: stuNum,
      stuName: stuName,
      sex: sex,
      politicFace: politicFace,
      score: score,
      hitPoints: hitPoints,
      iphone: iphone,
      op: op,
      examName: examName,
      examTotalScore: examTotalScore,
      examQuestionNums: examQuestionNums,
    );
