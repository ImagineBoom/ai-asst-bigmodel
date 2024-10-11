import '/ai_components/header/header_widget.dart';
import '/ai_components/menu/menu_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'set_stu_answer_widget.dart' show SetStuAnswerWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SetStuAnswerModel extends FlutterFlowModel<SetStuAnswerWidget> {
  ///  Local state fields for this page.

  bool ifPreview = true;

  List<DimensionInfoStruct> examDimensions = [];
  void addToExamDimensions(DimensionInfoStruct item) =>
      examDimensions.add(item);
  void removeFromExamDimensions(DimensionInfoStruct item) =>
      examDimensions.remove(item);
  void removeAtIndexFromExamDimensions(int index) =>
      examDimensions.removeAt(index);
  void insertAtIndexInExamDimensions(int index, DimensionInfoStruct item) =>
      examDimensions.insert(index, item);
  void updateExamDimensionsAtIndex(
          int index, Function(DimensionInfoStruct) updateFn) =>
      examDimensions[index] = updateFn(examDimensions[index]);

  bool ifPreviewBanner = true;

  bool ifSetDimension = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (list)] action in setStuAnswer widget.
  ApiCallResponse? apiResultDimensionList;
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for QuestionTextField widget.
  FocusNode? questionTextFieldFocusNode;
  TextEditingController? questionTextFieldTextController;
  String? Function(BuildContext, String?)?
      questionTextFieldTextControllerValidator;
  // State field(s) for StuNameTextField widget.
  FocusNode? stuNameTextFieldFocusNode;
  TextEditingController? stuNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      stuNameTextFieldTextControllerValidator;
  // State field(s) for StuIDTextField widget.
  FocusNode? stuIDTextFieldFocusNode;
  TextEditingController? stuIDTextFieldTextController;
  String? Function(BuildContext, String?)?
      stuIDTextFieldTextControllerValidator;
  // State field(s) for StudentAnswerTextField widget.
  FocusNode? studentAnswerTextFieldFocusNode;
  TextEditingController? studentAnswerTextFieldTextController;
  String? Function(BuildContext, String?)?
      studentAnswerTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (updateQuestionStudentAnswer)] action in Button widget.
  ApiCallResponse? apiResult5qt;
  // Stores action output result for [Backend Call - API (setAIautoGenerateAnswer)] action in Button widget.
  ApiCallResponse? apiResultwx6;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
    questionTextFieldFocusNode?.dispose();
    questionTextFieldTextController?.dispose();

    stuNameTextFieldFocusNode?.dispose();
    stuNameTextFieldTextController?.dispose();

    stuIDTextFieldFocusNode?.dispose();
    stuIDTextFieldTextController?.dispose();

    studentAnswerTextFieldFocusNode?.dispose();
    studentAnswerTextFieldTextController?.dispose();
  }
}
