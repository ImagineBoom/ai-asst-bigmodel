import '/ai_components/address_row/address_row_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'property_card2_widget.dart' show PropertyCard2Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PropertyCard2Model extends FlutterFlowModel<PropertyCard2Widget> {
  ///  Local state fields for this component.

  bool favoritedInside = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for AddressRow component.
  late AddressRowModel addressRowModel;

  @override
  void initState(BuildContext context) {
    addressRowModel = createModel(context, () => AddressRowModel());
  }

  @override
  void dispose() {
    addressRowModel.dispose();
  }
}
