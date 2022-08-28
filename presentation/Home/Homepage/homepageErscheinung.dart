import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_bildschirm/presentation/Home/Homepage/Vertikal/WidgetVertikalAussenbeleuchtung.dart';
import 'package:login_bildschirm/presentation/Home/Homepage/Vertikal/WidgetVertikalErdung.dart';
import 'package:login_bildschirm/presentation/signup/Widgets/TestKnopf.dart';

import '../../../application/auth/authbloc/auth_bloc.dart';
import '../../routes/router.gr.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

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
          title: const Center(child: Text("Hompage")),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Beleuchtung",
              style: Theme.of(context).textTheme.headline1,
            ),
            const WidgetVertikalAussenbeleuchtung(),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Erdung",
              style: Theme.of(context).textTheme.headline1,
            ),
            const WidgetVertikalErdung(),
          ],
        ),
      ),
    );
  }
}
