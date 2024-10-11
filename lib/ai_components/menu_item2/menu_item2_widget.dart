import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_item2_model.dart';
export 'menu_item2_model.dart';

class MenuItem2Widget extends StatefulWidget {
  const MenuItem2Widget({
    super.key,
    String? text,
    this.icon,
    bool? hasNumberTag,
    int? number,
    Color? tagColor,
    bool? hasSubMenu,
    bool? subMenuExpanded,
    bool? isActivePage,
  })  : this.text = text ?? 'null',
        this.hasNumberTag = hasNumberTag ?? true,
        this.number = number ?? 0,
        this.tagColor = tagColor ?? const Color(0xFF6C94E5),
        this.hasSubMenu = hasSubMenu ?? true,
        this.subMenuExpanded = subMenuExpanded ?? true,
        this.isActivePage = isActivePage ?? true;

  final String text;
  final Widget? icon;
  final bool hasNumberTag;
  final int number;
  final Color tagColor;
  final bool hasSubMenu;
  final bool subMenuExpanded;
  final bool isActivePage;

  @override
  State<MenuItem2Widget> createState() => _MenuItem2WidgetState();
}

class _MenuItem2WidgetState extends State<MenuItem2Widget> {
  late MenuItem2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuItem2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            () {
              if (widget!.isActivePage) {
                return FlutterFlowTheme.of(context).brand100;
              } else if (!widget!.isActivePage && _model.mouseRegionHovered!) {
                return FlutterFlowTheme.of(context).neutral100;
              } else {
                return Color(0x00FFFFFF);
              }
            }(),
            Color(0x00FFFFFF),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(),
              child: widget!.icon!,
            ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              Container(
                width: 200.0,
                height: 50.0,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                        child: Text(
                          widget!.text,
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: valueOrDefault<Color>(
                                  widget!.isActivePage
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  FlutterFlowTheme.of(context).secondaryText,
                                ),
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
