import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'new_exam_bank_widget.dart' show NewExamBankWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewExamBankModel extends FlutterFlowModel<NewExamBankWidget> {
  ///  Local state fields for this component.

  ExamBankStruct? newExamBank;
  void updateNewExamBankStruct(Function(ExamBankStruct) updateFn) {
    updateFn(newExamBank ??= ExamBankStruct());
  }

  ///  State fields for stateful widgets in this component.

  // State field(s) for NameTextField widget.
  FocusNode? nameTextFieldFocusNode;
  TextEditingController? nameTextFieldTextController;
  String? Function(BuildContext, String?)? nameTextFieldTextControllerValidator;
  // State field(s) for GroupTextField widget.
  FocusNode? groupTextFieldFocusNode;
  TextEditingController? groupTextFieldTextController;
  String? Function(BuildContext, String?)?
      groupTextFieldTextControllerValidator;
  // State field(s) for DescTextField widget.
  FocusNode? descTextFieldFocusNode;
  TextEditingController? descTextFieldTextController;
  String? Function(BuildContext, String?)? descTextFieldTextControllerValidator;
  // State field(s) for CreatorTextField widget.
  FocusNode? creatorTextFieldFocusNode;
  TextEditingController? creatorTextFieldTextController;
  String? Function(BuildContext, String?)?
      creatorTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (asstExamBankInsert)] action in Button widget.
  ApiCallResponse? bankInsertOut;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameTextFieldFocusNode?.dispose();
    nameTextFieldTextController?.dispose();

    groupTextFieldFocusNode?.dispose();
    groupTextFieldTextController?.dispose();

    descTextFieldFocusNode?.dispose();
    descTextFieldTextController?.dispose();

    creatorTextFieldFocusNode?.dispose();
    creatorTextFieldTextController?.dispose();
  }
}
