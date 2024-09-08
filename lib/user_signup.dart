import 'package:flutter/material.dart';
import 'package:spotify_clone/constant/color.dart';
import 'package:spotify_clone/customWidget/custom_outlined_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class EmailValidator {
  bool _isValid = false;
  final RegExpForGmail = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

  bool validate(String email) {
    // Basic email validation logic
    _isValid = RegExpForGmail.hasMatch(email);
    return _isValid;
  }

  bool isValid() {
    return _isValid;

  }
}

class _SignUpPageState extends State<SignUpPage> {

  EmailValidator _emailValidator = EmailValidator();
  TextEditingController _emailcontroller = TextEditingController();
  String hintText = 'Don\'t forget to enter your email address.';


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:  const Color(0xff1a1a1a),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35,horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap:(){
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                      Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const SizedBox(width: 110,),
                const Text(
                    'Create account',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17

                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('What\'s your email',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text('address?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Form(
                  child: TextFormField(
                    controller: _emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    style:  TextStyle(
                      color: _emailValidator.isValid() ? Colors.white : Colors.red,
                    ),
                    onChanged: (value){
                      setState(() {
                        _emailValidator.validate(value);
                      });
                    },

                    decoration: InputDecoration(
                      filled:true,
                      fillColor: _emailcontroller.text.isEmpty
                          ? const Color(0xff484646) // Default color when email is empty
                          : _emailValidator.isValid()
                          ? const Color(0xff484646) // Color when email is valid and not empty
                          : Colors.white, // Color when email is not valid and not empty
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                 Text(
                   _emailcontroller.text.isEmpty
                       ? 'Don\'t forget to enter your email address.'
                       : (_emailValidator.isValid()
                       ? 'You need to confirm this email later.'
                       : 'This email is invalid. Make sure it\'s written as example@email.com'),
                  style:  const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: CustomOutlinedButton(
                     onPressed: (){
                     },
                      childWidget: const Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      height: 45,
                      width: 100,
                      backgroundColor: _emailcontroller.text.isEmpty ? inActiveButtonColor : white,
                      borderSideColor: transparent,
                      borderRadius: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

