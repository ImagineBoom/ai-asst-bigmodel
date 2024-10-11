import '/ai_components/header/header_widget.dart';
import '/ai_components/menu/menu_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'student_portrait_model.dart';
export 'student_portrait_model.dart';

class StudentPortraitWidget extends StatefulWidget {
  const StudentPortraitWidget({super.key});

  @override
  State<StudentPortraitWidget> createState() => _StudentPortraitWidgetState();
}

class _StudentPortraitWidgetState extends State<StudentPortraitWidget> {
  late StudentPortraitModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentPortraitModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultx14 = await AsstExamSubjectListCall.call();

      if ((_model.apiResultx14?.succeeded ?? true)) {
        FFAppState().examSubjectList = AsstExamSubjectListCall.subjectList(
          (_model.apiResultx14?.jsonBody ?? ''),
        )!
            .map((e) => SubjectStruct.maybeFromMap(e))
            .withoutNulls
            .toList()
            .toList()
            .cast<SubjectStruct>();
        safeSetState(() {});
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              '查询学科成功！',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: Duration(milliseconds: 1500),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              '查询学科失败！',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: Duration(milliseconds: 1500),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.menuModel,
                        updateCallback: () => safeSetState(() {}),
                        updateOnChange: true,
                        child: MenuWidget(
                          activePageName: 'Dashboard',
                          pageIsInSubMenu: false,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.headerModel,
                              updateCallback: () => safeSetState(() {}),
                              updateOnChange: true,
                              child: HeaderWidget(),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .textFieldBachGround,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.subHeaderModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SubHeaderWidget(
                                          title: '智能批阅板块-学生画像',
                                          showBackBtn:
                                              _model.menuModel.showUpgrade,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          constraints:
                                                              BoxConstraints(
                                                            maxWidth: functions
                                                                .responsiveMaxWidth(
                                                                    1.0,
                                                                    2.0,
                                                                    1,
                                                                    MediaQuery.sizeOf(
                                                                            context)
                                                                        .width,
                                                                    100.0),
                                                          ),
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Wrap(
                                                                  spacing: 12.0,
                                                                  runSpacing:
                                                                      12.0,
                                                                  alignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      WrapCrossAlignment
                                                                          .center,
                                                                  direction: Axis
                                                                      .horizontal,
                                                                  runAlignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                  verticalDirection:
                                                                      VerticalDirection
                                                                          .down,
                                                                  clipBehavior:
                                                                      Clip.none,
                                                                  children: [
                                                                    Container(
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth: functions.responsiveMaxWidth(
                                                                            1.0,
                                                                            4.0,
                                                                            2,
                                                                            MediaQuery.sizeOf(context).width,
                                                                            124.0),
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                    ),
                                                                    Container(
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth: functions.responsiveMaxWidth(
                                                                            1.0,
                                                                            4.0,
                                                                            2,
                                                                            MediaQuery.sizeOf(context).width,
                                                                            124.0),
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          constraints:
                                                              BoxConstraints(
                                                            maxWidth: functions
                                                                .responsiveMaxWidth(
                                                                    1.0,
                                                                    2.0,
                                                                    1,
                                                                    MediaQuery.sizeOf(
                                                                            context)
                                                                        .width,
                                                                    100.0),
                                                          ),
                                                          decoration:
                                                              BoxDecoration(),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(height: 24.0))
                                              .addToStart(
                                                  SizedBox(height: 24.0))
                                              .addToEnd(SizedBox(height: 24.0)),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 10.0, 20.0, 20.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 10.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
