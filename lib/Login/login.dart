import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tappi/themes/colors.dart';

class StepIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const StepIndicator({super.key, required this.currentStep, required this.totalSteps});

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: SizedBox(
        width: screenWidth * 0.3,
        child: Row(
          children: List.generate(totalSteps, (index) {
            return Expanded(
              child: Container(
                height: screenHeight * 0.01,
                //margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: index < currentStep ? cyan : cyanDark.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: deepBlue,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               SizedBox(
                   height: screenHeight * 0.03
               ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.cyan,
                        size: 30,
                      ),
                      onPressed: () {

                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.18),
                      child: Column(
                        children: [
                          Text(
                            'STEP 1/3',
                            style: TextStyle(
                                color: darkGrey,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'inter',
                            ),
                          ),
                          SizedBox(
                              height: screenHeight * 0.01
                          ),
                          const StepIndicator(currentStep: 1, totalSteps: 3),
                        ],
                      ),
                    ),
                  ],
                ),

               SizedBox(
                  height: screenHeight * 0.06
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hi, Welcome! 👋🏻',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Dewi',
                    ),
                  ),

                  SizedBox(
                      height: screenHeight * 0.02
                  ),

                  Text(
                    'Let\'s get you connected in a tap! Sign up or Log in to explore.',
                    style: TextStyle(
                        color: lightGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'inter',
                    ),
                  ),

                   SizedBox(
                      height: screenHeight * 0.05
                  ),

                   Text(
                      "Email",
                      style: TextStyle(
                          color: white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'inter',
                      ),
                  ),

                  SizedBox(
                      height: screenHeight * 0.01
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: white,
                      hintText: 'Your email',
                      hintStyle: TextStyle(
                        color: darkGrey,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'inter',
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  SizedBox(
                      height: screenHeight * 0.02,
                  ),

                  Text(
                    "Password",
                    style: TextStyle(
                      color: white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'inter',
                    ),
                  ),

                  SizedBox(
                      height: screenHeight * 0.01
                  ),

                  TextFormField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: white,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: darkGrey,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'inter',
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon:  IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        icon: Icon(
                            _isObscure ? Icons.visibility_off : Icons.visibility,
                            color: darkGrey,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: white,
                          decoration: TextDecoration.underline,
                          decorationColor: white,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'inter',
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),

                  SizedBox(
                      height: screenHeight * 0.05
                  ),

                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [cyan, cyanDark.withOpacity(0.89)],
                      ),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        disabledForegroundColor: Colors.transparent,
                        disabledBackgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: 16,
                            color: buttonText,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'inter bold',
                          ),
                      ),
                    ),
                  ),

                  SizedBox(
                      height: screenHeight * 0.05
                  ),

                   Row(
                    children: [
                      Expanded(
                          child: Divider(
                              color: lightGrey
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                        child: Text(
                            'Or with',
                            style: TextStyle(
                              color: lightGrey,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'inter',
                              fontSize: 14,
                            )
                        ),
                      ),
                      Expanded(
                          child: Divider(
                              color: lightGrey,
                          )
                      ),
                    ],
                  ),

                  SizedBox(
                      height: screenHeight * 0.02
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                color: cyan
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                  color: white,
                                  'assets/images/facebook_logo.png',
                                  width: screenWidth * 0.05,
                                  height: screenHeight * 0.03
                              ),

                              SizedBox(width: screenWidth * 0.03),

                              Text(
                                  'Facebook',
                                  style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    fontFamily: 'inter',
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width: screenWidth * 0.05),

                      Expanded(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                color: cyan
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                color: white,
                                  'assets/images/google_logo.png',
                                  width: screenWidth * 0.05,
                                  height: screenHeight * 0.03
                              ),

                              SizedBox(width: screenWidth * 0.03),

                              Text(
                                  'Google',
                                  style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    fontFamily: 'inter',
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                      height: screenHeight * 0.02
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            color: white,
                            fontSize: 14,
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w400,
                          )
                      ),
                      TextButton(
                        child: Text(
                            'Sign up',
                            style: TextStyle(
                                color: cyan,
                              decoration: TextDecoration.underline,
                              decorationColor: cyan,
                              fontSize: 14,
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,
                            )
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
             ),
            ],
          ),
        ),
      ),
    );
  }
}
