// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnswerStruct extends BaseStruct {
  AnswerStruct({
    int? id,
    int? asstExamPaperId,
    int? asstInfoStudentId,
    int? type,
    String? group,
    String? question,
    String? answer,
    String? score,
    int? aiScore,
    String? hitPoint,
    String? hitMask,
    String? aiTag,
    String? aiResult,
    String? creator,
    String? createTime,
    String? updateTime,
    String? finishTime,
  })  : _id = id,
        _asstExamPaperId = asstExamPaperId,
        _asstInfoStudentId = asstInfoStudentId,
        _type = type,
        _group = group,
        _question = question,
        _answer = answer,
        _score = score,
        _aiScore = aiScore,
        _hitPoint = hitPoint,
        _hitMask = hitMask,
        _aiTag = aiTag,
        _aiResult = aiResult,
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

  // "asstExamPaperId" field.
  int? _asstExamPaperId;
  int get asstExamPaperId => _asstExamPaperId ?? 0;
  set asstExamPaperId(int? val) => _asstExamPaperId = val;

  void incrementAsstExamPaperId(int amount) =>
      asstExamPaperId = asstExamPaperId + amount;

  bool hasAsstExamPaperId() => _asstExamPaperId != null;

  // "asstInfoStudentId" field.
  int? _asstInfoStudentId;
  int get asstInfoStudentId => _asstInfoStudentId ?? 0;
  set asstInfoStudentId(int? val) => _asstInfoStudentId = val;

  void incrementAsstInfoStudentId(int amount) =>
      asstInfoStudentId = asstInfoStudentId + amount;

  bool hasAsstInfoStudentId() => _asstInfoStudentId != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  set type(int? val) => _type = val;

  void incrementType(int amount) => type = type + amount;

  bool hasType() => _type != null;

  // "group" field.
  String? _group;
  String get group => _group ?? '';
  set group(String? val) => _group = val;

  bool hasGroup() => _group != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;

  bool hasQuestion() => _question != null;

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  set answer(String? val) => _answer = val;

  bool hasAnswer() => _answer != null;

  // "score" field.
  String? _score;
  String get score => _score ?? '';
  set score(String? val) => _score = val;

  bool hasScore() => _score != null;

  // "aiScore" field.
  int? _aiScore;
  int get aiScore => _aiScore ?? 0;
  set aiScore(int? val) => _aiScore = val;

  void incrementAiScore(int amount) => aiScore = aiScore + amount;

  bool hasAiScore() => _aiScore != null;

  // "hitPoint" field.
  String? _hitPoint;
  String get hitPoint => _hitPoint ?? '';
  set hitPoint(String? val) => _hitPoint = val;

  bool hasHitPoint() => _hitPoint != null;

  // "hitMask" field.
  String? _hitMask;
  String get hitMask => _hitMask ?? '';
  set hitMask(String? val) => _hitMask = val;

  bool hasHitMask() => _hitMask != null;

  // "aiTag" field.
  String? _aiTag;
  String get aiTag => _aiTag ?? '';
  set aiTag(String? val) => _aiTag = val;

  bool hasAiTag() => _aiTag != null;

  // "aiResult" field.
  String? _aiResult;
  String get aiResult => _aiResult ?? '';
  set aiResult(String? val) => _aiResult = val;

  bool hasAiResult() => _aiResult != null;

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

  static AnswerStruct fromMap(Map<String, dynamic> data) => AnswerStruct(
        id: castToType<int>(data['id']),
        asstExamPaperId: castToType<int>(data['asstExamPaperId']),
        asstInfoStudentId: castToType<int>(data['asstInfoStudentId']),
        type: castToType<int>(data['type']),
        group: data['group'] as String?,
        question: data['question'] as String?,
        answer: data['answer'] as String?,
        score: data['score'] as String?,
        aiScore: castToType<int>(data['aiScore']),
        hitPoint: data['hitPoint'] as String?,
        hitMask: data['hitMask'] as String?,
        aiTag: data['aiTag'] as String?,
        aiResult: data['aiResult'] as String?,
        creator: data['creator'] as String?,
        createTime: data['createTime'] as String?,
        updateTime: data['updateTime'] as String?,
        finishTime: data['finishTime'] as String?,
      );

  static AnswerStruct? maybeFromMap(dynamic data) =>
      data is Map ? AnswerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'asstExamPaperId': _asstExamPaperId,
        'asstInfoStudentId': _asstInfoStudentId,
        'type': _type,
        'group': _group,
        'question': _question,
        'answer': _answer,
        'score': _score,
        'aiScore': _aiScore,
        'hitPoint': _hitPoint,
        'hitMask': _hitMask,
        'aiTag': _aiTag,
        'aiResult': _aiResult,
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
        'asstExamPaperId': serializeParam(
          _asstExamPaperId,
          ParamType.int,
        ),
        'asstInfoStudentId': serializeParam(
          _asstInfoStudentId,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.int,
        ),
        'group': serializeParam(
          _group,
          ParamType.String,
        ),
        'question': serializeParam(
          _question,
          ParamType.String,
        ),
        'answer': serializeParam(
          _answer,
          ParamType.String,
        ),
        'score': serializeParam(
          _score,
          ParamType.String,
        ),
        'aiScore': serializeParam(
          _aiScore,
          ParamType.int,
        ),
        'hitPoint': serializeParam(
          _hitPoint,
          ParamType.String,
        ),
        'hitMask': serializeParam(
          _hitMask,
          ParamType.String,
        ),
        'aiTag': serializeParam(
          _aiTag,
          ParamType.String,
        ),
        'aiResult': serializeParam(
          _aiResult,
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

  static AnswerStruct fromSerializableMap(Map<String, dynamic> data) =>
      AnswerStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        asstExamPaperId: deserializeParam(
          data['asstExamPaperId'],
          ParamType.int,
          false,
        ),
        asstInfoStudentId: deserializeParam(
          data['asstInfoStudentId'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.int,
          false,
        ),
        group: deserializeParam(
          data['group'],
          ParamType.String,
          false,
        ),
        question: deserializeParam(
          data['question'],
          ParamType.String,
          false,
        ),
        answer: deserializeParam(
          data['answer'],
          ParamType.String,
          false,
        ),
        score: deserializeParam(
          data['score'],
          ParamType.String,
          false,
        ),
        aiScore: deserializeParam(
          data['aiScore'],
          ParamType.int,
          false,
        ),
        hitPoint: deserializeParam(
          data['hitPoint'],
          ParamType.String,
          false,
        ),
        hitMask: deserializeParam(
          data['hitMask'],
          ParamType.String,
          false,
        ),
        aiTag: deserializeParam(
          data['aiTag'],
          ParamType.String,
          false,
        ),
        aiResult: deserializeParam(
          data['aiResult'],
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
  String toString() => 'AnswerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AnswerStruct &&
        id == other.id &&
        asstExamPaperId == other.asstExamPaperId &&
        asstInfoStudentId == other.asstInfoStudentId &&
        type == other.type &&
        group == other.group &&
        question == other.question &&
        answer == other.answer &&
        score == other.score &&
        aiScore == other.aiScore &&
        hitPoint == other.hitPoint &&
        hitMask == other.hitMask &&
        aiTag == other.aiTag &&
        aiResult == other.aiResult &&
        creator == other.creator &&
        createTime == other.createTime &&
        updateTime == other.updateTime &&
        finishTime == other.finishTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        asstExamPaperId,
        asstInfoStudentId,
        type,
        group,
        question,
        answer,
        score,
        aiScore,
        hitPoint,
        hitMask,
        aiTag,
        aiResult,
        creator,
        createTime,
        updateTime,
        finishTime
      ]);
}

AnswerStruct createAnswerStruct({
  int? id,
  int? asstExamPaperId,
  int? asstInfoStudentId,
  int? type,
  String? group,
  String? question,
  String? answer,
  String? score,
  int? aiScore,
  String? hitPoint,
  String? hitMask,
  String? aiTag,
  String? aiResult,
  String? creator,
  String? createTime,
  String? updateTime,
  String? finishTime,
}) =>
    AnswerStruct(
      id: id,
      asstExamPaperId: asstExamPaperId,
      asstInfoStudentId: asstInfoStudentId,
      type: type,
      group: group,
      question: question,
      answer: answer,
      score: score,
      aiScore: aiScore,
      hitPoint: hitPoint,
      hitMask: hitMask,
      aiTag: aiTag,
      aiResult: aiResult,
      creator: creator,
      createTime: createTime,
      updateTime: updateTime,
      finishTime: finishTime,
    );
