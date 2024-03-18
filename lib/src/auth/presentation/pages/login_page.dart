import 'dart:ui';
import 'package:assignment_1/cores/constants/colors.dart';
import 'package:assignment_1/src/auth/presentation/widgets/form_fields.dart';
import 'package:assignment_1/src/auth/presentation/widgets/button.dart';
import 'package:assignment_1/src/coffee/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    super.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: _loginBackground(),
        child: Container(
          decoration: const BoxDecoration(gradient: AppPalete.loginGradient),
          child: Container(
            padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
            margin: EdgeInsets.only(bottom: 50, top: 24),
            child: Form(
              key: _formKey,
              child: _loginPageContentBlock(
                [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    'assets/logo.png',
                    scale: 1.25,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Swift',
                    style: TextStyle(
                        height: 0.5,
                        fontSize: 64,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                        color: AppPalete.white),
                  ),
                  const Text(
                    'Cafe',
                    style: TextStyle(
                        height: 2,
                        fontSize: 40,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                        color: AppPalete.white),
                  ),
                  Text(
                    '"Latte but never late"',
                    style: TextStyle(
                        background: Paint()
                          ..color = const Color.fromARGB(80, 101, 100, 100),
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(143, 171, 171, 171)),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormFieldMod(
                    textEditingController: _userNameController,
                    hintText: 'User Name',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormFieldMod(
                    textEditingController: _passwordController,
                    isPassword: true,
                    hintText: 'Password',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  LoginButton(onPressed: _logIn),
                  const SizedBox(
                    height: 20,
                  ),
                  SignUp(
                    onPressed: _signUp,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: _privacyPolicy,
                    child: const Text(
                      'Privacy Policy',
                      style: TextStyle(color: AppPalete.white),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

// Function for The central box
  ClipRRect _loginPageContentBlock(List<Widget> children) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          decoration: BoxDecoration(
              color: AppPalete.lowOpacityWhite,
              border: Border.all(color: AppPalete.lowOpacityWhite)),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: children),
          ),
        ),
      ),
    );
  }

// Background og Login Page
  BoxDecoration _loginBackground() {
    return const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          scale: 1,
          image: AssetImage(
            'assets/cocoa-1.png',
          ),
        ),
        gradient: AppPalete.loginGradient);
  }

  void _privacyPolicy() {}
  void _signUp() {}
  void _logIn() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushAndRemoveUntil(
          context, const Homescreen().route(), (route) => false);
    }
  }
}
