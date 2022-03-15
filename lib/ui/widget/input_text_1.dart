import 'package:flutter/material.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';

class InputText extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final String? label;

  InputText({
    Key? key,
    required this.controller,
    this.hint,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DP dp = DP(context);
    return TextFormField(
      controller: controller,
      maxLines: 3,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        labelStyle: TextStyle(
          fontSize: dp.size(27),
          color: ColorsApp.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(dp.size(18)),
          borderSide: BorderSide(
            color: Colors.grey.shade400,
            width: 0.3,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(dp.size(18)),
          borderSide: BorderSide(
            color: Colors.grey.shade700,
            width: 0.3,
          ),
        ),
      ),
      style: TextStyle(
        fontSize: dp.size(27),
        color: Colors.black87,
      ),
      // validator: validator,
    );
  }
}
