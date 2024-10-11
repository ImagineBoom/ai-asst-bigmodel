import '/ai_components/header/header_widget.dart';
import '/ai_components/menu/menu_widget.dart';
import '/components/order_items/order_items_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'my_order_widget.dart' show MyOrderWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyOrderModel extends FlutterFlowModel<MyOrderWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel1;
  // Model for OrderItems component.
  late OrderItemsModel orderItemsModel1;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel2;
  // Model for OrderItems component.
  late OrderItemsModel orderItemsModel2;
  // Model for OrderItems component.
  late OrderItemsModel orderItemsModel3;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel1 = createModel(context, () => SubHeaderModel());
    orderItemsModel1 = createModel(context, () => OrderItemsModel());
    subHeaderModel2 = createModel(context, () => SubHeaderModel());
    orderItemsModel2 = createModel(context, () => OrderItemsModel());
    orderItemsModel3 = createModel(context, () => OrderItemsModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel1.dispose();
    orderItemsModel1.dispose();
    subHeaderModel2.dispose();
    orderItemsModel2.dispose();
    orderItemsModel3.dispose();
  }
}
