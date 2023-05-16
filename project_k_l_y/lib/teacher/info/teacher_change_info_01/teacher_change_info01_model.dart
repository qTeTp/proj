import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TeacherChangeInfo01Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email_Address widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for PW_Address widget.
  TextEditingController? pWAddressController;
  late bool pWAddressVisibility;
  String? Function(BuildContext, String?)? pWAddressControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    pWAddressVisibility = false;
  }

  void dispose() {
    emailAddressController?.dispose();
    pWAddressController?.dispose();
  }

  /// Additional helper methods are added here.

}
