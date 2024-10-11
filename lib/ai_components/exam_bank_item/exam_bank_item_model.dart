import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'exam_bank_item_widget.dart' show ExamBankItemWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExamBankItemModel extends FlutterFlowModel<ExamBankItemWidget> {
  ///  Local state fields for this component.

  String state = '还未出题';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - documentPicker] action in Button widget.
  FFUploadedFile? fileData;
  // Stores action output result for [Backend Call - API (asstExamPaperUpload)] action in Button widget.
  ApiCallResponse? apiResultUploadPaper;
  // Stores action output result for [Custom Action - documentPicker] action in Button widget.
  FFUploadedFile? fileDataAnswer;
  // Stores action output result for [Backend Call - API (studentInsert)] action in Button widget.
  ApiCallResponse? createStuOut;
  // Stores action output result for [Backend Call - API (asstExamAnswerUpload)] action in Button widget.
  ApiCallResponse? apiResultUploadAnswer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
