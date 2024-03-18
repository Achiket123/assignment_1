import 'package:assignment_1/cores/constants/colors.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final void Function() onPressed;
  const LoginButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 190,
        decoration: BoxDecoration(
            gradient: AppPalete.elevatedLoginButton,
            borderRadius: BorderRadius.circular(60)),
        child: ElevatedButton(
          onPressed: onPressed,
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(AppPalete.transparent),
              shadowColor: MaterialStatePropertyAll(AppPalete.transparent)),
          child: const Text(
            'Login',
            style: TextStyle(color: AppPalete.white, fontSize: 16),
          ),
        ));
  }
}

class SignUp extends StatelessWidget {
  final void Function() onPressed;
  const SignUp({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 190,
        decoration: BoxDecoration(
            border: Border.all(color: AppPalete.white),
            borderRadius: BorderRadius.circular(60)),
        child: ElevatedButton(
          onPressed: onPressed,
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(AppPalete.transparent),
              shadowColor: MaterialStatePropertyAll(AppPalete.transparent)),
          child: const Text(
            'Signup',
            style: TextStyle(color: AppPalete.white, fontSize: 16),
          ),
        ));
  }
}
