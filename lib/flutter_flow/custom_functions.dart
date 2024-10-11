import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

double responsiveMaxWidth(
  double howManySlices,
  double slices,
  int tabletSlices,
  double screenWidth,
  double lRpaddings,
) {
  double mobileWid = 479;
  double desktopWid = 1280;

  double wdesktopmenu = 290;
  double wtabletmenu = 90;

  if (screenWidth <= mobileWid) {
    return (screenWidth);
  }
  if (screenWidth > mobileWid && screenWidth < desktopWid) {
    double eachSectionSize =
        ((screenWidth - (lRpaddings + wtabletmenu)) / tabletSlices);
    double section = eachSectionSize * howManySlices;
    return section;
    //return (wid - (lRpaddings + wtabletmenu));
  }
  if (screenWidth >= desktopWid) {
    double eachSectionSize =
        ((screenWidth - (lRpaddings + wdesktopmenu)) / slices);
    double section = eachSectionSize * howManySlices;
    return section;
  }
  return 420;
}

String aiTag2Color(String aiTagName) {
  switch (aiTagName) {
    case "疑似AI" || "人工介入":
      return '#FF4332';
    case "高分试卷":
      return '#9B30FF';
    case "完美试卷":
      return '#66B949';
    case '雷同试卷':
      return '#F2C94C';
    default:
      return '#00FF00';
  }
}

String getPromptFromDimension(List<ExamDimensionStruct> examDimensions) {
  // extract List<ExamDimensionStruct> to String, each dimension to a triple  group
  String dimensions = examDimensions
      .map((dimension) =>
          '(${dimension.analyseDimension}, ${dimension.firstClassification}, ${dimension.secondClassification})')
      .join(', ');
  String asst_exam_course_name = "现代建筑学";
  String asst_exam_chapter_name = "现代建筑学";
  String core_field_recall = "创新";
  String exam_context = """
## 角色：你是一个专业的${asst_exam_course_name}课程老师 ，现在需要你批改一套${asst_exam_course_name}的${asst_exam_chapter_name}试卷，需要按照以下【任务要求】执行。

## 【评分规则】：
- 如果【题目类型】是主观题，学生答案需要围绕（维度,一级指标,二级指标）内容以及【参考答案】展开，必须包含的核心字段有：${core_field_recall}，越贴近得分越高。
- 如果【题目类型】是客观题，学生答案只需要与参考答案进行匹配，相似度越高，得分越高，参考答案中的关键名字不能写错，写错需要扣分。

##（维度,一级指标,二级指标）：
${dimensions}

## 【任务要求】：
1. 对于学生回答的每道题目需要给出评分、评分原因、AI答案相似度、疑似AI的原因、AI答案、学生观点AI凝练。
1.1. 评分：根据【评分规则】评分，最高得分不能超过题目的最大分数，最低分不小于0分。评分的依据在【评分原因】项中给出。
1.2. 【评分原因】：每道题目的评分原因的内容不能超过300字。每个句号后面需要加上溯源标记，溯源标记有三种[S:1]、[A:1]、[I:网址]。[S:1]，代表是学生答案的第一句话的点评，如果是连贯的溯源则需要[S:1-15],代表学生答案的第一句到第15句；[A:1]，代表引用了参考答案的第一句话；[I:网址]，代表引用了网址链接中的互联网信息，需要给出可访问的网页链接。根据情况使用这三种标记。
1.3. AI答案相似度：表示学生答案疑似AI的概率。如果【题目类型】是客观题，则该项的值为0，表示客观题答案固定，不需要检测是否是使用AI生成的答案。如果【题目类型】是主观题，则该项的值为百分数，表示学生答案疑似AI的概率。原因在【疑似AI的原因】项中给出。
1.4. 【疑似AI的原因】：给出学生答案疑似AI的原因，不超过300字。
1.5. AI答案：AI答案不超过500字，AI答案需要根据题目和评分规则给出。
1.6. 学生观点AI凝练：凝练学生观点不超过100字，凝练学生观点需要基于学生答案和评分规则给出。
2. 所有题目批改完成后需要对所有题目的得分求和，给出试卷总分。
3. 输出内容由【字段定义】给出。

##【字段定义】：
试卷和题目请严格按照如下格式仅输出JSON，不要输出python代码，不要返回多余信息，JSON中有多个字段用顿号【、】区隔：
### JSON字段：
{{
  "试卷名称": "试卷名称",
  "题目总数": "题目总数",
  "总得分": "总得分",
  "题目列表":[
    {{
        "题目编号": "题目编号",
        "题目内容": "原本的题目",
        "参考答案": "参考答案",
        "题目总分": "题目总分",
        "AI评分": " 1.1. 得分" ,
        "评分原因": " 1.2. 评分原因”,
        "检测是否是AI答案": " 1.3. AI答案相似度，必须是百分数,需要带%",
        "疑似AI的原因": " 1.4.【疑似AI的原因】",
        "AI答案": " 1.5. AI答案",
        "学生观点的AI凝练": " 1.6. 学生观点使用AI凝练"
    }}
    ]
  ...
}}

## 注意事项：
1. 基于给出的内容，专业和严谨的回答问题。不允许在答案中添加任何编造成分。

  """;

  return exam_context;
}

List<TeacherCommentStruct> jsonToListTeacherComment(List<dynamic> listJson) {
  List<TeacherCommentStruct> comments = listJson.map((json) {
    return TeacherCommentStruct(
      id: json['id'],
      asstExamAnswerId: json['asstExamAnswerId'],
      asstInfoTeacherId: json['asstInfoTeacherId'],
      type: json['type'],
      group: json['group'],
      originalText: json['originalText'],
      comment: json['comment'],
      creator: json['creator'],
      dataStatus: json['dataStatus'],
      createTime: json['createTime'],
      updateTime: json['updateTime'],
      finishTime: json['finishTime'],
    );
  }).toList();

  return comments;
}

ExamInfoStruct jsonToExamInfo(String jsonString) {
  final parsedJson = jsonDecode(jsonString);

  List<QuestionInfoStruct> questions = [];
  var questionListJson = parsedJson["题目列表"];
  for (var questionJson in questionListJson) {
    questions.add(QuestionInfoStruct(
        questionId: questionJson["题目编号"],
        questionContent: questionJson["题目内容"],
        referenceAnswer: questionJson["参考答案"],
        totalScore: questionJson["题目总分"],
        aiScore: questionJson["AI评分"],
        reasonForScore: questionJson["评分原因"],
        aiAnswerSimilarity: questionJson["检测是否是AI答案"],
        suspectedAiReason: questionJson["疑似AI的原因"],
        aiAnswer: questionJson["AI答案"],
        aiCondensationOfStudent: questionJson["学生观点的AI凝练"]));
  }

  return ExamInfoStruct(
    examName: parsedJson["试卷名称"],
    examQuestionNums: parsedJson["题目总数"],
    examTotalScore: parsedJson["总得分"],
    questionList: questions,
  );
}

String questionList2ScorePoints(List<QuestionInfoStruct> questions) {
  String q_context = "";
  for (QuestionInfoStruct q in questions) {
//     q_context += """
// 题目编号：${q.questionId}

// AI评分: ${q.aiScore}

// AI评分依据: ${q.reasonForScore}

// AI凝练的学生观点: ${q.aiCondensationOfStudent}

// AI答案及命中点: ${q.aiAnswer}

// 检测为AI答案可疑度: ${q.aiAnswerSimilarity}

// 疑似AI的原因: ${q.suspectedAiReason}

//     """;
    q_context += """
题目编号: 1

AI评分: ${q.aiScore}

AI评分依据: 学生答案完整且准确地阐述了功能主义在现代建筑设计中的原则，包括形式服从功能、简洁性、经济性、通用性、灵活性等，并结合了范斯沃斯住宅、柏林新国家美术馆、联合国总部大厦等具体建筑实例进行说明，与参考答案内容一致。[S:1-12][A:1-12]

AI凝练的学生观点: 学生详细阐述了功能主义原则及多个建筑实例，对功能主义在现代建筑设计中的应用理解准确。

AI答案及命中点: 功能主义的原则包括形式追随功能、简洁性、灵活性、人本设计等。实例如巴西利亚国会大厦、范斯沃斯住宅、柏林新国家美术馆、联合国总部大厦等，均很好地展示了功能主义在现代建筑设计中的应用。

检测为AI答案可疑度: 10%

疑似AI的原因: 缺乏个人风格。答案可能缺少明显的个人写作风格或情感投入，这可能让人怀疑其是否由AI生成。

    """;
  }

  return q_context;
}

String listTeacherCommentToString(
    List<TeacherCommentStruct> teacherCommentList) {
  String c_context = "";
  for (TeacherCommentStruct c in teacherCommentList) {
    c_context += """
评论原文：${c.originalText}
评论内容: ${c.comment}
评论时间: ${c.updateTime}
评论人: ${c.creator}

    """;
  }
  return c_context;
}
