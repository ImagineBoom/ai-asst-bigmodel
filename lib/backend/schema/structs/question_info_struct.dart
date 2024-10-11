// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionInfoStruct extends BaseStruct {
  QuestionInfoStruct({
    String? questionContent,
    String? referenceAnswer,
    String? aiScore,
    String? reasonForScore,
    String? aiAnswerSimilarity,
    String? suspectedAiReason,
    String? aiAnswer,
    String? aiCondensationOfStudent,
    String? questionId,
    String? totalScore,
  })  : _questionContent = questionContent,
        _referenceAnswer = referenceAnswer,
        _aiScore = aiScore,
        _reasonForScore = reasonForScore,
        _aiAnswerSimilarity = aiAnswerSimilarity,
        _suspectedAiReason = suspectedAiReason,
        _aiAnswer = aiAnswer,
        _aiCondensationOfStudent = aiCondensationOfStudent,
        _questionId = questionId,
        _totalScore = totalScore;

  // "question_content" field.
  String? _questionContent;
  String get questionContent => _questionContent ?? '';
  set questionContent(String? val) => _questionContent = val;

  bool hasQuestionContent() => _questionContent != null;

  // "reference_answer" field.
  String? _referenceAnswer;
  String get referenceAnswer => _referenceAnswer ?? '';
  set referenceAnswer(String? val) => _referenceAnswer = val;

  bool hasReferenceAnswer() => _referenceAnswer != null;

  // "ai_score" field.
  String? _aiScore;
  String get aiScore => _aiScore ?? '';
  set aiScore(String? val) => _aiScore = val;

  bool hasAiScore() => _aiScore != null;

  // "reason_for_score" field.
  String? _reasonForScore;
  String get reasonForScore => _reasonForScore ?? '';
  set reasonForScore(String? val) => _reasonForScore = val;

  bool hasReasonForScore() => _reasonForScore != null;

  // "ai_answer_similarity" field.
  String? _aiAnswerSimilarity;
  String get aiAnswerSimilarity => _aiAnswerSimilarity ?? '';
  set aiAnswerSimilarity(String? val) => _aiAnswerSimilarity = val;

  bool hasAiAnswerSimilarity() => _aiAnswerSimilarity != null;

  // "suspected_ai_reason" field.
  String? _suspectedAiReason;
  String get suspectedAiReason => _suspectedAiReason ?? '';
  set suspectedAiReason(String? val) => _suspectedAiReason = val;

  bool hasSuspectedAiReason() => _suspectedAiReason != null;

  // "ai_answer" field.
  String? _aiAnswer;
  String get aiAnswer => _aiAnswer ?? '';
  set aiAnswer(String? val) => _aiAnswer = val;

  bool hasAiAnswer() => _aiAnswer != null;

  // "ai_condensation_of_student" field.
  String? _aiCondensationOfStudent;
  String get aiCondensationOfStudent => _aiCondensationOfStudent ?? '';
  set aiCondensationOfStudent(String? val) => _aiCondensationOfStudent = val;

  bool hasAiCondensationOfStudent() => _aiCondensationOfStudent != null;

  // "question_id" field.
  String? _questionId;
  String get questionId => _questionId ?? '';
  set questionId(String? val) => _questionId = val;

  bool hasQuestionId() => _questionId != null;

  // "total_score" field.
  String? _totalScore;
  String get totalScore => _totalScore ?? '';
  set totalScore(String? val) => _totalScore = val;

  bool hasTotalScore() => _totalScore != null;

  static QuestionInfoStruct fromMap(Map<String, dynamic> data) =>
      QuestionInfoStruct(
        questionContent: data['question_content'] as String?,
        referenceAnswer: data['reference_answer'] as String?,
        aiScore: data['ai_score'] as String?,
        reasonForScore: data['reason_for_score'] as String?,
        aiAnswerSimilarity: data['ai_answer_similarity'] as String?,
        suspectedAiReason: data['suspected_ai_reason'] as String?,
        aiAnswer: data['ai_answer'] as String?,
        aiCondensationOfStudent: data['ai_condensation_of_student'] as String?,
        questionId: data['question_id'] as String?,
        totalScore: data['total_score'] as String?,
      );

  static QuestionInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? QuestionInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'question_content': _questionContent,
        'reference_answer': _referenceAnswer,
        'ai_score': _aiScore,
        'reason_for_score': _reasonForScore,
        'ai_answer_similarity': _aiAnswerSimilarity,
        'suspected_ai_reason': _suspectedAiReason,
        'ai_answer': _aiAnswer,
        'ai_condensation_of_student': _aiCondensationOfStudent,
        'question_id': _questionId,
        'total_score': _totalScore,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'question_content': serializeParam(
          _questionContent,
          ParamType.String,
        ),
        'reference_answer': serializeParam(
          _referenceAnswer,
          ParamType.String,
        ),
        'ai_score': serializeParam(
          _aiScore,
          ParamType.String,
        ),
        'reason_for_score': serializeParam(
          _reasonForScore,
          ParamType.String,
        ),
        'ai_answer_similarity': serializeParam(
          _aiAnswerSimilarity,
          ParamType.String,
        ),
        'suspected_ai_reason': serializeParam(
          _suspectedAiReason,
          ParamType.String,
        ),
        'ai_answer': serializeParam(
          _aiAnswer,
          ParamType.String,
        ),
        'ai_condensation_of_student': serializeParam(
          _aiCondensationOfStudent,
          ParamType.String,
        ),
        'question_id': serializeParam(
          _questionId,
          ParamType.String,
        ),
        'total_score': serializeParam(
          _totalScore,
          ParamType.String,
        ),
      }.withoutNulls;

  static QuestionInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionInfoStruct(
        questionContent: deserializeParam(
          data['question_content'],
          ParamType.String,
          false,
        ),
        referenceAnswer: deserializeParam(
          data['reference_answer'],
          ParamType.String,
          false,
        ),
        aiScore: deserializeParam(
          data['ai_score'],
          ParamType.String,
          false,
        ),
        reasonForScore: deserializeParam(
          data['reason_for_score'],
          ParamType.String,
          false,
        ),
        aiAnswerSimilarity: deserializeParam(
          data['ai_answer_similarity'],
          ParamType.String,
          false,
        ),
        suspectedAiReason: deserializeParam(
          data['suspected_ai_reason'],
          ParamType.String,
          false,
        ),
        aiAnswer: deserializeParam(
          data['ai_answer'],
          ParamType.String,
          false,
        ),
        aiCondensationOfStudent: deserializeParam(
          data['ai_condensation_of_student'],
          ParamType.String,
          false,
        ),
        questionId: deserializeParam(
          data['question_id'],
          ParamType.String,
          false,
        ),
        totalScore: deserializeParam(
          data['total_score'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QuestionInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuestionInfoStruct &&
        questionContent == other.questionContent &&
        referenceAnswer == other.referenceAnswer &&
        aiScore == other.aiScore &&
        reasonForScore == other.reasonForScore &&
        aiAnswerSimilarity == other.aiAnswerSimilarity &&
        suspectedAiReason == other.suspectedAiReason &&
        aiAnswer == other.aiAnswer &&
        aiCondensationOfStudent == other.aiCondensationOfStudent &&
        questionId == other.questionId &&
        totalScore == other.totalScore;
  }

  @override
  int get hashCode => const ListEquality().hash([
        questionContent,
        referenceAnswer,
        aiScore,
        reasonForScore,
        aiAnswerSimilarity,
        suspectedAiReason,
        aiAnswer,
        aiCondensationOfStudent,
        questionId,
        totalScore
      ]);
}

QuestionInfoStruct createQuestionInfoStruct({
  String? questionContent,
  String? referenceAnswer,
  String? aiScore,
  String? reasonForScore,
  String? aiAnswerSimilarity,
  String? suspectedAiReason,
  String? aiAnswer,
  String? aiCondensationOfStudent,
  String? questionId,
  String? totalScore,
}) =>
    QuestionInfoStruct(
      questionContent: questionContent,
      referenceAnswer: referenceAnswer,
      aiScore: aiScore,
      reasonForScore: reasonForScore,
      aiAnswerSimilarity: aiAnswerSimilarity,
      suspectedAiReason: suspectedAiReason,
      aiAnswer: aiAnswer,
      aiCondensationOfStudent: aiCondensationOfStudent,
      questionId: questionId,
      totalScore: totalScore,
    );
