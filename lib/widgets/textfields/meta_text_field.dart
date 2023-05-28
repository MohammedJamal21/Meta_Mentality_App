import 'package:flutter/material.dart';

class MetaTextField extends StatefulWidget {
  final String labelText;

  const MetaTextField({Key? key, required this.labelText}) : super(key: key);

  @override
  State<MetaTextField> createState() => _MetaTextFieldState();
}

class _MetaTextFieldState extends State<MetaTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          labelText: widget.labelText,
          labelStyle: const TextStyle(
            color: Color(0xff818A99),
            fontSize: 16,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color(0xffCAD1DB),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color(0xff4282ED),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
