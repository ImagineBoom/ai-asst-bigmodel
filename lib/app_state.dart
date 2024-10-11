import 'package:flutter/material.dart';
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
    _safeInit(() {
      _examDimensionList = prefs
              .getStringList('ff_examDimensionList')
              ?.map((x) {
                try {
                  return ExamDimensionStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _examDimensionList;
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

  List<ExamDimensionStruct> _examDimensionList = [
    ExamDimensionStruct.fromSerializableMap(jsonDecode(
        '{\"analyse_dimension\":\"功能性\",\"firstClassification\":\"空间布局\",\"secondClassification\":\"功能分区合理性\",\"coreFieldRecall\":\"\",\"ifAnalyse\":\"true\"}')),
    ExamDimensionStruct.fromSerializableMap(jsonDecode(
        '{\"analyse_dimension\":\"功能性\",\"firstClassification\":\"功能完整度\",\"secondClassification\":\"功能适应性\",\"coreFieldRecall\":\"Hello World\",\"ifAnalyse\":\"true\"}')),
    ExamDimensionStruct.fromSerializableMap(jsonDecode(
        '{\"analyse_dimension\":\"功能性\",\"firstClassification\":\"流线组织\",\"secondClassification\":\"人流、物流、车流合理性\",\"coreFieldRecall\":\"Hello World\",\"ifAnalyse\":\"true\"}')),
    ExamDimensionStruct.fromSerializableMap(jsonDecode(
        '{\"analyse_dimension\":\"安全性\",\"firstClassification\":\"结构安全\",\"secondClassification\":\"结构稳定性\",\"coreFieldRecall\":\"\",\"ifAnalyse\":\"true\"}')),
    ExamDimensionStruct.fromSerializableMap(jsonDecode(
        '{\"analyse_dimension\":\"安全性\",\"firstClassification\":\"消防安全\",\"secondClassification\":\"消防设施完善度\",\"coreFieldRecall\":\"\",\"ifAnalyse\":\"true\"}')),
    ExamDimensionStruct.fromSerializableMap(jsonDecode(
        '{\"analyse_dimension\":\"安全性\",\"firstClassification\":\"人身安全\",\"secondClassification\":\"防滑措施\",\"coreFieldRecall\":\"Hello World\",\"ifAnalyse\":\"false\"}')),
    ExamDimensionStruct.fromSerializableMap(jsonDecode(
        '{\"analyse_dimension\":\"美观性\",\"firstClassification\":\"造型设计\",\"secondClassification\":\"立面美观度\",\"coreFieldRecall\":\"\",\"ifAnalyse\":\"false\"}')),
    ExamDimensionStruct.fromSerializableMap(jsonDecode(
        '{\"analyse_dimension\":\"美观性\",\"firstClassification\":\"色彩搭配\",\"secondClassification\":\"色彩协调性\",\"coreFieldRecall\":\"\",\"ifAnalyse\":\"false\"}')),
    ExamDimensionStruct.fromSerializableMap(jsonDecode(
        '{\"analyse_dimension\":\"美观性\",\"firstClassification\":\"景观融合\",\"secondClassification\":\"建筑与周边环境协调性\",\"coreFieldRecall\":\"\",\"ifAnalyse\":\"false\"}')),
    ExamDimensionStruct.fromSerializableMap(jsonDecode(
        '{\"analyse_dimension\":\"经济性\",\"firstClassification\":\"投资预算\",\"secondClassification\":\"投资估算准确性\",\"coreFieldRecall\":\"\",\"ifAnalyse\":\"false\"}')),
    ExamDimensionStruct.fromSerializableMap(jsonDecode(
        '{\"analyse_dimension\":\"经济性\",\"firstClassification\":\"成本控制\",\"secondClassification\":\"材料成本\",\"coreFieldRecall\":\"\",\"ifAnalyse\":\"false\"}')),
    ExamDimensionStruct.fromSerializableMap(jsonDecode(
        '{\"analyse_dimension\":\"环保性\",\"firstClassification\":\"节能措施\",\"secondClassification\":\"保温隔热性能\",\"coreFieldRecall\":\"\",\"ifAnalyse\":\"false\"}')),
    ExamDimensionStruct.fromSerializableMap(jsonDecode(
        '{\"analyse_dimension\":\"环保性\",\"firstClassification\":\"环保材料\",\"secondClassification\":\"绿色建材使用率\",\"coreFieldRecall\":\"\",\"ifAnalyse\":\"false\"}')),
    ExamDimensionStruct.fromSerializableMap(jsonDecode(
        '{\"analyse_dimension\":\"社会性\",\"firstClassification\":\"地域文化\",\"secondClassification\":\"建筑地域特色\",\"coreFieldRecall\":\"\",\"ifAnalyse\":\"false\"}')),
    ExamDimensionStruct.fromSerializableMap(jsonDecode(
        '{\"analyse_dimension\":\"社会性\",\"firstClassification\":\"人文关怀\",\"secondClassification\":\"无障碍设施\",\"coreFieldRecall\":\"\",\"ifAnalyse\":\"false\"}'))
  ];
  List<ExamDimensionStruct> get examDimensionList => _examDimensionList;
  set examDimensionList(List<ExamDimensionStruct> value) {
    _examDimensionList = value;
    prefs.setStringList(
        'ff_examDimensionList', value.map((x) => x.serialize()).toList());
  }

  void addToExamDimensionList(ExamDimensionStruct value) {
    examDimensionList.add(value);
    prefs.setStringList('ff_examDimensionList',
        _examDimensionList.map((x) => x.serialize()).toList());
  }

  void removeFromExamDimensionList(ExamDimensionStruct value) {
    examDimensionList.remove(value);
    prefs.setStringList('ff_examDimensionList',
        _examDimensionList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromExamDimensionList(int index) {
    examDimensionList.removeAt(index);
    prefs.setStringList('ff_examDimensionList',
        _examDimensionList.map((x) => x.serialize()).toList());
  }

  void updateExamDimensionListAtIndex(
    int index,
    ExamDimensionStruct Function(ExamDimensionStruct) updateFn,
  ) {
    examDimensionList[index] = updateFn(_examDimensionList[index]);
    prefs.setStringList('ff_examDimensionList',
        _examDimensionList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInExamDimensionList(int index, ExamDimensionStruct value) {
    examDimensionList.insert(index, value);
    prefs.setStringList('ff_examDimensionList',
        _examDimensionList.map((x) => x.serialize()).toList());
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

  String _paperContent =
      '# 需要处理的试卷内容\n##【试卷名称】：现代建筑设计\n### 试卷分值：100分\n### 题目1：请简述“功能主义”在现代建筑设计中的原则，并结合具体建筑实例说明其应用\n【题目分值】：100分\n【题目类型】：主观题\n【参考答案】：\n功能主义的原则：\n功能主义是20世纪初期兴起的一种建筑设计理念，它强调建筑的功能和实用性，认为建筑的形式应当服务于其功能。\n其主要原则包括：\n1.形式追随功能：建筑的设计应以其使用功能为导向，建筑的形状和结构应当反映其用途。\n2.简洁性：功能主义提倡简洁的设计，避免不必要的装饰，强调材料和结构的本质。\n3.灵活性：建筑设计应考虑到不同使用需求的变化，具备一定的灵活性和适应性。\n4.人本设计：关注使用者的需求，强调空间的舒适性和人性化。\n实例分析：\n一个经典的功能主义建筑实例是巴西利亚的国会大厦，由著名建筑师奥斯卡·尼迈耶设计。\n形式与功能：主要体现在建筑的两座主要结构——上部的圆顶和下部的矩形体，分别代表着立法和行政的功能。\n简洁性：国会大厦的外立面采用了光滑的白色混凝土，去除了传统建筑中的繁复装饰，强调了建筑的形式与功能的和谐统一。\n灵活性：国会大厦的内部空间设计灵活，可以根据不同的会议和活动需求进行调整，满足多种功能的使用。\n人本设计：建筑的设计不仅关注了功能的实现，也兼顾了使用者的体验，创造了开放、明亮的公共空间，增强了人与建筑的互动。\n结论：\n功能主义在现代建筑设计中发挥了重要作用，通过强调建筑的功能性和实用性，推动了建筑设计的简洁化和人性化。\n\n【学生答案】\n功能主义是现代建筑设计的核心原则之一，起源于20世纪初期，强调建筑的形式应完全服从其功能。以下是功能主义在现代建筑设计中的几个主要原则：\n1. **形式服从功能**：建筑的外观和结构应基于其使用目的和功能需求，而非仅仅追求装饰性。\n2. **简洁性**：建筑设计应追求简洁、无装饰的风格，去除一切非必要的元素。\n3. **经济性**：建筑设计和建造过程应注重经济效益，使用适宜的材料和技术，避免浪费。\n4. **通用性**：建筑应具有普遍适用性，能够满足不同人群和不同环境的需求。\n5. **灵活性**：建筑设计应考虑到未来的变化，建筑空间应具有可调整性和多功能性。\n具体建筑实例：\n- **范斯沃斯住宅（Farnsworth House）**：由著名建筑师路德维希·密斯·凡德罗（Ludwig Mies van der Rohe）设计，位于美国伊利诺伊州。这座住宅是功能主义的典范，其设计简洁到几乎只有一层透明的玻璃墙和一个悬浮的屋顶。整个建筑体现了“少即是多”的设计理念，形式完全服从其居住功能，没有任何多余的装饰。\n- **柏林新国家美术馆（Neue Nationalgalerie）**：同样由密斯·凡德罗设计，这座美术馆以其简洁的立方体形式和玻璃幕墙著称。建筑内部空间开放，没有固定的展墙，可以根据展览需要自由布置，充分体现了功能主义的灵活性和通用性。\n- **联合国总部大厦（United Nations Headquarters）**：由包括勒·柯布西耶（Le Corbusier）在内的国际团队设计，位于纽约。这座建筑群的功能布局非常明确，各个部分根据不同的行政、会议、办公等功能进行分区，形式简洁、功能明确。\n这些实例都很好地展示了功能主义在现代建筑设计中的应用，即使历经岁月，这些设计依然被认为是现代建筑中的经典之作。\n';
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

  String _testOptPrompt =
      '## 角色：你是一位专业的现代建筑学课程教师，负责批改一套现代建筑学试卷。请按照以下【任务要求】严格执行批改工作。\n\n## 【评分规则】：\n- **主观题**：学生的答案应围绕【维度、一级指标、二级指标】的内容展开，并与【参考答案】进行对比。答案中必须包含的核心字段为：**创新**。学生的答案越贴近【参考答案】和核心字段，得分越高。创新性和合理性是评分的关键。\n- **客观题**：学生的答案需与【参考答案】直接匹配，答案的相似度越高，得分越高。特别注意，参考答案中的关键名词或术语不能写错，写错将扣分。\n\n## 【维度、一级指标、二级指标】：\n批改主观题时，需依据以下维度及其对应的一级指标和二级指标进行评估：\n- **功能性**：\n  - 空间布局：功能分区合理性\n  - 功能完整度：功能适应性\n  - 流线组织：人流、物流、车流合理性\n- **安全性**：\n  - 结构安全：结构稳定性\n  - 消防安全：消防设施完善度\n  - 人身安全：防滑措施\n- **美观性**：\n  - 造型设计：立面美观度\n  - 色彩搭配：色彩协调性\n  - 景观融合：建筑与周边环境协调性\n- **经济性**：\n  - 投资预算：投资估算准确性\n  - 成本控制：材料成本\n- **环保性**：\n  - 节能措施：保温隔热性能\n  - 环保材料：绿色建材使用率\n- **社会性**：\n  - 地域文化：建筑地域特色\n  - 人文关怀：无障碍设施\n\n## 【任务要求】：\n1. **批改每道题目时**，需提供以下信息：评分、评分原因、AI答案相似度、疑似AI的原因、AI答案、学生观点AI凝练。\n   - **评分**：根据【评分规则】给出分数，最高得分不能超过题目的最大分数，最低分不应小于0分。评分的具体依据需在【评分原因】中详细说明。\n   - **评分原因**：每道题目的评分原因需控制在300字以内。每个点评后的句号后需加上溯源标记。溯源标记有三种形式：\n     - **[S:1]**：表示点评的是学生答案的第一句话。\n     - **[A:1]**：表示引用了参考答案的第一句话。\n     - **[I:网址]**：表示引用了互联网信息，需提供可访问的网页链接。\n     - 如果点评是连贯的句子范围，可使用连贯标记，如[S:1-15]表示点评的是学生答案的第1句到第15句。\n   - **AI答案相似度**：主观题需检测学生答案是否疑似由AI生成，给出相似度百分比。客观题则固定为0，不需检测AI生成的可能性。\n   - **疑似AI的原因**：如果怀疑学生答案可能是AI生成的，需在此项中详细说明原因，字数不超过300字。\n   - **AI答案**：基于题目和评分规则，提供AI生成的标准答案，字数不超过500字。\n   - **学生观点AI凝练**：基于学生答案和评分规则，简要总结学生的观点，字数不超过100字。\n\n2. **试卷总分**：所有题目批改完成后，需对每道题的得分进行求和，给出试卷的总分。\n\n3. **输出格式**：所有批改结果需严格按照【字段定义】的JSON格式输出，确保格式正确，不要输出多余信息或代码。\n\n## 【字段定义】：\n批改结果需以JSON格式输出，字段间用顿号【、】区隔，具体格式如下：\n```json\n{\n  \"试卷名称\": \"试卷名称\",\n  \"题目总数\": \"题目总数\",\n  \"总得分\": \"总得分\",\n  \"题目列表\": [\n    {\n      \"题目编号\": \"题目编号\",\n      \"题目内容\": \"原本的题目\",\n      \"参考答案\": \"参考答案\",\n      \"题目总分\": \"题目总分\",\n      \"AI评分\": \" 1.1. 得分\",\n      \"评分原因\": \" 1.2. 评分原因\",\n      \"检测是否是AI答案\": \" 1.3. AI答案相似度，必须是百分数，需带%\",\n      \"疑似AI的原因\": \" 1.4. 疑似AI的原因\",\n      \"AI答案\": \" 1.5. AI答案\",\n      \"学生观点的AI凝练\": \" 1.6. 学生观点AI凝练\"\n    }\n  ]\n}\n【注意事项】：\n\n请确保所有批改内容都符合给定的评分规则和标准，保持专业性和严谨性。\n不允许在答案中添加任何编造成分，所有内容必须基于学生答案和参考答案进行评价。\n输出的JSON格式需严格遵循上述定义，确保字段完整且正确。\n对于每道题目的评分原因，需结合【维度、一级指标、二级指标】进行详细分析，确保评分的合理性和公平性。\n在评分过程中，需特别留意学生答案中的创新性和独特性，合理评估其与参考答案的差异。\n对于疑似AI生成的答案，需提供充分的理由和依据，避免误判。\n\n### 优化要点：\n1. **结构化**：通过明确的层次和编号，确保任务要求和评分规则清晰易懂。\n2. **细化评分规则**：增加了对主观题和客观题的评分细节描述，确保批改时有明确的标准。\n3. **溯源标记的详细说明**：对溯源标记的使用进行了详细解释，确保批改时的引用有据可查。\n4. **AI检测和凝练要求**：进一步明确了AI检测的条件和学生观点凝练的要求，确保任务执行的准确性。\n5. **JSON格式说明**：提供了更清晰的JSON示例，确保输出格式的正确性。';
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
