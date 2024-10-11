import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'divider_model.dart';
export 'divider_model.dart';

class DividerWidget extends StatefulWidget {
  const DividerWidget({
    super.key,
    this.title,
    bool? titleInLeftSide,
    this.curSemester,
  }) : this.titleInLeftSide = titleInLeftSide ?? false;

  final String? title;
  final bool titleInLeftSide;
  final String? curSemester;

  @override
  State<DividerWidget> createState() => _DividerWidgetState();
}

class _DividerWidgetState extends State<DividerWidget> {
  late DividerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DividerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (!widget!.titleInLeftSide)
            Expanded(
              child: Container(
                height: 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).neutral300,
                ),
              ),
            ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if ((widget!.title != null && widget!.title != '') &&
                  !widget!.titleInLeftSide)
                Container(
                  width: 16.0,
                  height: 1.0,
                  decoration: BoxDecoration(),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget!.curSemester,
                    '2024秋季学期',
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              height: 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).neutral300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
