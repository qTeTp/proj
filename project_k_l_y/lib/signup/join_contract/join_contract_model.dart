import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';

class JoinContractModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Signature widget.
  late SignatureController signatureController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    signatureController = SignatureController(
      penStrokeWidth: 2.0,
      penColor: Colors.black,
      exportBackgroundColor: FlutterFlowTheme.of(context).primaryText,
    );
  }

  void dispose() {
    textController?.dispose();
    signatureController.dispose();
  }

  /// Additional helper methods are added here.

}
