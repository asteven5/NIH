import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var barcodeValue = '';
  // Stores action output result for [Backend Call - API (ParseUID)] action in Button widget.
  ApiCallResponse? apiResultzfk;
  // Stores action output result for [Backend Call - API (Device Lookup)] action in Button widget.
  ApiCallResponse? device;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
