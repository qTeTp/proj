import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email_Address widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for PWAddress widget.
  TextEditingController? pWAddressController;
  late bool pWAddressVisibility;
  String? Function(BuildContext, String?)? pWAddressControllerValidator;
  // State field(s) for PWCAddress widget.
  TextEditingController? pWCAddressController;
  late bool pWCAddressVisibility;
  String? Function(BuildContext, String?)? pWCAddressControllerValidator;
  // State field(s) for PNAddress_01 widget.
  TextEditingController? pNAddress01Controller;
  final pNAddress01Mask = MaskTextInputFormatter(mask: '###-####-####');
  String? Function(BuildContext, String?)? pNAddress01ControllerValidator;
  // State field(s) for Affiliation widget.
  String? affiliationValue;
  FormFieldController<String>? affiliationValueController;
  // State field(s) for Consent_privacy_Checkbox widget.
  bool? consentPrivacyCheckboxValue;
  // State field(s) for NameAddress widget.
  TextEditingController? nameAddressController;
  String? Function(BuildContext, String?)? nameAddressControllerValidator;
  // State field(s) for resident_registration_number_Address widget.
  TextEditingController? residentRegistrationNumberAddressController;
  final residentRegistrationNumberAddressMask =
      MaskTextInputFormatter(mask: '######-#######');
  String? Function(BuildContext, String?)?
      residentRegistrationNumberAddressControllerValidator;
  // State field(s) for address_Address widget.
  TextEditingController? addressAddressController;
  String? Function(BuildContext, String?)? addressAddressControllerValidator;
  // State field(s) for detaile_address_Address widget.
  TextEditingController? detaileAddressAddressController;
  String? Function(BuildContext, String?)?
      detaileAddressAddressControllerValidator;
  // State field(s) for Signature widget.
  late SignatureController signatureController;
  // State field(s) for IDAddress widget.
  TextEditingController? iDAddressController1;
  String? Function(BuildContext, String?)? iDAddressController1Validator;
  // State field(s) for IDAddress widget.
  TextEditingController? iDAddressController2;
  String? Function(BuildContext, String?)? iDAddressController2Validator;
  String uploadedSignatureUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    pWAddressVisibility = false;
    pWCAddressVisibility = false;
    signatureController = SignatureController(
      penStrokeWidth: 2.0,
      penColor: FlutterFlowTheme.of(context).primaryText,
      exportBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
    );
  }

  void dispose() {
    emailAddressController?.dispose();
    pWAddressController?.dispose();
    pWCAddressController?.dispose();
    pNAddress01Controller?.dispose();
    nameAddressController?.dispose();
    residentRegistrationNumberAddressController?.dispose();
    addressAddressController?.dispose();
    detaileAddressAddressController?.dispose();
    signatureController.dispose();
    iDAddressController1?.dispose();
    iDAddressController2?.dispose();
  }

  /// Additional helper methods are added here.

}
