import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_bildschirm/application/auth/signupform/signupform_bloc.dart';
import 'package:login_bildschirm/injection.dart';
import 'package:login_bildschirm/presentation/signup/Widgets/signup_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
          create: (context) => sl<SignupformBloc>(), child: const SignUpForm()),
    );
  }
}
