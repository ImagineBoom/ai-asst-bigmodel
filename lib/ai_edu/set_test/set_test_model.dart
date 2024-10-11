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
import 'set_test_widget.dart' show SetTestWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SetTestModel extends FlutterFlowModel<SetTestWidget> {
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
  // State field(s) for AnswerTextField widget.
  FocusNode? answerTextFieldFocusNode;
  TextEditingController? answerTextFieldTextController;
  String? Function(BuildContext, String?)?
      answerTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (updateQuestionContentStandardAnswer)] action in Button widget.
  ApiCallResponse? apiResultri8;

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

    answerTextFieldFocusNode?.dispose();
    answerTextFieldTextController?.dispose();
  }
}
