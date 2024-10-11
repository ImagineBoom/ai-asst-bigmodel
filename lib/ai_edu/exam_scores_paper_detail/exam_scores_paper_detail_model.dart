import '/ai_components/header/header_widget.dart';
import '/ai_components/menu/menu_widget.dart';
import '/backend/schema/structs/index.dart';
import '/components/a_i_score/a_i_score_widget.dart';
import '/components/divider/divider_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'exam_scores_paper_detail_widget.dart' show ExamScoresPaperDetailWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExamScoresPaperDetailModel
    extends FlutterFlowModel<ExamScoresPaperDetailWidget> {
  ///  Local state fields for this page.

  bool ifPaperDetail = true;

  List<ExamInfoStruct> examInfoList = [];
  void addToExamInfoList(ExamInfoStruct item) => examInfoList.add(item);
  void removeFromExamInfoList(ExamInfoStruct item) => examInfoList.remove(item);
  void removeAtIndexFromExamInfoList(int index) => examInfoList.removeAt(index);
  void insertAtIndexInExamInfoList(int index, ExamInfoStruct item) =>
      examInfoList.insert(index, item);
  void updateExamInfoListAtIndex(
          int index, Function(ExamInfoStruct) updateFn) =>
      examInfoList[index] = updateFn(examInfoList[index]);

  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // Model for Divider component.
  late DividerModel dividerModel;
  // State field(s) for TextField1 widget.
  FocusNode? textField1FocusNode;
  TextEditingController? textField1TextController;
  String? Function(BuildContext, String?)? textField1TextControllerValidator;
  // State field(s) for TextField2 widget.
  FocusNode? textField2FocusNode;
  TextEditingController? textField2TextController;
  String? Function(BuildContext, String?)? textField2TextControllerValidator;
  // State field(s) for TextField3 widget.
  FocusNode? textField3FocusNode;
  TextEditingController? textField3TextController;
  String? Function(BuildContext, String?)? textField3TextControllerValidator;
  // Model for AIScore component.
  late AIScoreModel aIScoreModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    dividerModel = createModel(context, () => DividerModel());
    aIScoreModel = createModel(context, () => AIScoreModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
    dividerModel.dispose();
    textField1FocusNode?.dispose();
    textField1TextController?.dispose();

    textField2FocusNode?.dispose();
    textField2TextController?.dispose();

    textField3FocusNode?.dispose();
    textField3TextController?.dispose();

    aIScoreModel.dispose();
  }

  /// Action blocks.
  Future refresh(BuildContext context) async {}
}
