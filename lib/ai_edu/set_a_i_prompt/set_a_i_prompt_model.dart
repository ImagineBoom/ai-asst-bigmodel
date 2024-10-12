import '/ai_components/a_i_prompt_preview/a_i_prompt_preview_widget.dart';
import '/ai_components/header/header_widget.dart';
import '/ai_components/menu/menu_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'set_a_i_prompt_widget.dart' show SetAIPromptWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SetAIPromptModel extends FlutterFlowModel<SetAIPromptWidget> {
  ///  Local state fields for this page.

  bool ifPreview = true;

  List<ExamDimensionStruct> examDimensions = [];
  void addToExamDimensions(ExamDimensionStruct item) =>
      examDimensions.add(item);
  void removeFromExamDimensions(ExamDimensionStruct item) =>
      examDimensions.remove(item);
  void removeAtIndexFromExamDimensions(int index) =>
      examDimensions.removeAt(index);
  void insertAtIndexInExamDimensions(int index, ExamDimensionStruct item) =>
      examDimensions.insert(index, item);
  void updateExamDimensionsAtIndex(
          int index, Function(ExamDimensionStruct) updateFn) =>
      examDimensions[index] = updateFn(examDimensions[index]);

  bool ifPreviewBanner = true;

  bool ifSetDimension = false;

  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ExamDimensionStruct>();
  // State field(s) for Checkbox widget.
  Map<ExamDimensionStruct, bool> checkboxValueMap = {};
  List<ExamDimensionStruct> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for AIPromptPreview component.
  late AIPromptPreviewModel aIPromptPreviewModel;
  // State field(s) for DimensionDropDown widget.
  String? dimensionDropDownValue;
  FormFieldController<String>? dimensionDropDownValueController;
  // State field(s) for DimensionTextField widget.
  FocusNode? dimensionTextFieldFocusNode;
  TextEditingController? dimensionTextFieldTextController;
  String? Function(BuildContext, String?)?
      dimensionTextFieldTextControllerValidator;
  // State field(s) for FirstDropDown widget.
  String? firstDropDownValue;
  FormFieldController<String>? firstDropDownValueController;
  // State field(s) for FirstTextField widget.
  FocusNode? firstTextFieldFocusNode;
  TextEditingController? firstTextFieldTextController;
  String? Function(BuildContext, String?)?
      firstTextFieldTextControllerValidator;
  // State field(s) for SecondDropDown widget.
  String? secondDropDownValue;
  FormFieldController<String>? secondDropDownValueController;
  // State field(s) for SecondTextField widget.
  FocusNode? secondTextFieldFocusNode;
  TextEditingController? secondTextFieldTextController;
  String? Function(BuildContext, String?)?
      secondTextFieldTextControllerValidator;
  // State field(s) for CoreFieldDropDown widget.
  String? coreFieldDropDownValue;
  FormFieldController<String>? coreFieldDropDownValueController;
  // State field(s) for CoreFieldTextField widget.
  FocusNode? coreFieldTextFieldFocusNode;
  TextEditingController? coreFieldTextFieldTextController;
  String? Function(BuildContext, String?)?
      coreFieldTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (addDimension)] action in Button widget.
  ApiCallResponse? apiResultDimensionInsertOut;
  Completer<ApiCallResponse>? apiRequestCompleter;

  /// Query cache managers for this widget.

  final _getQuestionManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> getQuestion({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _getQuestionManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearGetQuestionCache() => _getQuestionManager.clear();
  void clearGetQuestionCacheKey(String? uniqueKey) =>
      _getQuestionManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    aIPromptPreviewModel = createModel(context, () => AIPromptPreviewModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
    paginatedDataTableController.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    aIPromptPreviewModel.dispose();
    dimensionTextFieldFocusNode?.dispose();
    dimensionTextFieldTextController?.dispose();

    firstTextFieldFocusNode?.dispose();
    firstTextFieldTextController?.dispose();

    secondTextFieldFocusNode?.dispose();
    secondTextFieldTextController?.dispose();

    coreFieldTextFieldFocusNode?.dispose();
    coreFieldTextFieldTextController?.dispose();

    /// Dispose query cache managers for this widget.

    clearGetQuestionCache();
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
