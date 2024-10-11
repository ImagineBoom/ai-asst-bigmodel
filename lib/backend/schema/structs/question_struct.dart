// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionStruct extends BaseStruct {
  QuestionStruct({
    String? teacherName,
    String? examId,
    String? examName,
    String? examTime,
    String? examSubject,
    String? questionContent,
    String? aiPrompt,
    String? standardAnswer,
    String? aiAnswer,
    List<String>? scoreKeyPoints,
    String? questionDifficulty,
    List<ExamDimensionStruct>? examDimensionList,
    List<StuAnswerList2Struct>? stuAnswerList,
    List<int>? scoreLevelCount,
    List<String>? aiTagList,
    List<int>? aiTagCount,
    List<String>? mainWordList,
    List<int>? mainWordDistributionCount,
    List<int>? scoreKeyHitPointsCount,
    List<int>? scoreKeyMissPointsCount,
    List<String>? scoreLevelLabels,
    List<int>? scoreKeyPointsNum,
  })  : _teacherName = teacherName,
        _examId = examId,
        _examName = examName,
        _examTime = examTime,
        _examSubject = examSubject,
        _questionContent = questionContent,
        _aiPrompt = aiPrompt,
        _standardAnswer = standardAnswer,
        _aiAnswer = aiAnswer,
        _scoreKeyPoints = scoreKeyPoints,
        _questionDifficulty = questionDifficulty,
        _examDimensionList = examDimensionList,
        _stuAnswerList = stuAnswerList,
        _scoreLevelCount = scoreLevelCount,
        _aiTagList = aiTagList,
        _aiTagCount = aiTagCount,
        _mainWordList = mainWordList,
        _mainWordDistributionCount = mainWordDistributionCount,
        _scoreKeyHitPointsCount = scoreKeyHitPointsCount,
        _scoreKeyMissPointsCount = scoreKeyMissPointsCount,
        _scoreLevelLabels = scoreLevelLabels,
        _scoreKeyPointsNum = scoreKeyPointsNum;

  // "teacher_name" field.
  String? _teacherName;
  String get teacherName => _teacherName ?? '';
  set teacherName(String? val) => _teacherName = val;

  bool hasTeacherName() => _teacherName != null;

  // "exam_id" field.
  String? _examId;
  String get examId => _examId ?? '';
  set examId(String? val) => _examId = val;

  bool hasExamId() => _examId != null;

  // "exam_name" field.
  String? _examName;
  String get examName => _examName ?? '';
  set examName(String? val) => _examName = val;

  bool hasExamName() => _examName != null;

  // "exam_time" field.
  String? _examTime;
  String get examTime => _examTime ?? '';
  set examTime(String? val) => _examTime = val;

  bool hasExamTime() => _examTime != null;

  // "exam_subject" field.
  String? _examSubject;
  String get examSubject => _examSubject ?? '';
  set examSubject(String? val) => _examSubject = val;

  bool hasExamSubject() => _examSubject != null;

  // "question_content" field.
  String? _questionContent;
  String get questionContent => _questionContent ?? '';
  set questionContent(String? val) => _questionContent = val;

  bool hasQuestionContent() => _questionContent != null;

  // "ai_prompt" field.
  String? _aiPrompt;
  String get aiPrompt => _aiPrompt ?? '';
  set aiPrompt(String? val) => _aiPrompt = val;

  bool hasAiPrompt() => _aiPrompt != null;

  // "standard_answer" field.
  String? _standardAnswer;
  String get standardAnswer => _standardAnswer ?? '';
  set standardAnswer(String? val) => _standardAnswer = val;

  bool hasStandardAnswer() => _standardAnswer != null;

  // "ai_answer" field.
  String? _aiAnswer;
  String get aiAnswer => _aiAnswer ?? '';
  set aiAnswer(String? val) => _aiAnswer = val;

  bool hasAiAnswer() => _aiAnswer != null;

  // "score_key_points" field.
  List<String>? _scoreKeyPoints;
  List<String> get scoreKeyPoints => _scoreKeyPoints ?? const [];
  set scoreKeyPoints(List<String>? val) => _scoreKeyPoints = val;

  void updateScoreKeyPoints(Function(List<String>) updateFn) {
    updateFn(_scoreKeyPoints ??= []);
  }

  bool hasScoreKeyPoints() => _scoreKeyPoints != null;

  // "question_difficulty" field.
  String? _questionDifficulty;
  String get questionDifficulty => _questionDifficulty ?? '';
  set questionDifficulty(String? val) => _questionDifficulty = val;

  bool hasQuestionDifficulty() => _questionDifficulty != null;

  // "exam_dimension_list" field.
  List<ExamDimensionStruct>? _examDimensionList;
  List<ExamDimensionStruct> get examDimensionList =>
      _examDimensionList ?? const [];
  set examDimensionList(List<ExamDimensionStruct>? val) =>
      _examDimensionList = val;

  void updateExamDimensionList(Function(List<ExamDimensionStruct>) updateFn) {
    updateFn(_examDimensionList ??= []);
  }

  bool hasExamDimensionList() => _examDimensionList != null;

  // "stu_answer_list" field.
  List<StuAnswerList2Struct>? _stuAnswerList;
  List<StuAnswerList2Struct> get stuAnswerList => _stuAnswerList ?? const [];
  set stuAnswerList(List<StuAnswerList2Struct>? val) => _stuAnswerList = val;

  void updateStuAnswerList(Function(List<StuAnswerList2Struct>) updateFn) {
    updateFn(_stuAnswerList ??= []);
  }

  bool hasStuAnswerList() => _stuAnswerList != null;

  // "score_level_count" field.
  List<int>? _scoreLevelCount;
  List<int> get scoreLevelCount => _scoreLevelCount ?? const [];
  set scoreLevelCount(List<int>? val) => _scoreLevelCount = val;

  void updateScoreLevelCount(Function(List<int>) updateFn) {
    updateFn(_scoreLevelCount ??= []);
  }

  bool hasScoreLevelCount() => _scoreLevelCount != null;

  // "ai_tag_list" field.
  List<String>? _aiTagList;
  List<String> get aiTagList => _aiTagList ?? const [];
  set aiTagList(List<String>? val) => _aiTagList = val;

  void updateAiTagList(Function(List<String>) updateFn) {
    updateFn(_aiTagList ??= []);
  }

  bool hasAiTagList() => _aiTagList != null;

  // "ai_tag_count" field.
  List<int>? _aiTagCount;
  List<int> get aiTagCount => _aiTagCount ?? const [];
  set aiTagCount(List<int>? val) => _aiTagCount = val;

  void updateAiTagCount(Function(List<int>) updateFn) {
    updateFn(_aiTagCount ??= []);
  }

  bool hasAiTagCount() => _aiTagCount != null;

  // "main_word_list" field.
  List<String>? _mainWordList;
  List<String> get mainWordList => _mainWordList ?? const [];
  set mainWordList(List<String>? val) => _mainWordList = val;

  void updateMainWordList(Function(List<String>) updateFn) {
    updateFn(_mainWordList ??= []);
  }

  bool hasMainWordList() => _mainWordList != null;

  // "main_word_distribution_count" field.
  List<int>? _mainWordDistributionCount;
  List<int> get mainWordDistributionCount =>
      _mainWordDistributionCount ?? const [];
  set mainWordDistributionCount(List<int>? val) =>
      _mainWordDistributionCount = val;

  void updateMainWordDistributionCount(Function(List<int>) updateFn) {
    updateFn(_mainWordDistributionCount ??= []);
  }

  bool hasMainWordDistributionCount() => _mainWordDistributionCount != null;

  // "score_key_hit_points_count" field.
  List<int>? _scoreKeyHitPointsCount;
  List<int> get scoreKeyHitPointsCount => _scoreKeyHitPointsCount ?? const [];
  set scoreKeyHitPointsCount(List<int>? val) => _scoreKeyHitPointsCount = val;

  void updateScoreKeyHitPointsCount(Function(List<int>) updateFn) {
    updateFn(_scoreKeyHitPointsCount ??= []);
  }

  bool hasScoreKeyHitPointsCount() => _scoreKeyHitPointsCount != null;

  // "score_key_miss_points_count" field.
  List<int>? _scoreKeyMissPointsCount;
  List<int> get scoreKeyMissPointsCount => _scoreKeyMissPointsCount ?? const [];
  set scoreKeyMissPointsCount(List<int>? val) => _scoreKeyMissPointsCount = val;

  void updateScoreKeyMissPointsCount(Function(List<int>) updateFn) {
    updateFn(_scoreKeyMissPointsCount ??= []);
  }

  bool hasScoreKeyMissPointsCount() => _scoreKeyMissPointsCount != null;

  // "score_level_labels" field.
  List<String>? _scoreLevelLabels;
  List<String> get scoreLevelLabels => _scoreLevelLabels ?? const [];
  set scoreLevelLabels(List<String>? val) => _scoreLevelLabels = val;

  void updateScoreLevelLabels(Function(List<String>) updateFn) {
    updateFn(_scoreLevelLabels ??= []);
  }

  bool hasScoreLevelLabels() => _scoreLevelLabels != null;

  // "score_key_points_num" field.
  List<int>? _scoreKeyPointsNum;
  List<int> get scoreKeyPointsNum => _scoreKeyPointsNum ?? const [];
  set scoreKeyPointsNum(List<int>? val) => _scoreKeyPointsNum = val;

  void updateScoreKeyPointsNum(Function(List<int>) updateFn) {
    updateFn(_scoreKeyPointsNum ??= []);
  }

  bool hasScoreKeyPointsNum() => _scoreKeyPointsNum != null;

  static QuestionStruct fromMap(Map<String, dynamic> data) => QuestionStruct(
        teacherName: data['teacher_name'] as String?,
        examId: data['exam_id'] as String?,
        examName: data['exam_name'] as String?,
        examTime: data['exam_time'] as String?,
        examSubject: data['exam_subject'] as String?,
        questionContent: data['question_content'] as String?,
        aiPrompt: data['ai_prompt'] as String?,
        standardAnswer: data['standard_answer'] as String?,
        aiAnswer: data['ai_answer'] as String?,
        scoreKeyPoints: getDataList(data['score_key_points']),
        questionDifficulty: data['question_difficulty'] as String?,
        examDimensionList: getStructList(
          data['exam_dimension_list'],
          ExamDimensionStruct.fromMap,
        ),
        stuAnswerList: getStructList(
          data['stu_answer_list'],
          StuAnswerList2Struct.fromMap,
        ),
        scoreLevelCount: getDataList(data['score_level_count']),
        aiTagList: getDataList(data['ai_tag_list']),
        aiTagCount: getDataList(data['ai_tag_count']),
        mainWordList: getDataList(data['main_word_list']),
        mainWordDistributionCount:
            getDataList(data['main_word_distribution_count']),
        scoreKeyHitPointsCount: getDataList(data['score_key_hit_points_count']),
        scoreKeyMissPointsCount:
            getDataList(data['score_key_miss_points_count']),
        scoreLevelLabels: getDataList(data['score_level_labels']),
        scoreKeyPointsNum: getDataList(data['score_key_points_num']),
      );

  static QuestionStruct? maybeFromMap(dynamic data) =>
      data is Map ? QuestionStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'teacher_name': _teacherName,
        'exam_id': _examId,
        'exam_name': _examName,
        'exam_time': _examTime,
        'exam_subject': _examSubject,
        'question_content': _questionContent,
        'ai_prompt': _aiPrompt,
        'standard_answer': _standardAnswer,
        'ai_answer': _aiAnswer,
        'score_key_points': _scoreKeyPoints,
        'question_difficulty': _questionDifficulty,
        'exam_dimension_list':
            _examDimensionList?.map((e) => e.toMap()).toList(),
        'stu_answer_list': _stuAnswerList?.map((e) => e.toMap()).toList(),
        'score_level_count': _scoreLevelCount,
        'ai_tag_list': _aiTagList,
        'ai_tag_count': _aiTagCount,
        'main_word_list': _mainWordList,
        'main_word_distribution_count': _mainWordDistributionCount,
        'score_key_hit_points_count': _scoreKeyHitPointsCount,
        'score_key_miss_points_count': _scoreKeyMissPointsCount,
        'score_level_labels': _scoreLevelLabels,
        'score_key_points_num': _scoreKeyPointsNum,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'teacher_name': serializeParam(
          _teacherName,
          ParamType.String,
        ),
        'exam_id': serializeParam(
          _examId,
          ParamType.String,
        ),
        'exam_name': serializeParam(
          _examName,
          ParamType.String,
        ),
        'exam_time': serializeParam(
          _examTime,
          ParamType.String,
        ),
        'exam_subject': serializeParam(
          _examSubject,
          ParamType.String,
        ),
        'question_content': serializeParam(
          _questionContent,
          ParamType.String,
        ),
        'ai_prompt': serializeParam(
          _aiPrompt,
          ParamType.String,
        ),
        'standard_answer': serializeParam(
          _standardAnswer,
          ParamType.String,
        ),
        'ai_answer': serializeParam(
          _aiAnswer,
          ParamType.String,
        ),
        'score_key_points': serializeParam(
          _scoreKeyPoints,
          ParamType.String,
          isList: true,
        ),
        'question_difficulty': serializeParam(
          _questionDifficulty,
          ParamType.String,
        ),
        'exam_dimension_list': serializeParam(
          _examDimensionList,
          ParamType.DataStruct,
          isList: true,
        ),
        'stu_answer_list': serializeParam(
          _stuAnswerList,
          ParamType.DataStruct,
          isList: true,
        ),
        'score_level_count': serializeParam(
          _scoreLevelCount,
          ParamType.int,
          isList: true,
        ),
        'ai_tag_list': serializeParam(
          _aiTagList,
          ParamType.String,
          isList: true,
        ),
        'ai_tag_count': serializeParam(
          _aiTagCount,
          ParamType.int,
          isList: true,
        ),
        'main_word_list': serializeParam(
          _mainWordList,
          ParamType.String,
          isList: true,
        ),
        'main_word_distribution_count': serializeParam(
          _mainWordDistributionCount,
          ParamType.int,
          isList: true,
        ),
        'score_key_hit_points_count': serializeParam(
          _scoreKeyHitPointsCount,
          ParamType.int,
          isList: true,
        ),
        'score_key_miss_points_count': serializeParam(
          _scoreKeyMissPointsCount,
          ParamType.int,
          isList: true,
        ),
        'score_level_labels': serializeParam(
          _scoreLevelLabels,
          ParamType.String,
          isList: true,
        ),
        'score_key_points_num': serializeParam(
          _scoreKeyPointsNum,
          ParamType.int,
          isList: true,
        ),
      }.withoutNulls;

  static QuestionStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionStruct(
        teacherName: deserializeParam(
          data['teacher_name'],
          ParamType.String,
          false,
        ),
        examId: deserializeParam(
          data['exam_id'],
          ParamType.String,
          false,
        ),
        examName: deserializeParam(
          data['exam_name'],
          ParamType.String,
          false,
        ),
        examTime: deserializeParam(
          data['exam_time'],
          ParamType.String,
          false,
        ),
        examSubject: deserializeParam(
          data['exam_subject'],
          ParamType.String,
          false,
        ),
        questionContent: deserializeParam(
          data['question_content'],
          ParamType.String,
          false,
        ),
        aiPrompt: deserializeParam(
          data['ai_prompt'],
          ParamType.String,
          false,
        ),
        standardAnswer: deserializeParam(
          data['standard_answer'],
          ParamType.String,
          false,
        ),
        aiAnswer: deserializeParam(
          data['ai_answer'],
          ParamType.String,
          false,
        ),
        scoreKeyPoints: deserializeParam<String>(
          data['score_key_points'],
          ParamType.String,
          true,
        ),
        questionDifficulty: deserializeParam(
          data['question_difficulty'],
          ParamType.String,
          false,
        ),
        examDimensionList: deserializeStructParam<ExamDimensionStruct>(
          data['exam_dimension_list'],
          ParamType.DataStruct,
          true,
          structBuilder: ExamDimensionStruct.fromSerializableMap,
        ),
        stuAnswerList: deserializeStructParam<StuAnswerList2Struct>(
          data['stu_answer_list'],
          ParamType.DataStruct,
          true,
          structBuilder: StuAnswerList2Struct.fromSerializableMap,
        ),
        scoreLevelCount: deserializeParam<int>(
          data['score_level_count'],
          ParamType.int,
          true,
        ),
        aiTagList: deserializeParam<String>(
          data['ai_tag_list'],
          ParamType.String,
          true,
        ),
        aiTagCount: deserializeParam<int>(
          data['ai_tag_count'],
          ParamType.int,
          true,
        ),
        mainWordList: deserializeParam<String>(
          data['main_word_list'],
          ParamType.String,
          true,
        ),
        mainWordDistributionCount: deserializeParam<int>(
          data['main_word_distribution_count'],
          ParamType.int,
          true,
        ),
        scoreKeyHitPointsCount: deserializeParam<int>(
          data['score_key_hit_points_count'],
          ParamType.int,
          true,
        ),
        scoreKeyMissPointsCount: deserializeParam<int>(
          data['score_key_miss_points_count'],
          ParamType.int,
          true,
        ),
        scoreLevelLabels: deserializeParam<String>(
          data['score_level_labels'],
          ParamType.String,
          true,
        ),
        scoreKeyPointsNum: deserializeParam<int>(
          data['score_key_points_num'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'QuestionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QuestionStruct &&
        teacherName == other.teacherName &&
        examId == other.examId &&
        examName == other.examName &&
        examTime == other.examTime &&
        examSubject == other.examSubject &&
        questionContent == other.questionContent &&
        aiPrompt == other.aiPrompt &&
        standardAnswer == other.standardAnswer &&
        aiAnswer == other.aiAnswer &&
        listEquality.equals(scoreKeyPoints, other.scoreKeyPoints) &&
        questionDifficulty == other.questionDifficulty &&
        listEquality.equals(examDimensionList, other.examDimensionList) &&
        listEquality.equals(stuAnswerList, other.stuAnswerList) &&
        listEquality.equals(scoreLevelCount, other.scoreLevelCount) &&
        listEquality.equals(aiTagList, other.aiTagList) &&
        listEquality.equals(aiTagCount, other.aiTagCount) &&
        listEquality.equals(mainWordList, other.mainWordList) &&
        listEquality.equals(
            mainWordDistributionCount, other.mainWordDistributionCount) &&
        listEquality.equals(
            scoreKeyHitPointsCount, other.scoreKeyHitPointsCount) &&
        listEquality.equals(
            scoreKeyMissPointsCount, other.scoreKeyMissPointsCount) &&
        listEquality.equals(scoreLevelLabels, other.scoreLevelLabels) &&
        listEquality.equals(scoreKeyPointsNum, other.scoreKeyPointsNum);
  }

  @override
  int get hashCode => const ListEquality().hash([
        teacherName,
        examId,
        examName,
        examTime,
        examSubject,
        questionContent,
        aiPrompt,
        standardAnswer,
        aiAnswer,
        scoreKeyPoints,
        questionDifficulty,
        examDimensionList,
        stuAnswerList,
        scoreLevelCount,
        aiTagList,
        aiTagCount,
        mainWordList,
        mainWordDistributionCount,
        scoreKeyHitPointsCount,
        scoreKeyMissPointsCount,
        scoreLevelLabels,
        scoreKeyPointsNum
      ]);
}

QuestionStruct createQuestionStruct({
  String? teacherName,
  String? examId,
  String? examName,
  String? examTime,
  String? examSubject,
  String? questionContent,
  String? aiPrompt,
  String? standardAnswer,
  String? aiAnswer,
  String? questionDifficulty,
}) =>
    QuestionStruct(
      teacherName: teacherName,
      examId: examId,
      examName: examName,
      examTime: examTime,
      examSubject: examSubject,
      questionContent: questionContent,
      aiPrompt: aiPrompt,
      standardAnswer: standardAnswer,
      aiAnswer: aiAnswer,
      questionDifficulty: questionDifficulty,
    );
