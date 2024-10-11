import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start dimension Group Code

class DimensionGroup {
  static String getBaseUrl() => 'http://39.107.70.159:7001/asst/exam/dimension';
  static Map<String, String> headers = {};
  static ListCall listCall = ListCall();
  static InsertCall insertCall = InsertCall();
  static RemoveCall removeCall = RemoveCall();
}

class ListCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DimensionGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'list',
      apiUrl: '${baseUrl}/list',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? dimensionList(dynamic response) => getJsonField(
        response,
        r'''$.data.list''',
        true,
      ) as List?;
}

class InsertCall {
  Future<ApiCallResponse> call({
    String? dimension = '',
    String? firstClassification = '',
    String? secondClassification = '',
    String? coreFieldRecall = '',
  }) async {
    final baseUrl = DimensionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "dimension": "${dimension}",
  "firstClassification": "${firstClassification}",
  "secondClassification": "${secondClassification}",
  "coreFieldRecall": "${coreFieldRecall}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'insert',
      apiUrl: '${baseUrl}/insert',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveCall {
  Future<ApiCallResponse> call({
    List<int>? idList,
  }) async {
    final baseUrl = DimensionGroup.getBaseUrl();
    final id = _serializeList(idList);

    final ffApiRequestBody = '''
${id}''';
    return ApiManager.instance.makeApiCall(
      callName: 'remove',
      apiUrl: '${baseUrl}/remove',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End dimension Group Code

/// Start answer Group Code

class AnswerGroup {
  static String getBaseUrl() => 'http://39.107.70.159:7001/asst/exam/answer/';
  static Map<String, String> headers = {};
  static AnswerListCall answerListCall = AnswerListCall();
  static AnswerDetailCall answerDetailCall = AnswerDetailCall();
}

class AnswerListCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AnswerGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'answerList',
      apiUrl: '${baseUrl}/list',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? answersList(dynamic response) => getJsonField(
        response,
        r'''$.data.list''',
        true,
      ) as List?;
}

class AnswerDetailCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = AnswerGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'answerDetail',
      apiUrl: '${baseUrl}detail',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End answer Group Code

/// Start paper Group Code

class PaperGroup {
  static String getBaseUrl() => 'http://39.107.70.159:7001/asst/exam/paper/';
  static Map<String, String> headers = {};
  static PaperListCall paperListCall = PaperListCall();
  static PaperUpdateCall paperUpdateCall = PaperUpdateCall();
}

class PaperListCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PaperGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'paperList',
      apiUrl: '${baseUrl}list',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PaperUpdateCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PaperGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": 2,
  "asstExamBankId": 14,
  "asstInfoTeacherId": 1,
  "group": "",
  "question": "",
  "answer": "",
  "prompt": "prompt11",
  "creator": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paperUpdate',
      apiUrl: '${baseUrl}update',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End paper Group Code

/// Start student Group Code

class StudentGroup {
  static String getBaseUrl() => 'http://39.107.70.159:7001/asst/info/student';
  static Map<String, String> headers = {};
  static StudentInsertCall studentInsertCall = StudentInsertCall();
}

class StudentInsertCall {
  Future<ApiCallResponse> call({
    String? stuName = '',
  }) async {
    final baseUrl = StudentGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "asstInfoClassId": 1,
  "name": "${stuName}",
  "sex": 1,
  "group": "MEM",
  "description": "MEM 学生",
  "politicalOutlook": "共青团员"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'studentInsert',
      apiUrl: '${baseUrl}/insert',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? stuID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data''',
      ));
}

/// End student Group Code

/// Start victory Group Code

class VictoryGroup {
  static String getBaseUrl() => 'http://39.107.70.159:7999';
  static Map<String, String> headers = {};
  static AddquestionCall addquestionCall = AddquestionCall();
  static GetQuestionCall getQuestionCall = GetQuestionCall();
  static UpdateQuestionContentStandardAnswerCall
      updateQuestionContentStandardAnswerCall =
      UpdateQuestionContentStandardAnswerCall();
  static GiveDimensionCall giveDimensionCall = GiveDimensionCall();
  static GetAIPromptCall getAIPromptCall = GetAIPromptCall();
  static UpdateQuestionStudentAnswerCall updateQuestionStudentAnswerCall =
      UpdateQuestionStudentAnswerCall();
  static SetAIautoGenerateAnswerCall setAIautoGenerateAnswerCall =
      SetAIautoGenerateAnswerCall();
  static StartAIgradingCall startAIgradingCall = StartAIgradingCall();
  static MakeSureAIgradeCall makeSureAIgradeCall = MakeSureAIgradeCall();
  static GetOneStuAnswerDetailCall getOneStuAnswerDetailCall =
      GetOneStuAnswerDetailCall();
  static GetAllQuestionsCall getAllQuestionsCall = GetAllQuestionsCall();
  static CreateChartCall createChartCall = CreateChartCall();
  static AutoMakeSureAllaiGradeCall autoMakeSureAllaiGradeCall =
      AutoMakeSureAllaiGradeCall();
}

class AddquestionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = VictoryGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": 1,
  "question": {
    "teacher_name": "Mr. Smith",
    "exam_id": "",
    "exam_name": "",
    "exam_time": "",
    "exam_subject": "",
    "question_content": "",
    "ai_prompt": "",
    "standard_answer": "",
    "ai_answer": "",
    "score_key_points": [],
    "question_difficulty": "",
    "exam_dimension_list": [],
    "stu_answer_list": [],
    "score_level_count": [],
    "ai_tag_count": [],
    "main_word_list": [],
    "main_word_distribution_count": []
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addquestion',
      apiUrl: '${baseUrl}/add_question',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetQuestionCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = VictoryGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getQuestion',
      apiUrl: '${baseUrl}/get_question',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? examTime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.exam_time''',
      ));
  String? questionDifficulty(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.question_difficulty''',
      ));
  String? questionContent(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.question_content''',
      ));
  List<String>? mainWordList(dynamic response) => (getJsonField(
        response,
        r'''$.main_word_list''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? scoreKeyPoints(dynamic response) => (getJsonField(
        response,
        r'''$.score_key_points''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? mainWordDistributionCount(dynamic response) => (getJsonField(
        response,
        r'''$.main_word_distribution_count''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? scoreLevelCount(dynamic response) => (getJsonField(
        response,
        r'''$.score_level_count''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  String? teacherName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.teacher_name''',
      ));
  List<StuAnswerListStruct>? stuanswerList(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => StuAnswerListStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
  String? standardAnswer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.standard_answer''',
      ));
  String? examSubject(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.exam_subject''',
      ));
  String? examID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.exam_id''',
      ));
  String? examName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.exam_name''',
      ));
  List? examDimensionList(dynamic response) => getJsonField(
        response,
        r'''$.exam_dimension_list''',
        true,
      ) as List?;
  List<int>? aiTagCount(dynamic response) => (getJsonField(
        response,
        r'''$.ai_tag_count''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  String? aiPrompt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ai_prompt''',
      ));
  String? aiAnswer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ai_answer''',
      ));
  List<String>? aiTagList(dynamic response) => (getJsonField(
        response,
        r'''$.ai_tag_list''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? scoreKeyHitPointsCount(dynamic response) => (getJsonField(
        response,
        r'''$.score_key_hit_points_count''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? scoreKeyMissPointsCount(dynamic response) => (getJsonField(
        response,
        r'''$.score_key_miss_points_count''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? scoreKeyPointsRank(dynamic response) => getJsonField(
        response,
        r'''$.score_key_points_rank''',
        true,
      ) as List?;
  List<String>? scoreLevelLabels(dynamic response) => (getJsonField(
        response,
        r'''$.score_level_labels''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? listAiScore(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].ai_score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? listAiScoreReason(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].ai_score_reason''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? listAiScoreTags(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].ai_score_tags''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? listAiStatus(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].ai_status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? listAnswerTime(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].answer_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? listHitViewCount(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].hit_view_count''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? listHitViewList(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].hit_view_list''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? listStuAnswer(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].stu_answer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? listStuAnswerAiSuspicious(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].stu_answer_ai_suspicious''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? listStuAnswerAiSuspiciousReason(dynamic response) =>
      (getJsonField(
        response,
        r'''$.stu_answer_list[:].stu_answer_ai_suspicious_reason''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? listStuAnswerpPlagiarismSuspicious(dynamic response) =>
      (getJsonField(
        response,
        r'''$.stu_answer_list[:].stu_answer_plagiarism_suspicious''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? listStuanswerplagiarismsuspiciousreason(dynamic response) =>
      (getJsonField(
        response,
        r'''$.stu_answer_list[:].stu_answer_plagiarism_suspicious_reason''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? listStuAnswerScoreKeyPointsMatchList(dynamic response) =>
      (getJsonField(
        response,
        r'''$.stu_answer_list[:].stu_answer_score_key_points_match_list''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? listStuCharacteristics(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].stu_characteristics''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? listTeacherScoreReason(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].teacher_score_reason''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? listTeacherScoreRank(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].teacher_score_rank''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? listTeacherScore(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].teacher_score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? listStuScoreLevel(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].stu_score_level''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? listStuName(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].stu_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? listStuId(dynamic response) => (getJsonField(
        response,
        r'''$.stu_answer_list[:].stu_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? scoreKeyPointsNum(dynamic response) => (getJsonField(
        response,
        r'''$.score_key_points_num''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class UpdateQuestionContentStandardAnswerCall {
  Future<ApiCallResponse> call({
    int? id,
    String? standardAnswer = '',
    String? questionContent = '',
  }) async {
    final baseUrl = VictoryGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'updateQuestionContentStandardAnswer',
      apiUrl: '${baseUrl}/update_question_content_standard_answer',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
        'standard_answer': standardAnswer,
        'question_content': questionContent,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GiveDimensionCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = VictoryGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'giveDimension',
      apiUrl: '${baseUrl}/give_dimension',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? dimensionList(dynamic response) => getJsonField(
        response,
        r'''$.exam_dimension_list''',
        true,
      ) as List?;
}

class GetAIPromptCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = VictoryGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAIPrompt',
      apiUrl: '${baseUrl}/get_ai_prompt',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? prompt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.prompt''',
      ));
}

class UpdateQuestionStudentAnswerCall {
  Future<ApiCallResponse> call({
    int? id,
    String? studentAnswer = '',
    int? stuId,
    String? stuName = '',
  }) async {
    final baseUrl = VictoryGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'updateQuestionStudentAnswer',
      apiUrl: '${baseUrl}/update_question_student_answer',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
        'student_answer': studentAnswer,
        'stu_id': stuId,
        'stu_name': stuName,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SetAIautoGenerateAnswerCall {
  Future<ApiCallResponse> call({
    int? id,
    int? aiMockStuNum,
  }) async {
    final baseUrl = VictoryGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'setAIautoGenerateAnswer',
      apiUrl: '${baseUrl}/set_ai_autogenerate_answer',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
        'ai_mock_stu_num': aiMockStuNum,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class StartAIgradingCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = VictoryGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'startAIgrading',
      apiUrl: '${baseUrl}/start_ai_grading',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MakeSureAIgradeCall {
  Future<ApiCallResponse> call({
    int? id,
    double? teacherScore,
    int? stuId,
    String? teacherScoreReason = '',
    String? stuScoreLevel = '',
  }) async {
    final baseUrl = VictoryGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'makeSureAIgrade',
      apiUrl: '${baseUrl}/make_sure_ai_grade',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
        'teacher_score': teacherScore,
        'stu_id': stuId,
        'teacher_score_reason': teacherScoreReason,
        'stu_score_level': stuScoreLevel,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetOneStuAnswerDetailCall {
  Future<ApiCallResponse> call({
    int? id,
    int? stuId,
  }) async {
    final baseUrl = VictoryGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getOneStuAnswerDetail',
      apiUrl: '${baseUrl}/get_one_stu_answer_detail',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
        'stu_id': stuId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  double? aiScore(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.ai_score''',
      ));
  String? aiScoreReason(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ai_score_reason''',
      ));
  List<String>? aiScoreTags(dynamic response) => (getJsonField(
        response,
        r'''$.ai_score_tags''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  bool? aiStatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.ai_status''',
      ));
  int? hitViewCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.hit_view_count''',
      ));
  List<String>? hitViewList(dynamic response) => (getJsonField(
        response,
        r'''$.hit_view_list''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? stuAnswer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.stu_answer''',
      ));
  double? stuAnswerAiSuspicious(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.stu_answer_ai_suspicious''',
      ));
  String? stuAnswerAiSuspiciousReason(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.stu_answer_ai_suspicious_reason''',
      ));
  double? stuAnswerPlagiarismSuspicious(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.stu_answer_plagiarism_suspicious''',
      ));
  List<double>? stuAnswerScoreKeypointsMatchList(dynamic response) =>
      (getJsonField(
        response,
        r'''$.stu_answer_score_key_points_match_list''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  String? stuCharacteristics(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.stu_characteristics''',
      ));
  int? stuID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.stu_id''',
      ));
  String? stuName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.stu_name''',
      ));
  double? teacherScore(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.teacher_score''',
      ));
  String? teacherScoreReason(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.teacher_score_reason''',
      ));
  String? stuScoreLevel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.stu_score_level''',
      ));
  String? answerTime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.answer_time''',
      ));
  int? teacherScoreRank(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.teacher_score_rank''',
      ));
}

class GetAllQuestionsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = VictoryGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllQuestions',
      apiUrl: '${baseUrl}/get_all_questions',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateChartCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = VictoryGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'createChart',
      apiUrl: '${baseUrl}/create_chart',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AutoMakeSureAllaiGradeCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = VictoryGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'autoMakeSureAllaiGrade',
      apiUrl: '${baseUrl}/auto_make_sure_all_ai_grade',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End victory Group Code

class GetOptomisePromptCall {
  static Future<ApiCallResponse> call({
    String? content = '',
  }) async {
    final ffApiRequestBody = '''
{
  "content": "${content}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getOptomisePrompt',
      apiUrl: 'http://39.107.70.159:7001/asst/llm/doubao/prompt/generate',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? data(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
  static int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class GetExamPaperDetailCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getExamPaperDetail',
      apiUrl: 'http://39.107.70.159:7001/asst/exam/answer/detail?id=1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
  static String? datagroup(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.group''',
      ));
  static String? dataquestion(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.question''',
      ));
  static String? dataanswer(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.answer''',
      ));
  static int? dataaiScore(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.aiScore''',
      ));
  static String? dataaiResult(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.aiResult''',
      ));
  static String? datacreator(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.creator''',
      ));
  static String? dataupdateTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.updateTime''',
      ));
  static String? datacommentListgroup(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.commentList[:].group''',
      ));
  static String? datacommentListoriginalText(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.commentList[:].originalText''',
      ));
  static String? datacommentListcomment(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.commentList[:].comment''',
      ));
  static String? datacommentListupdateTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.commentList[:].updateTime''',
      ));
  static List? datacommentList(dynamic response) => getJsonField(
        response,
        r'''$.data.commentList''',
        true,
      ) as List?;
}

class PostJudgePaperCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'postJudgePaper',
      apiUrl:
          'http://39.107.70.159:7001/asst/task/insert?asstExamPaperId=1&name=批卷任务&group=MEM&description=批卷任务',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? data(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
}

class AsstInfoTeacherInsertCall {
  static Future<ApiCallResponse> call({
    String? name = '',
  }) async {
    final ffApiRequestBody = '''
{
  "asstInfoClassId": 1,
  "name": "${name}",
  "sex": 2,
  "group": "MEM",
  "description": "MEM 老师"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'asstInfoTeacherInsert',
      apiUrl: 'http://39.107.70.159:7001/asst/info/teacher/insert',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? teacherID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data''',
      ));
}

class AsstexampaperinsertCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'asstexampaperinsert',
      apiUrl: 'asst/exam/paper/insert',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AsstExamBankListCall {
  static Future<ApiCallResponse> call({
    int? asstExamSubjectId,
    String? name = '',
    String? group = '',
    String? creator = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'asstExamBankList',
      apiUrl: 'http://39.107.70.159:7001/asst/exam/bank/list',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'asstExamSubjectId': asstExamSubjectId,
        'name': name,
        'group': group,
        'creator': creator,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? asstBankList(dynamic response) => getJsonField(
        response,
        r'''$.data.list''',
        true,
      ) as List?;
}

class AsstExamBankInsertCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? group = '',
    String? creator = '',
    int? asstExamSubjectId,
    String? description = '',
  }) async {
    final ffApiRequestBody = '''
{
  "asstExamSubjectId": ${asstExamSubjectId},
  "name": "${name}",
  "group": "${group}",
  "description": "${description}",
  "creator": "${creator}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'asstExamBankInsert',
      apiUrl: 'http://39.107.70.159:7001/asst/exam/bank/insert',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AsstExamBankRemoveCall {
  static Future<ApiCallResponse> call({
    List<int>? idList,
  }) async {
    final id = _serializeList(idList);

    final ffApiRequestBody = '''
${id}''';
    return ApiManager.instance.makeApiCall(
      callName: 'asstExamBankRemove',
      apiUrl: 'http://39.107.70.159:7001/asst/exam/bank/remove',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AsstExamSubjectListCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? group = '',
    String? creator = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'asstExamSubjectList',
      apiUrl: 'http://39.107.70.159:7001/asst/exam/subject/list',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'name': name,
        'group': group,
        'creator': creator,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? subjectCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.info.count''',
      ));
  static List? subjectList(dynamic response) => getJsonField(
        response,
        r'''$.data.list''',
        true,
      ) as List?;
}

class AsstExamSubjectInsertCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? group = '',
    String? description = '',
    String? creator = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${name}",
  "group": "${group}",
  "description": "${description}",
  "creator": "${creator}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'asstExamSubjectInsert',
      apiUrl: 'http://39.107.70.159:7001//asst/exam/subject/insert',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AsstExamSubjectRemoveCall {
  static Future<ApiCallResponse> call({
    List<int>? idList,
  }) async {
    final id = _serializeList(idList);

    final ffApiRequestBody = '''
${id}''';
    return ApiManager.instance.makeApiCall(
      callName: 'asstExamSubjectRemove',
      apiUrl: 'http://39.107.70.159:7001/asst/exam/subject/remove',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AsstExamPaperUploadCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? file,
    int? asstExamBankId,
    int? asstInfoTeacherId,
    String? group = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'asstExamPaperUpload',
      apiUrl: 'http://39.107.70.159:7001/asst/exam/paper/upload',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file': file,
        'asstExamBankId': asstExamBankId,
        'asstInfoTeacherId': asstInfoTeacherId,
        'group': group,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AsstExamAnswerUploadCall {
  static Future<ApiCallResponse> call({
    String? asstExamBankId = '',
    String? group = '',
    String? asstInfoStudentId = '',
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'asstExamAnswerUpload',
      apiUrl: 'http://39.107.70.159:7001/asst/exam/answer/upload',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'asstExamBankId': asstExamBankId,
        'asstInfoStudentId': asstInfoStudentId,
        'group': group,
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
