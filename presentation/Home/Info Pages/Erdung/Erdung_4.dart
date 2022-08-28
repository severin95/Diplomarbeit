import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_bildschirm/application/auth/authbloc/auth_bloc.dart';
import 'package:login_bildschirm/application/auth/signupform/signupform_bloc.dart';
import 'package:login_bildschirm/core/Failures/auth_failures.dart';
import 'package:login_bildschirm/presentation/routes/router.gr.dart';
import 'package:login_bildschirm/presentation/signup/Widgets/Knopf.dart';

class Erdung_4 extends StatelessWidget {
  const Erdung_4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(listener: (context, state) {
          if (state is AuthStateUnauthenticated) {
            AutoRouter.of(context).push(const SignUpPageRoute());
          }
        }),
      ],
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              BlocProvider.of<AuthBloc>(context).add(SignOutPressedEvent());
            },
            icon: const Icon(Icons.exit_to_app),
          ),
          title: const Center(child: Text("Blitz")),
        ),
        body: const Center(child: Placeholder()),
      ),
    );
  }
}
