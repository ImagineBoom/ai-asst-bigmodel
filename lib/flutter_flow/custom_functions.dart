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

String randomNameFunction() {
  final List<String> surnames = [
    "赵", "钱", "孙", "李", "周", "吴", "郑", "王",
    "冯", "陈", "褚", "卫", "蒋", "沈", "韩", "杨",
    "朱", "秦", "尤", "许", "何", "吕", "施", "张",
    // 添加更多的姓氏以增加多样性
  ];

  final List<String> names = [
    "伟", "芳", "娜", "秀英", "敏", "静", "丽", "强",
    "磊", "军", "洋", "勇", "艳", "杰", "娟", "涛",
    "明", "超", "秀兰", "霞", "平", "刚", "桂英",
    // 添加更多的名字以增加多样性
  ];

  math.Random random = math.Random();

  // 随机选择一个姓氏
  String surname = surnames[random.nextInt(surnames.length)];

  // 随机选择一个名字
  String name = names[random.nextInt(names.length)];

  // 组合姓氏和名字
  return surname + name;
}

double string2num(String num) {
  // convert string type num  to double type result
  try {
    return double.parse(num);
  } catch (e) {
    // 如果解析失败，打印错误并返回0
    print("Error: ${e.toString()}");
    return 0;
  }
}

String grade2Level(double grade) {
  if (grade >= 90) {
    return 'A';
  } else if (grade >= 80) {
    return 'B';
  } else if (grade >= 70) {
    return 'C';
  } else if (grade >= 60) {
    return 'D';
  } else {
    return 'E';
  }
}

int string2int(String input) {
  // 使用Dart内置的哈希码函数
  int hash = input.hashCode;
  // 如果需要正整数，可以使用以下转换
  hash = hash & 0x7FFFFFFF;
  return hash;
}
