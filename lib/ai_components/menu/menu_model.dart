import '/ai_components/a_i_agent_card/a_i_agent_card_widget.dart';
import '/ai_components/menu_item/menu_item_widget.dart';
import '/ai_components/menu_item2/menu_item2_widget.dart';
import '/components/sub_menu_item/sub_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'menu_widget.dart' show MenuWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuModel extends FlutterFlowModel<MenuWidget> {
  ///  Local state fields for this component.

  bool subMenuOrders = false;

  bool showUpgrade = true;

  ///  State fields for stateful widgets in this component.

  // Model for MenuItem2 component.
  late MenuItem2Model menuItem2Model1;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel1;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel2;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel3;
  // Model for MenuItem2 component.
  late MenuItem2Model menuItem2Model2;
  // Model for AIAgentCard component.
  late AIAgentCardModel aIAgentCardModel1;
  // Model for AIAgentCard component.
  late AIAgentCardModel aIAgentCardModel2;
  // Model for AIAgentCard component.
  late AIAgentCardModel aIAgentCardModel3;

  @override
  void initState(BuildContext context) {
    menuItem2Model1 = createModel(context, () => MenuItem2Model());
    menuItemModel = createModel(context, () => MenuItemModel());
    subMenuItemModel1 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel2 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel3 = createModel(context, () => SubMenuItemModel());
    menuItem2Model2 = createModel(context, () => MenuItem2Model());
    aIAgentCardModel1 = createModel(context, () => AIAgentCardModel());
    aIAgentCardModel2 = createModel(context, () => AIAgentCardModel());
    aIAgentCardModel3 = createModel(context, () => AIAgentCardModel());
  }

  @override
  void dispose() {
    menuItem2Model1.dispose();
    menuItemModel.dispose();
    subMenuItemModel1.dispose();
    subMenuItemModel2.dispose();
    subMenuItemModel3.dispose();
    menuItem2Model2.dispose();
    aIAgentCardModel1.dispose();
    aIAgentCardModel2.dispose();
    aIAgentCardModel3.dispose();
  }
}
