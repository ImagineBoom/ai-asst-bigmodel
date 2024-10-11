import '/ai_components/header/header_widget.dart';
import '/ai_components/menu/menu_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/divider/divider_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import 'exam_scores_widget.dart' show ExamScoresWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExamScoresModel extends FlutterFlowModel<ExamScoresWidget> {
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

  // Stores action output result for [Backend Call - API (startAIgrading)] action in ExamScores widget.
  ApiCallResponse? apiResultui3AIGrading;
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (autoMakeSureAllaiGrade)] action in Button widget.
  ApiCallResponse? apiResulto6m;
  // Model for Divider component.
  late DividerModel dividerModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<StuAnswerListStruct>();
  // State field(s) for Checkbox widget.
  Map<StuAnswerListStruct, bool> checkboxValueMap = {};
  List<StuAnswerListStruct> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    dividerModel = createModel(context, () => DividerModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    dividerModel.dispose();
    paginatedDataTableController.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
