import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminLoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for AdminCode widget.
  TextEditingController? adminCodeController;
  String? Function(BuildContext, String?)? adminCodeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    adminCodeController?.dispose();
  }

  /// Additional helper methods are added here.

}
