// ignore_for_file: avoid_print

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_bildschirm/application/auth/signupform/signupform_bloc.dart';
import 'package:login_bildschirm/core/Failures/auth_failures.dart';
import 'package:login_bildschirm/presentation/routes/router.gr.dart';
import 'package:login_bildschirm/presentation/signup/Widgets/Knopf.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String _email;
    late String _password;
    final GlobalKey<FormState> formkey = GlobalKey<FormState>();
    String? validateEmail(String? input) {
      const emailRegex =
          r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

      if (input == null || input.isEmpty) {
        return "Bitte Email eingeben";
      } else if (RegExp(emailRegex).hasMatch(input)) {
        _email = input;
        return null;
      } else {
        return "ungültiges Email Format";
      }
    }

    String? validatePassword(String? input) {
      if (input == null || input.isEmpty) {
        return "Bitte Passwort eingeben";
      } else if (input.length >= 6) {
        _password = input;
        return null;
      } else {
        return "Passwort zu kurz!";
      }
    }

    String mapFailureMessage(AuthFailure failure) {
      switch (failure.runtimeType) {
        case ServerFailure:
          return "etwas ist schief gelaufen";
        case EmailAlreadyInUseFailure:
          return "Email wird bereits genutzt";
        case InvalidEmailAndPasswordCombinationFailture:
          return "ungültige Email und Passwort kombination";
        default:
          return "etwas ist schief gelaufen";
      }
    }

    final themeData = Theme.of(context);

    return BlocConsumer<SignupformBloc, SignupformState>(
      listenWhen: (p, c) =>
          p.authFailureOrSuccessOption != c.authFailureOrSuccessOption,
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () => {},
            (eitherFailureOrSuccess) => eitherFailureOrSuccess.fold((failure) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(
                      mapFailureMessage(failure),
                      style: themeData.textTheme.bodyText1,
                    ),
                  ));
                },
                    (_) => {
                          AutoRouter.of(context).replace(const HomepageRoute())
                        }));
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showValidationMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          key: formkey,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              const SizedBox(
                height: 80,
              ),
              Text("Willkommen",
                  style: themeData.textTheme.headline1!.copyWith(
                      fontSize: 50,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 4)),
              const SizedBox(
                height: 20,
              ),
              Text("Bitte Einloggen",
                  style: themeData.textTheme.headline1!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 4)),
              const SizedBox(
                height: 80,
              ),
              TextFormField(
                cursorColor: Colors.white,
                decoration: const InputDecoration(labelText: "Email"),
                validator: validateEmail,
              ),
              const SizedBox(
                height: 70,
              ),
              TextFormField(
                cursorColor: Colors.white,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Passwort"),
                validator: validatePassword,
              ),
              const SizedBox(
                height: 50,
              ),
              Knopf(
                buttonText: "Einloggen",
                callback: () {
                  if (formkey.currentState!.validate()) {
                    BlocProvider.of<SignupformBloc>(context).add(
                        SigninWithEmailAndPasswortPressed(
                            email: _email, password: _password));
                  } else {
                    BlocProvider.of<SignupformBloc>(context).add(
                        SigninWithEmailAndPasswortPressed(
                            email: null, password: null));

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                        "ungültige eingabe",
                        style: themeData.textTheme.bodyText1,
                      ),
                    ));
                  }
                },
              ),
              const SizedBox(
                height: 100,
              ),
              Knopf(
                buttonText: "Regristrieren",
                callback: () {
                  if (formkey.currentState!.validate()) {
                    BlocProvider.of<SignupformBloc>(context).add(
                        RegisterWithEmailAndPasswortPressed(
                            email: _email, password: _password));
                  } else {
                    BlocProvider.of<SignupformBloc>(context).add(
                        RegisterWithEmailAndPasswortPressed(
                            email: null, password: null));

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                        "ungültige eingabe",
                        style: themeData.textTheme.bodyText1,
                      ),
                    ));
                  }
                },
              ),
              if (state.isSubmitting) ...[
                const SizedBox(
                  height: 10,
                ),
                LinearProgressIndicator(
                  color: themeData.colorScheme.secondary,
                )
              ]
            ],
          ),
        );
      },
    );
  }
}
