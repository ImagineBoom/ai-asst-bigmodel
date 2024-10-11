import '/ai_components/header/header_widget.dart';
import '/ai_components/menu/menu_widget.dart';
import '/components/divider/divider_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'setting_widget.dart' show SettingWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingModel extends FlutterFlowModel<SettingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // State field(s) for LanguageDropDown widget.
  String? languageDropDownValue;
  FormFieldController<String>? languageDropDownValueController;
  // Model for Divider component.
  late DividerModel dividerModel1;
  // State field(s) for TimezoneDropDown widget.
  String? timezoneDropDownValue;
  FormFieldController<String>? timezoneDropDownValueController;
  // Model for Divider component.
  late DividerModel dividerModel2;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for Divider component.
  late DividerModel dividerModel3;
  // State field(s) for NotificationDropDown widget.
  String? notificationDropDownValue;
  FormFieldController<String>? notificationDropDownValueController;
  // Model for Divider component.
  late DividerModel dividerModel4;
  // State field(s) for LocationDropDown widget.
  String? locationDropDownValue;
  FormFieldController<String>? locationDropDownValueController;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    dividerModel1 = createModel(context, () => DividerModel());
    dividerModel2 = createModel(context, () => DividerModel());
    dividerModel3 = createModel(context, () => DividerModel());
    dividerModel4 = createModel(context, () => DividerModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
    dividerModel1.dispose();
    dividerModel2.dispose();
    dividerModel3.dispose();
    dividerModel4.dispose();
  }
}
