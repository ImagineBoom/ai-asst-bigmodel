import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _examHistory = prefs
              .getStringList('ff_examHistory')
              ?.map((x) {
                try {
                  return ExamsHistoryItemStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _examHistory;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _drawer = false;
  bool get drawer => _drawer;
  set drawer(bool value) {
    _drawer = value;
  }

  bool _ifPreviewPrompt = false;
  bool get ifPreviewPrompt => _ifPreviewPrompt;
  set ifPreviewPrompt(bool value) {
    _ifPreviewPrompt = value;
  }

  bool _ifPaperDetail = false;
  bool get ifPaperDetail => _ifPaperDetail;
  set ifPaperDetail(bool value) {
    _ifPaperDetail = value;
  }

  List<ExamsHistoryItemStruct> _examHistory = [
    ExamsHistoryItemStruct.fromSerializableMap(jsonDecode(
        '{\"course_name\":\"MEM先导课-01\",\"class_name\":\"MEM202308\",\"group\":\"默认分组\",\"creater\":\"李雯雯\",\"update_time\":\"09:20 17:19:35\",\"state\":\"已完成\"}')),
    ExamsHistoryItemStruct.fromSerializableMap(jsonDecode(
        '{\"course_name\":\"MEM先导课-02\",\"class_name\":\"MEM202301\",\"group\":\"默认分组\",\"creater\":\"林盈利\",\"update_time\":\"09-20 19:35:30\",\"state\":\"已完成\"}')),
    ExamsHistoryItemStruct.fromSerializableMap(jsonDecode(
        '{\"course_name\":\"MEM课程-01\",\"class_name\":\"MEM202203\",\"group\":\"自定义分组1\",\"creater\":\"曹舒淇\",\"update_time\":\"09-20 18:39:40\",\"state\":\"已完成\"}')),
    ExamsHistoryItemStruct.fromSerializableMap(jsonDecode(
        '{\"course_name\":\"MEM课程-04\",\"class_name\":\"MEM202104\",\"group\":\"自定义分组2\",\"creater\":\"李望知\",\"update_time\":\"09-27 20:09:02\",\"state\":\"已完成\"}'))
  ];
  List<ExamsHistoryItemStruct> get examHistory => _examHistory;
  set examHistory(List<ExamsHistoryItemStruct> value) {
    _examHistory = value;
    prefs.setStringList(
        'ff_examHistory', value.map((x) => x.serialize()).toList());
  }

  void addToExamHistory(ExamsHistoryItemStruct value) {
    examHistory.add(value);
    prefs.setStringList(
        'ff_examHistory', _examHistory.map((x) => x.serialize()).toList());
  }

  void removeFromExamHistory(ExamsHistoryItemStruct value) {
    examHistory.remove(value);
    prefs.setStringList(
        'ff_examHistory', _examHistory.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromExamHistory(int index) {
    examHistory.removeAt(index);
    prefs.setStringList(
        'ff_examHistory', _examHistory.map((x) => x.serialize()).toList());
  }

  void updateExamHistoryAtIndex(
    int index,
    ExamsHistoryItemStruct Function(ExamsHistoryItemStruct) updateFn,
  ) {
    examHistory[index] = updateFn(_examHistory[index]);
    prefs.setStringList(
        'ff_examHistory', _examHistory.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInExamHistory(int index, ExamsHistoryItemStruct value) {
    examHistory.insert(index, value);
    prefs.setStringList(
        'ff_examHistory', _examHistory.map((x) => x.serialize()).toList());
  }

  List<ExamInfoStruct> _examInfoList = [
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"1\",\"stu_num\":\"61921\",\"stu_name\":\"王聪\",\"sex\":\"男\",\"politic_face\":\"党员\",\"score\":\"90\",\"hit_points\":\"12\",\"iphone\":\"17733327769\",\"op\":\"\",\"ai_tag\":\"[\\\"高分试卷\\\",\\\"完美试卷\\\"]\",\"question_list\":\"[]\"}')),
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"2\",\"stu_num\":\"202502\",\"stu_name\":\"李华\",\"sex\":\"女\",\"politic_face\":\"群众\",\"score\":\"82\",\"hit_points\":\"8\",\"iphone\":\"18176542837\",\"op\":\"\",\"ai_tag\":\"[\\\"雷同试卷\\\",\\\"人工介入\\\"]\"}')),
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"3\",\"stu_num\":\"202503\",\"stu_name\":\"张杰\",\"sex\":\"男\",\"politic_face\":\"群众\",\"score\":\"69\",\"hit_points\":\"5\",\"iphone\":\"17819826768\",\"op\":\"\",\"ai_tag\":\"[\\\"疑似AI\\\"]\"}')),
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"4\",\"stu_num\":\"202504\",\"stu_name\":\"周涛\",\"sex\":\"男\",\"politic_face\":\"群众\",\"score\":\"36\",\"hit_points\":\"3\",\"iphone\":\"13324233785\",\"op\":\"\",\"ai_tag\":\"[]\"}')),
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"5\",\"stu_num\":\"202505\",\"stu_name\":\"姜沉鱼\",\"sex\":\"男\",\"politic_face\":\"党员\",\"score\":\"88\",\"hit_points\":\"9\",\"iphone\":\"1328748393\",\"op\":\"\",\"ai_tag\":\"[]\"}')),
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"6\",\"stu_num\":\"202506\",\"stu_name\":\"赵颖\",\"sex\":\"女\",\"politic_face\":\"群众\",\"score\":\"87\",\"hit_points\":\"14\",\"iphone\":\"1893746278\",\"op\":\"\",\"ai_tag\":\"[]\"}')),
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"7\",\"stu_num\":\"202507\",\"stu_name\":\"王超\",\"sex\":\"男\",\"politic_face\":\"党员\",\"score\":\"88\",\"hit_points\":\"18\",\"iphone\":\"1781739763\",\"op\":\"\",\"ai_tag\":\"[\\\"人工介入\\\"]\"}')),
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"8\",\"stu_num\":\"202508\",\"stu_name\":\"杨蓓\",\"sex\":\"女\",\"politic_face\":\"党员\",\"score\":\"76\",\"hit_points\":\"9\",\"iphone\":\"17789302987\",\"op\":\"\",\"ai_tag\":\"[]\"}')),
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"9\",\"stu_num\":\"202509\",\"stu_name\":\"李萌\",\"sex\":\"女\",\"politic_face\":\"党员\",\"score\":\"10\",\"hit_points\":\"90\",\"iphone\":\"18923328899\",\"op\":\"\",\"ai_tag\":\"[]\"}')),
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"10\",\"stu_num\":\"202510\",\"stu_name\":\"王薇薇\",\"sex\":\"女\",\"politic_face\":\"群众\",\"score\":\"90\",\"hit_points\":\"10\",\"iphone\":\"1783920431\",\"op\":\"\",\"ai_tag\":\"[]\"}')),
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"11\",\"stu_num\":\"202511\",\"stu_name\":\"李月\",\"sex\":\"女\",\"politic_face\":\"党员\",\"score\":\"99\",\"hit_points\":\"20\",\"iphone\":\"1736637829\",\"op\":\"\",\"ai_tag\":\"[\\\"疑似AI\\\"]\"}')),
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"12\",\"stu_num\":\"202512\",\"stu_name\":\"赵可真\",\"sex\":\"女\",\"politic_face\":\"群众\",\"score\":\"79\",\"hit_points\":\"10\",\"iphone\":\"17728832938\",\"op\":\"\",\"ai_tag\":\"[\\\"疑似AI\\\"]\"}')),
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"13\",\"stu_num\":\"202513\",\"stu_name\":\"于珍妮\",\"sex\":\"女\",\"politic_face\":\"群众\",\"score\":\"54\",\"hit_points\":\"6\",\"iphone\":\"1237827391\",\"op\":\"\",\"ai_tag\":\"[]\"}')),
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"14\",\"stu_num\":\"2025\",\"stu_name\":\"赵嘉伟\",\"sex\":\"男\",\"politic_face\":\"群众\",\"score\":\"89\",\"hit_points\":\"14\",\"iphone\":\"1562738212\",\"op\":\"\",\"ai_tag\":\"[\\\"疑似AI\\\"]\"}')),
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"15\",\"stu_num\":\"201515\",\"stu_name\":\"孙黄胜\",\"sex\":\"男\",\"politic_face\":\"群众\",\"score\":\"70\",\"hit_points\":\"8\",\"iphone\":\"1238946232\",\"op\":\"\",\"ai_tag\":\"[]\"}')),
    ExamInfoStruct.fromSerializableMap(jsonDecode(
        '{\"rank\":\"16\",\"stu_num\":\"202516\",\"stu_name\":\"唐真情\",\"sex\":\"男\",\"politic_face\":\"党员\",\"score\":\"99\",\"hit_points\":\"19\",\"iphone\":\"1783234923\",\"op\":\"\",\"ai_tag\":\"[\\\"高分试卷\\\"]\"}'))
  ];
  List<ExamInfoStruct> get examInfoList => _examInfoList;
  set examInfoList(List<ExamInfoStruct> value) {
    _examInfoList = value;
  }

  void addToExamInfoList(ExamInfoStruct value) {
    examInfoList.add(value);
  }

  void removeFromExamInfoList(ExamInfoStruct value) {
    examInfoList.remove(value);
  }

  void removeAtIndexFromExamInfoList(int index) {
    examInfoList.removeAt(index);
  }

  void updateExamInfoListAtIndex(
    int index,
    ExamInfoStruct Function(ExamInfoStruct) updateFn,
  ) {
    examInfoList[index] = updateFn(_examInfoList[index]);
  }

  void insertAtIndexInExamInfoList(int index, ExamInfoStruct value) {
    examInfoList.insert(index, value);
  }

  String _examPrompt = '';
  String get examPrompt => _examPrompt;
  set examPrompt(String value) {
    _examPrompt = value;
  }

  String _optimisedPromptFromAI = '';
  String get optimisedPromptFromAI => _optimisedPromptFromAI;
  set optimisedPromptFromAI(String value) {
    _optimisedPromptFromAI = value;
  }

  String _paperScorePoints = '';
  String get paperScorePoints => _paperScorePoints;
  set paperScorePoints(String value) {
    _paperScorePoints = value;
  }

  String _paperContent = '';
  String get paperContent => _paperContent;
  set paperContent(String value) {
    _paperContent = value;
  }

  String _teacherComment = '';
  String get teacherComment => _teacherComment;
  set teacherComment(String value) {
    _teacherComment = value;
  }

  ExamInfoStruct _examAiResult = ExamInfoStruct.fromSerializableMap(
      jsonDecode('{\"ai_tag\":\"[]\",\"question_list\":\"[]\"}'));
  ExamInfoStruct get examAiResult => _examAiResult;
  set examAiResult(ExamInfoStruct value) {
    _examAiResult = value;
  }

  void updateExamAiResultStruct(Function(ExamInfoStruct) updateFn) {
    updateFn(_examAiResult);
  }

  List<TeacherCommentStruct> _teacherCommentList = [];
  List<TeacherCommentStruct> get teacherCommentList => _teacherCommentList;
  set teacherCommentList(List<TeacherCommentStruct> value) {
    _teacherCommentList = value;
  }

  void addToTeacherCommentList(TeacherCommentStruct value) {
    teacherCommentList.add(value);
  }

  void removeFromTeacherCommentList(TeacherCommentStruct value) {
    teacherCommentList.remove(value);
  }

  void removeAtIndexFromTeacherCommentList(int index) {
    teacherCommentList.removeAt(index);
  }

  void updateTeacherCommentListAtIndex(
    int index,
    TeacherCommentStruct Function(TeacherCommentStruct) updateFn,
  ) {
    teacherCommentList[index] = updateFn(_teacherCommentList[index]);
  }

  void insertAtIndexInTeacherCommentList(
      int index, TeacherCommentStruct value) {
    teacherCommentList.insert(index, value);
  }

  String _testOptPrompt = '';
  String get testOptPrompt => _testOptPrompt;
  set testOptPrompt(String value) {
    _testOptPrompt = value;
  }

  String _fileName = '';
  String get fileName => _fileName;
  set fileName(String value) {
    _fileName = value;
  }

  List<SubjectStruct> _examSubjectList = [];
  List<SubjectStruct> get examSubjectList => _examSubjectList;
  set examSubjectList(List<SubjectStruct> value) {
    _examSubjectList = value;
  }

  void addToExamSubjectList(SubjectStruct value) {
    examSubjectList.add(value);
  }

  void removeFromExamSubjectList(SubjectStruct value) {
    examSubjectList.remove(value);
  }

  void removeAtIndexFromExamSubjectList(int index) {
    examSubjectList.removeAt(index);
  }

  void updateExamSubjectListAtIndex(
    int index,
    SubjectStruct Function(SubjectStruct) updateFn,
  ) {
    examSubjectList[index] = updateFn(_examSubjectList[index]);
  }

  void insertAtIndexInExamSubjectList(int index, SubjectStruct value) {
    examSubjectList.insert(index, value);
  }

  SubjectStruct _newSubject = SubjectStruct.fromSerializableMap(
      jsonDecode('{\"id\":\"0\",\"type\":\"0\"}'));
  SubjectStruct get newSubject => _newSubject;
  set newSubject(SubjectStruct value) {
    _newSubject = value;
  }

  void updateNewSubjectStruct(Function(SubjectStruct) updateFn) {
    updateFn(_newSubject);
  }

  int _teacherID = 0;
  int get teacherID => _teacherID;
  set teacherID(int value) {
    _teacherID = value;
  }

  String _selectCourse = '';
  String get selectCourse => _selectCourse;
  set selectCourse(String value) {
    _selectCourse = value;
  }

  double _teacherScoreTmp = 0.0;
  double get teacherScoreTmp => _teacherScoreTmp;
  set teacherScoreTmp(double value) {
    _teacherScoreTmp = value;
  }

  String _loginEmail = '';
  String get loginEmail => _loginEmail;
  set loginEmail(String value) {
    _loginEmail = value;
  }

  String _selectTest = '';
  String get selectTest => _selectTest;
  set selectTest(String value) {
    _selectTest = value;
  }

  final _generateDimensionManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> generateDimension({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _generateDimensionManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearGenerateDimensionCache() => _generateDimensionManager.clear();
  void clearGenerateDimensionCacheKey(String? uniqueKey) =>
      _generateDimensionManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
