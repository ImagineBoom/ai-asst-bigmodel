import '/ai_components/class_card/class_card_widget.dart';
import '/ai_components/header/header_widget.dart';
import '/ai_components/menu/menu_widget.dart';
import '/ai_components/new_subject/new_subject_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/divider/divider_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_a_i_widget.dart' show HomeAIWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeAIModel extends FlutterFlowModel<HomeAIWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (asstExamSubjectList)] action in HomeAI widget.
  ApiCallResponse? apiResultx14;
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Divider component.
  late DividerModel dividerModel1;
  // Models for ClassCard dynamic component.
  late FlutterFlowDynamicModels<ClassCardModel> classCardModels;
  // Model for Divider component.
  late DividerModel dividerModel2;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ExamsHistoryItemStruct>();

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    dividerModel1 = createModel(context, () => DividerModel());
    classCardModels = FlutterFlowDynamicModels(() => ClassCardModel());
    dividerModel2 = createModel(context, () => DividerModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    dividerModel1.dispose();
    classCardModels.dispose();
    dividerModel2.dispose();
    paginatedDataTableController.dispose();
  }
}
