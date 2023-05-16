import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_alarm_model.dart';
export 'all_alarm_model.dart';

class AllAlarmWidget extends StatefulWidget {
  const AllAlarmWidget({
    Key? key,
    bool? asdfsadf,
  })  : this.asdfsadf = asdfsadf ?? false,
        super(key: key);

  final bool asdfsadf;

  @override
  _AllAlarmWidgetState createState() => _AllAlarmWidgetState();
}

class _AllAlarmWidgetState extends State<AllAlarmWidget> {
  late AllAlarmModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllAlarmModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 70.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: 150.0,
                        height: 100.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 5.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 60.0,
                                icon: Icon(
                                  Icons.keyboard_arrow_left,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 30.0,
                                ),
                                onPressed: () async {
                                  context.safePop();
                                },
                              ),
                            ),
                            Text(
                              '알림',
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 30.0,
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
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 80.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).accent1,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 20.0,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 5.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 20.0,
                                            decoration: BoxDecoration(),
                                            child: Text(
                                              '23/05/01',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Container(
                                            width: 70.0,
                                            height: 20.0,
                                            decoration: BoxDecoration(),
                                            child: Text(
                                              '13 : 01',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 20.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Icon(
                                          Icons.change_history,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).accent3,
                              ),
                              Container(
                                width: double.infinity,
                                height: 20.0,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 140.0,
                                      height: 20.0,
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        'OOO 프로그램',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 100.0,
                                      child: VerticalDivider(
                                        thickness: 1.0,
                                        color: FlutterFlowTheme.of(context)
                                            .accent3,
                                      ),
                                    ),
                                    Container(
                                      width: 80.0,
                                      height: 20.0,
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        '23/04/30',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 100.0,
                                      child: VerticalDivider(
                                        thickness: 1.0,
                                        color: FlutterFlowTheme.of(context)
                                            .accent3,
                                      ),
                                    ),
                                    Container(
                                      width: 80.0,
                                      height: 20.0,
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        '안전관리사',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 80.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 20.0,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 5.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 70.0,
                                              height: 20.0,
                                              decoration: BoxDecoration(),
                                              child: Text(
                                                '23/03/29',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                            Container(
                                              width: 70.0,
                                              height: 20.0,
                                              decoration: BoxDecoration(),
                                              child: Text(
                                                '14 : 00',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 20.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Icon(
                                            Icons.check,
                                            color: FlutterFlowTheme.of(context)
                                                .success,
                                            size: 20.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).accent3,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 20.0,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 140.0,
                                        height: 20.0,
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          'OOO 프로그램',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        child: VerticalDivider(
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .accent3,
                                        ),
                                      ),
                                      Container(
                                        width: 80.0,
                                        height: 20.0,
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          '23/03/27',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        child: VerticalDivider(
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .accent3,
                                        ),
                                      ),
                                      Container(
                                        width: 80.0,
                                        height: 20.0,
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          '주강사',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          '관리자 - 서류 제출, 서류 수정',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                        Text(
                          '강사 - 캠프 등록, 캠프 일정 수정, 수정 요청',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
