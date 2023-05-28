import 'package:flutter/material.dart';

class MetaButton extends StatelessWidget {
  final String data;
  final VoidCallback onPressed;

  const MetaButton({
    Key? key,
    required this.data,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color(0xFF303742),
          ),
          overlayColor:
              MaterialStateProperty.all<Color>(const Color(0xFF4282ED)),
          elevation: const MaterialStatePropertyAll(
            0,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(color: Colors.transparent),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          data,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
