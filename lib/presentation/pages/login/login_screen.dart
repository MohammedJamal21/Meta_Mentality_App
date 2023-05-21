import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Log in',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Welcome back! Enter your details',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const MetaTextField(),
              const SizedBox(
                height: 10,
              ),
              const MetaTextField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.zero,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Forgot Password?'),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.lightGreen),
                    // splashFactory: InkRipple.splashFactory,
                    // overlayColor: MaterialStateProperty.resolveWith(
                    //   (states) {
                    //     return states.contains(MaterialState.pressed)
                    //         ? Colors.red
                    //         : null;
                    //   },
                    // ),
                    // backgroundColor: const MaterialStatePropertyAll(
                    //   Color(0xff303742),
                    // ),
                    // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    //   RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(8.0),
                    //     side: const BorderSide(color: Colors.transparent),
                    //   ),
                    // ),
                    // elevation: const MaterialStatePropertyAll(
                    //   0,
                    // ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MetaTextField extends StatefulWidget {
  const MetaTextField({Key? key}) : super(key: key);

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
          labelText: 'Email Address',
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
