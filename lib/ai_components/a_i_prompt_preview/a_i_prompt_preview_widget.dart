import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'a_i_prompt_preview_model.dart';
export 'a_i_prompt_preview_model.dart';

class AIPromptPreviewWidget extends StatefulWidget {
  const AIPromptPreviewWidget({
    super.key,
    required this.ifPreview,
  });

  final bool? ifPreview;

  @override
  State<AIPromptPreviewWidget> createState() => _AIPromptPreviewWidgetState();
}

class _AIPromptPreviewWidgetState extends State<AIPromptPreviewWidget> {
  late AIPromptPreviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AIPromptPreviewModel());

    _model.textController1 ??=
        TextEditingController(text: FFAppState().examPrompt);
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??=
        TextEditingController(text: FFAppState().optimisedPromptFromAI);
    _model.textFieldFocusNode2 ??= FocusNode();
    _model.textFieldFocusNode2!.addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: FFAppState().ifPreviewPrompt,
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          width: 1200.0,
          height: 800.0,
          constraints: BoxConstraints(
            maxWidth: double.infinity,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 12.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  5.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: Color(0xA3344A92),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '预览效果',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 44.0,
                          icon: Icon(
                            Icons.close_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            FFAppState().ifPreviewPrompt = false;
                            safeSetState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 322.0,
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 5.0, 0.0),
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  curve: Curves.easeInOut,
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 12.0, 8.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 4.0),
                                                    child: Text(
                                                      'Prompt',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      FFButtonWidget(
                                                        onPressed: () async {
                                                          await Future.delayed(
                                                              const Duration(
                                                                  milliseconds:
                                                                      1000));
                                                          FFAppState()
                                                                  .optimisedPromptFromAI =
                                                              '## 角色：你是一位专业的现代建筑学课程教师，负责批改一套现代建筑学试卷。请按照以下【任务要求】严格执行批改工作。  ## 【评分规则】： - **主观题**：学生的答案应围绕【维度、一级指标、二级指标】的内容展开，并与【参考答案】进行对比。答案中必须包含的核心字段为：**创新**。学生的答案越贴近【参考答案】和核心字段，得分越高。创新性和合理性是评分的关键。 - **客观题**：学生的答案需与【参考答案】直接匹配，答案的相似度越高，得分越高。特别注意，参考答案中的关键名词或术语不能写错，写错将扣分。  ## 【维度、一级指标、二级指标】： 批改主观题时，需依据以下维度及其对应的一级指标和二级指标进行评估： - **功能性**：   - 空间布局：功能分区合理性   - 功能完整度：功能适应性   - 流线组织：人流、物流、车流合理性 - **安全性**：   - 结构安全：结构稳定性   - 消防安全：消防设施完善度   - 人身安全：防滑措施 - **美观性**：   - 造型设计：立面美观度   - 色彩搭配：色彩协调性   - 景观融合：建筑与周边环境协调性 - **经济性**：   - 投资预算：投资估算准确性   - 成本控制：材料成本 - **环保性**：   - 节能措施：保温隔热性能   - 环保材料：绿色建材使用率 - **社会性**：   - 地域文化：建筑地域特色   - 人文关怀：无障碍设施  ## 【任务要求】： 1. **批改每道题目时**，需提供以下信息：评分、评分原因、AI答案相似度、疑似AI的原因、AI答案、学生观点AI凝练。    - **评分**：根据【评分规则】给出分数，最高得分不能超过题目的最大分数，最低分不应小于0分。评分的具体依据需在【评分原因】中详细说明。    - **评分原因**：每道题目的评分原因需控制在300字以内。每个点评后的句号后需加上溯源标记。溯源标记有三种形式：      - **[S:1]**：表示点评的是学生答案的第一句话。      - **[A:1]**：表示引用了参考答案的第一句话。      - **[I:网址]**：表示引用了互联网信息，需提供可访问的网页链接。      - 如果点评是连贯的句子范围，可使用连贯标记，如[S:1-15]表示点评的是学生答案的第1句到第15句。    - **AI答案相似度**：主观题需检测学生答案是否疑似由AI生成，给出相似度百分比。客观题则固定为0，不需检测AI生成的可能性。    - **疑似AI的原因**：如果怀疑学生答案可能是AI生成的，需在此项中详细说明原因，字数不超过300字。    - **AI答案**：基于题目和评分规则，提供AI生成的标准答案，字数不超过500字。    - **学生观点AI凝练**：基于学生答案和评分规则，简要总结学生的观点，字数不超过100字。  2. **试卷总分**：所有题目批改完成后，需对每道题的得分进行求和，给出试卷的总分。  3. **输出格式**：所有批改结果需严格按照【字段定义】的JSON格式输出，确保格式正确，不要输出多余信息或代码。  ## 【字段定义】： 批改结果需以JSON格式输出，字段间用顿号【、】区隔，具体格式如下： ```json {   \"试卷名称\": \"试卷名称\",   \"题目总数\": \"题目总数\",   \"总得分\": \"总得分\",   \"题目列表\": [     {       \"题目编号\": \"题目编号\",       \"题目内容\": \"原本的题目\",       \"参考答案\": \"参考答案\",       \"题目总分\": \"题目总分\",       \"AI评分\": \" 1.1. 得分\",       \"评分原因\": \" 1.2. 评分原因\",       \"检测是否是AI答案\": \" 1.3. AI答案相似度，必须是百分数，需带%\",       \"疑似AI的原因\": \" 1.4. 疑似AI的原因\",       \"AI答案\": \" 1.5. AI答案\",       \"学生观点的AI凝练\": \" 1.6. 学生观点AI凝练\"     }   ] } 【注意事项】：  请确保所有批改内容都符合给定的评分规则和标准，保持专业性和严谨性。 不允许在答案中添加任何编造成分，所有内容必须基于学生答案和参考答案进行评价。 输出的JSON格式需严格遵循上述定义，确保字段完整且正确。 对于每道题目的评分原因，需结合【维度、一级指标、二级指标】进行详细分析，确保评分的合理性和公平性。 在评分过程中，需特别留意学生答案中的创新性和独特性，合理评估其与参考答案的差异。 对于疑似AI生成的答案，需提供充分的理由和依据，避免误判。  ### 优化要点： 1. **结构化**：通过明确的层次和编号，确保任务要求和评分规则清晰易懂。 2. **细化评分规则**：增加了对主观题和客观题的评分细节描述，确保批改时有明确的标准。 3. **溯源标记的详细说明**：对溯源标记的使用进行了详细解释，确保批改时的引用有据可查。 4. **AI检测和凝练要求**：进一步明确了AI检测的条件和学生观点凝练的要求，确保任务执行的准确性。 5. **JSON格式说明**：提供了更清晰的JSON示例，确保输出格式的正确性。';
                                                          safeSetState(() {
                                                            _model.textController2
                                                                    ?.text =
                                                                FFAppState()
                                                                    .optimisedPromptFromAI;
                                                            _model.textController2
                                                                    ?.selection =
                                                                TextSelection.collapsed(
                                                                    offset: _model
                                                                        .textController2!
                                                                        .text
                                                                        .length);
                                                          });

                                                          safeSetState(() {});
                                                        },
                                                        text: ' AI优化',
                                                        icon: FaIcon(
                                                          FontAwesomeIcons
                                                              .airbnb,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          size: 25.0,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontSize:
                                                                        20.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                          elevation: 0.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller:
                                                      _model.textController1,
                                                  focusNode: _model
                                                      .textFieldFocusNode1,
                                                  autofocus: true,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'TextField',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  textAlign: TextAlign.start,
                                                  maxLines: null,
                                                  minLines: 35,
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  validator: _model
                                                      .textController1Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 322.0,
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  curve: Curves.easeInOut,
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 12.0, 8.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 4.0),
                                                    child: Text(
                                                      '推理结果',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleLarge
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            color: Color(
                                                                0xFF1B1D27),
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller:
                                                      _model.textController2,
                                                  focusNode: _model
                                                      .textFieldFocusNode2,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.textController2',
                                                    Duration(
                                                        milliseconds: 2000),
                                                    () => safeSetState(() {}),
                                                  ),
                                                  onFieldSubmitted: (_) async {
                                                    safeSetState(() {
                                                      _model.textController2
                                                              ?.text =
                                                          FFAppState()
                                                              .optimisedPromptFromAI;
                                                      _model.textController2
                                                              ?.selection =
                                                          TextSelection.collapsed(
                                                              offset: _model
                                                                  .textController2!
                                                                  .text
                                                                  .length);
                                                    });
                                                  },
                                                  autofocus: true,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'TextField',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  textAlign: TextAlign.start,
                                                  maxLines: null,
                                                  minLines: 35,
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  validator: _model
                                                      .textController2Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            FFAppState().ifPreviewPrompt = false;
                            safeSetState(() {});
                          },
                          text: '取消',
                          options: FFButtonOptions(
                            padding: EdgeInsets.all(24.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          FFAppState().ifPreviewPrompt = false;
                          FFAppState().optimisedPromptFromAI =
                              _model.textController2.text;
                          safeSetState(() {});
                        },
                        text: '保存',
                        options: FFButtonOptions(
                          padding: EdgeInsets.all(24.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 1.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
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
