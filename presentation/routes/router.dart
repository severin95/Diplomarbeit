import 'package:auto_route/annotations.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Aussenbeleuchtung/Aussebleuchutung_1.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Aussenbeleuchtung/Aussenbeleuchtung_5.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Aussenbeleuchtung/Aussenbeleuchtung_2.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Aussenbeleuchtung/Aussenbeleuchtung_3.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Aussenbeleuchtung/Aussenbeleuchtung_4.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Erdung/Erdung_1.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Erdung/Erdung_2.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Erdung/Erdung_3.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Erdung/Erdung_4.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Erdung/Erdung_5.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Firalux.dart';
import 'package:login_bildschirm/presentation/Home/Homepage/homepageErscheinung.dart';
import 'package:login_bildschirm/presentation/signup/signup_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SignUpPage, initial: true),
  AutoRoute(page: Homepage, initial: false),
  AutoRoute(page: Firalux, initial: false),
  AutoRoute(page: Aussenbeleuchtung_1, initial: false),
  AutoRoute(page: Aussenbeleuchtung_2, initial: false),
  AutoRoute(page: Aussenbeleuchtung_3, initial: false),
  AutoRoute(page: Aussenbeleuchtung_4, initial: false),
  AutoRoute(page: Aussenbeleuchtung_5, initial: false),
  AutoRoute(page: Erdung_1, initial: false),
  AutoRoute(page: Erdung_2, initial: false),
  AutoRoute(page: Erdung_3, initial: false),
  AutoRoute(page: Erdung_4, initial: false),
  AutoRoute(page: Erdung_5, initial: false),
])
class $AppRouter {}
