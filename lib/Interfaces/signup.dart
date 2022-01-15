import 'package:flutter/material.dart';
import '../Widgets/tapped.dart';

class SignUp extends StatelessWidget {
  final TextEditingController myController = TextEditingController();
  SignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 35),
              child: SizedBox(
                width: 328,
                height: 24,
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35, top: 10, bottom: 80),
              child: SizedBox(
                width: 328,
                height: 24,
                child: Text(
                  "Complete this step for best adjustment",
                  style: TextStyle(
                    fontFamily: "Inter",
                    color: Colors.blueGrey,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Input(field: 'Name'),
            Input(field: 'Email'),
            Input(field: 'Password'),
            Input(field: 'Phone Number'),
            LoginButton(name: "SIGN UP", c: Color(0xffbd2005), role: '/signup'),
            TappedText(
                text: "Already have An Account ? ",
                tapped: "Sign In Here",
                role: '/signin')
          ],
        ),
      ),
    );
  }
}
