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
