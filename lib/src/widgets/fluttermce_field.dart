import 'package:flutter/material.dart';
import 'package:flutter_mce/src/utils/colors.dart';
import 'package:flutter_mce/src/utils/fluttermce_input_type.dart';

class FlutterMCEField extends StatelessWidget {
  final FlutterMCEInputType inputType;
  final TextEditingController controller;
  final FocusNode focusNode;

  FlutterMCEField({
    Key? key,
    required this.inputType,
    TextEditingController? controller,
    FocusNode? focusNode,
  })  : this.controller = controller ??= TextEditingController(),
        this.focusNode = focusNode ??= FocusNode(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      autofocus: true,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      cursorColor: COLOR_TEXT_SECONDARY,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixText: inputType.prefix,
        prefixStyle: inputType.textStyle,
        isDense: true,
        contentPadding: inputType.padding,
      ),
      style: inputType.textStyle,
    );
  }
}
