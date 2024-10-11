import '/ai_components/a_i_agent_card/a_i_agent_card_widget.dart';
import '/ai_components/menu_item/menu_item_widget.dart';
import '/ai_components/menu_item2/menu_item2_widget.dart';
import '/components/sub_menu_item/sub_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({
    super.key,
    required this.activePageName,
    bool? pageIsInSubMenu,
    this.subMenuName,
  }) : this.pageIsInSubMenu = pageIsInSubMenu ?? false;

  final String? activePageName;
  final bool pageIsInSubMenu;
  final String? subMenuName;

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> with TickerProviderStateMixin {
  late MenuModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 0.5,
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
      height: double.infinity,
      constraints: BoxConstraints(
        minWidth: 90.0,
        maxWidth: 290.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.asset(
                        'assets/images/th.jpeg',
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      '清华大学',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: Icon(
                      Icons.menu_open_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ).animateOnActionTrigger(
                      animationsMap['iconOnActionTriggerAnimation']!,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.menuItem2Model1,
                        updateCallback: () => safeSetState(() {}),
                        updateOnChange: true,
                        child: MenuItem2Widget(
                          isActivePage: false,
                          text: '功能台',
                          icon: Icon(
                            Icons.dashboard_outlined,
                          ),
                          hasNumberTag: false,
                          hasSubMenu: false,
                          subMenuExpanded: false,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.subMenuOrders = !_model.subMenuOrders;
                              safeSetState(() {});

                              context.pushNamed('HomeAI');
                            },
                            child: wrapWithModel(
                              model: _model.menuItemModel,
                              updateCallback: () => safeSetState(() {}),
                              child: MenuItemWidget(
                                isActivePage: true,
                                text: '智能批阅',
                                icon: Icon(
                                  Icons.receipt_long_sharp,
                                  color: FlutterFlowTheme.of(context).gray400,
                                  size: 24.0,
                                ),
                                hasNumberTag: false,
                                number: 5,
                                tagColor:
                                    FlutterFlowTheme.of(context).secondary,
                                hasSubMenu: true,
                                subMenuExpanded: _model.subMenuOrders,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0x80EFF3FA),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Visibility(
                              visible: _model.subMenuOrders,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        width: 50.0,
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .neutral200,
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tablet: false,
                                        tabletLandscape: false,
                                      ))
                                        Container(
                                          width: 200.0,
                                          height: 1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .neutral200,
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                        ),
                                    ],
                                  ),
                                  wrapWithModel(
                                    model: _model.subMenuItemModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SubMenuItemWidget(
                                      text: '新建批阅',
                                      icon: Icon(
                                        Icons.history,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.subMenuItemModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SubMenuItemWidget(
                                      text: '批阅报告',
                                      icon: Icon(
                                        Icons.library_books_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.subMenuItemModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SubMenuItemWidget(
                                      text: '批阅历史',
                                      icon: Icon(
                                        Icons.history,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ).animateOnPageLoad(
                                  animationsMap['columnOnPageLoadAnimation']!),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('HomeAI');
                        },
                        child: wrapWithModel(
                          model: _model.menuItem2Model2,
                          updateCallback: () => safeSetState(() {}),
                          child: MenuItem2Widget(
                            isActivePage: false,
                            text: '学生肖像',
                            icon: Icon(
                              Icons.message_outlined,
                            ),
                            hasNumberTag: false,
                            hasSubMenu: false,
                            subMenuExpanded: false,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 44.0,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .textFieldBachGround,
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  Container(
                                    width: 200.0,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .textFieldBachGround,
                                    ),
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 44.0,
                                  height: 44.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Icon(
                                    Icons.person_add_alt,
                                    color:
                                        FlutterFlowTheme.of(context).neutral400,
                                    size: 20.0,
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  Container(
                                    width: 200.0,
                                    height: 44.0,
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'AI小助智能体',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .neutral400,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        AlignedTooltip(
                                          content: Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: Text(
                                              'Find to start conversation',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        fontSize: 11.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          offset: 4.0,
                                          preferredDirection:
                                              AxisDirection.right,
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .textFieldBachGround,
                                          elevation: 4.0,
                                          tailBaseWidth: 16.0,
                                          tailLength: 8.0,
                                          waitDuration:
                                              Duration(milliseconds: 50),
                                          showDuration:
                                              Duration(milliseconds: 400),
                                          triggerMode: TooltipTriggerMode.tap,
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 8.0,
                                            buttonSize: 32.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .neutral100,
                                            icon: Icon(
                                              Icons.manage_search_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 16.0,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          wrapWithModel(
                            model: _model.aIAgentCardModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: AIAgentCardWidget(
                              avatar:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/dashboard3-qec5wj/assets/l23vedpjeat7/avator2.jpeg',
                              displayName: 'Agent1',
                              email: '1',
                              role: 'math ai assist',
                              actionStartChat: () async {},
                            ),
                          ),
                          wrapWithModel(
                            model: _model.aIAgentCardModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: AIAgentCardWidget(
                              avatar:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/dashboard3-qec5wj/assets/apazymlougja/avator1.jpg',
                              displayName: 'Agent2',
                              email: '2',
                              role: 'english ai assist',
                              actionStartChat: () async {},
                            ),
                          ),
                          wrapWithModel(
                            model: _model.aIAgentCardModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: AIAgentCardWidget(
                              avatar:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/dashboard3-qec5wj/assets/1rcg09cj0qqu/avator3.jpeg',
                              displayName: 'Agent3',
                              email: '3',
                              role: 'logic ai assist\n',
                              actionStartChat: () async {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                      ))
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (_model.showUpgrade)
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .textFieldBachGround,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'AI Agent!',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  'Upgrade and get the AI agent, Buy your agent that works for you 24/9',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        lineHeight: 1.3,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 8.0,
                                        buttonSize: 30.0,
                                        hoverColor: Colors.transparent,
                                        icon: Icon(
                                          Icons.close_outlined,
                                          color: Color(0xFF0B27DD),
                                          size: 18.0,
                                        ),
                                        onPressed: () async {
                                          _model.showUpgrade = false;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('LoginPage');
                        },
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Icon(
                                    Icons.logout,
                                    color: FlutterFlowTheme.of(context).error,
                                    size: 24.0,
                                  ),
                                ),
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
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Logout',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ].divide(SizedBox(height: 24.0)).addToStart(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
