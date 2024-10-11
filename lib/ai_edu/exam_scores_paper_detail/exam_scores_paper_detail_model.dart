import '/ai_components/header/header_widget.dart';
import '/ai_components/menu/menu_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/a_i_score/a_i_score_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'exam_scores_paper_detail_widget.dart' show ExamScoresPaperDetailWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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

  bool makeSureStuScore = false;

  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for teacherScoreTextField widget.
  FocusNode? teacherScoreTextFieldFocusNode;
  TextEditingController? teacherScoreTextFieldTextController;
  String? Function(BuildContext, String?)?
      teacherScoreTextFieldTextControllerValidator;
  // State field(s) for stuScoreLevelTextField widget.
  FocusNode? stuScoreLevelTextFieldFocusNode;
  TextEditingController? stuScoreLevelTextFieldTextController;
  String? Function(BuildContext, String?)?
      stuScoreLevelTextFieldTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for teacherScoreReasonTextField widget.
  FocusNode? teacherScoreReasonTextFieldFocusNode;
  TextEditingController? teacherScoreReasonTextFieldTextController;
  String? Function(BuildContext, String?)?
      teacherScoreReasonTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (makeSureAIgrade)] action in Button widget.
  ApiCallResponse? apiResultgth;
  // Model for AIScore component.
  late AIScoreModel aIScoreModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    aIScoreModel = createModel(context, () => AIScoreModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    teacherScoreTextFieldFocusNode?.dispose();
    teacherScoreTextFieldTextController?.dispose();

    stuScoreLevelTextFieldFocusNode?.dispose();
    stuScoreLevelTextFieldTextController?.dispose();

    textFieldFocusNode5?.dispose();
    textController7?.dispose();

    teacherScoreReasonTextFieldFocusNode?.dispose();
    teacherScoreReasonTextFieldTextController?.dispose();

    aIScoreModel.dispose();
  }

  /// Action blocks.
  Future refresh(BuildContext context) async {}
}
