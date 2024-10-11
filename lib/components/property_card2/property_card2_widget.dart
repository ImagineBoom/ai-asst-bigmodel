import '/ai_components/address_row/address_row_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'property_card2_model.dart';
export 'property_card2_model.dart';

class PropertyCard2Widget extends StatefulWidget {
  const PropertyCard2Widget({
    super.key,
    required this.image,
    required this.title,
    required this.address,
    required this.bedsNum,
    required this.bathNum,
    required this.sqfNum,
    required this.price,
    bool? favorited,
    this.classname,
    this.clas,
    this.classStudentNum,
    this.classDate,
    this.courseCover,
  }) : this.favorited = favorited ?? false;

  final String? image;
  final String? title;
  final String? address;
  final int? bedsNum;
  final int? bathNum;
  final int? sqfNum;
  final double? price;
  final bool favorited;
  final String? classname;
  final String? clas;
  final String? classStudentNum;
  final String? classDate;
  final Color? courseCover;

  @override
  State<PropertyCard2Widget> createState() => _PropertyCard2WidgetState();
}

class _PropertyCard2WidgetState extends State<PropertyCard2Widget>
    with TickerProviderStateMixin {
  late PropertyCard2Model _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertyCard2Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.favoritedInside = widget!.favorited;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });

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
        width: 320.0,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                Container(
                  width: double.infinity,
                  height: 180.0,
                  child: Stack(
                    children: [
                      if (_model.mouseRegionHovered ?? true)
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: widget!.courseCover,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget!.classname,
                                  '工程管理中的财务与投资',
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation']!),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 45.0,
                          decoration: BoxDecoration(),
                        ),
                        if (_model.mouseRegionHovered ?? true)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).blurBg,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 22.0,
                                      color: Color(0x33000000),
                                      offset: Offset(
                                        0.0,
                                        12.0,
                                      ),
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                child: ClipOval(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 2.0,
                                      sigmaY: 2.0,
                                    ),
                                    child: ToggleIcon(
                                      onPressed: () async {
                                        safeSetState(() =>
                                            _model.favoritedInside =
                                                !_model.favoritedInside);
                                      },
                                      value: _model.favoritedInside,
                                      onIcon: Icon(
                                        Icons.insert_chart_outlined_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        size: 25.0,
                                      ),
                                      offIcon: Icon(
                                        Icons.analytics,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        size: 25.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 25.0)),
                          ).animateOnPageLoad(
                              animationsMap['rowOnPageLoadAnimation']!),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: wrapWithModel(
                    model: _model.addressRowModel,
                    updateCallback: () => safeSetState(() {}),
                    child: AddressRowWidget(
                      address: widget!.address!,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(3.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.date_range_outlined,
                        color: FlutterFlowTheme.of(context).neutral300,
                        size: 24.0,
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget!.classDate,
                          '2024/9/28 16:00~18:00',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(SizedBox(width: 3.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.people_outline,
                        color: FlutterFlowTheme.of(context).neutral300,
                        size: 24.0,
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget!.classStudentNum,
                          '0',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(SizedBox(width: 3.0)),
                  ),
                ].divide(SizedBox(width: 25.0)),
              ),
            ),
          ].divide(SizedBox(height: 12.0)),
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
