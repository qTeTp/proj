import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TeacherChangeInfo02Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email_Address widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password_Address widget.
  TextEditingController? passwordAddressController;
  String? Function(BuildContext, String?)? passwordAddressControllerValidator;
  // State field(s) for PN_Address widget.
  TextEditingController? pNAddressController;
  String? Function(BuildContext, String?)? pNAddressControllerValidator;
  // State field(s) for affiliation_DropDown widget.
  String? affiliationDropDownValue;
  FormFieldController<String>? affiliationDropDownValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    emailAddressController?.dispose();
    passwordAddressController?.dispose();
    pNAddressController?.dispose();
  }

  /// Additional helper methods are added here.

}
