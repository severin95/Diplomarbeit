// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

import '../Home/Homepage/homepageErscheinung.dart' as _i2;
import '../Home/Info%20Pages/Aussenbeleuchtung/Aussebleuchutung_1.dart' as _i4;
import '../Home/Info%20Pages/Aussenbeleuchtung/Aussenbeleuchtung_2.dart' as _i5;
import '../Home/Info%20Pages/Aussenbeleuchtung/Aussenbeleuchtung_3.dart' as _i6;
import '../Home/Info%20Pages/Aussenbeleuchtung/Aussenbeleuchtung_4.dart' as _i7;
import '../Home/Info%20Pages/Aussenbeleuchtung/Aussenbeleuchtung_5.dart' as _i8;
import '../Home/Info%20Pages/Erdung/Erdung_1.dart' as _i9;
import '../Home/Info%20Pages/Erdung/Erdung_2.dart' as _i10;
import '../Home/Info%20Pages/Erdung/Erdung_3.dart' as _i11;
import '../Home/Info%20Pages/Erdung/Erdung_4.dart' as _i12;
import '../Home/Info%20Pages/Erdung/Erdung_5.dart' as _i13;
import '../Home/Info%20Pages/Firalux.dart' as _i3;
import '../signup/signup_page.dart' as _i1;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    SignUpPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignUpPage());
    },
    HomepageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Homepage());
    },
    FiraluxRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Firalux());
    },
    Aussenbeleuchtung_1Route.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.Aussenbeleuchtung_1());
    },
    Aussenbeleuchtung_2Route.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.Aussenbeleuchtung_2());
    },
    Aussenbeleuchtung_3Route.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.Aussenbeleuchtung_3());
    },
    Aussenbeleuchtung_4Route.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.Aussenbeleuchtung_4());
    },
    Aussenbeleuchtung_5Route.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.Aussenbeleuchtung_5());
    },
    Erdung_1Route.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.Erdung_1());
    },
    Erdung_2Route.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.Erdung_2());
    },
    Erdung_3Route.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.Erdung_3());
    },
    Erdung_4Route.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.Erdung_4());
    },
    Erdung_5Route.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.Erdung_5());
    }
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(SignUpPageRoute.name, path: '/'),
        _i14.RouteConfig(HomepageRoute.name, path: '/Homepage'),
        _i14.RouteConfig(FiraluxRoute.name, path: '/Firalux'),
        _i14.RouteConfig(Aussenbeleuchtung_1Route.name,
            path: '/Aussenbeleuchtung_1'),
        _i14.RouteConfig(Aussenbeleuchtung_2Route.name,
            path: '/Aussenbeleuchtung_2'),
        _i14.RouteConfig(Aussenbeleuchtung_3Route.name,
            path: '/Aussenbeleuchtung_3'),
        _i14.RouteConfig(Aussenbeleuchtung_4Route.name,
            path: '/Aussenbeleuchtung_4'),
        _i14.RouteConfig(Aussenbeleuchtung_5Route.name,
            path: '/Aussenbeleuchtung_5'),
        _i14.RouteConfig(Erdung_1Route.name, path: '/Erdung_1'),
        _i14.RouteConfig(Erdung_2Route.name, path: '/Erdung_2'),
        _i14.RouteConfig(Erdung_3Route.name, path: '/Erdung_3'),
        _i14.RouteConfig(Erdung_4Route.name, path: '/Erdung_4'),
        _i14.RouteConfig(Erdung_5Route.name, path: '/Erdung_5')
      ];
}

/// generated route for
/// [_i1.SignUpPage]
class SignUpPageRoute extends _i14.PageRouteInfo<void> {
  const SignUpPageRoute() : super(SignUpPageRoute.name, path: '/');

  static const String name = 'SignUpPageRoute';
}

/// generated route for
/// [_i2.Homepage]
class HomepageRoute extends _i14.PageRouteInfo<void> {
  const HomepageRoute() : super(HomepageRoute.name, path: '/Homepage');

  static const String name = 'HomepageRoute';
}

/// generated route for
/// [_i3.Firalux]
class FiraluxRoute extends _i14.PageRouteInfo<void> {
  const FiraluxRoute() : super(FiraluxRoute.name, path: '/Firalux');

  static const String name = 'FiraluxRoute';
}

/// generated route for
/// [_i4.Aussenbeleuchtung_1]
class Aussenbeleuchtung_1Route extends _i14.PageRouteInfo<void> {
  const Aussenbeleuchtung_1Route()
      : super(Aussenbeleuchtung_1Route.name, path: '/Aussenbeleuchtung_1');

  static const String name = 'Aussenbeleuchtung_1Route';
}

/// generated route for
/// [_i5.Aussenbeleuchtung_2]
class Aussenbeleuchtung_2Route extends _i14.PageRouteInfo<void> {
  const Aussenbeleuchtung_2Route()
      : super(Aussenbeleuchtung_2Route.name, path: '/Aussenbeleuchtung_2');

  static const String name = 'Aussenbeleuchtung_2Route';
}

/// generated route for
/// [_i6.Aussenbeleuchtung_3]
class Aussenbeleuchtung_3Route extends _i14.PageRouteInfo<void> {
  const Aussenbeleuchtung_3Route()
      : super(Aussenbeleuchtung_3Route.name, path: '/Aussenbeleuchtung_3');

  static const String name = 'Aussenbeleuchtung_3Route';
}

/// generated route for
/// [_i7.Aussenbeleuchtung_4]
class Aussenbeleuchtung_4Route extends _i14.PageRouteInfo<void> {
  const Aussenbeleuchtung_4Route()
      : super(Aussenbeleuchtung_4Route.name, path: '/Aussenbeleuchtung_4');

  static const String name = 'Aussenbeleuchtung_4Route';
}

/// generated route for
/// [_i8.Aussenbeleuchtung_5]
class Aussenbeleuchtung_5Route extends _i14.PageRouteInfo<void> {
  const Aussenbeleuchtung_5Route()
      : super(Aussenbeleuchtung_5Route.name, path: '/Aussenbeleuchtung_5');

  static const String name = 'Aussenbeleuchtung_5Route';
}

/// generated route for
/// [_i9.Erdung_1]
class Erdung_1Route extends _i14.PageRouteInfo<void> {
  const Erdung_1Route() : super(Erdung_1Route.name, path: '/Erdung_1');

  static const String name = 'Erdung_1Route';
}

/// generated route for
/// [_i10.Erdung_2]
class Erdung_2Route extends _i14.PageRouteInfo<void> {
  const Erdung_2Route() : super(Erdung_2Route.name, path: '/Erdung_2');

  static const String name = 'Erdung_2Route';
}

/// generated route for
/// [_i11.Erdung_3]
class Erdung_3Route extends _i14.PageRouteInfo<void> {
  const Erdung_3Route() : super(Erdung_3Route.name, path: '/Erdung_3');

  static const String name = 'Erdung_3Route';
}

/// generated route for
/// [_i12.Erdung_4]
class Erdung_4Route extends _i14.PageRouteInfo<void> {
  const Erdung_4Route() : super(Erdung_4Route.name, path: '/Erdung_4');

  static const String name = 'Erdung_4Route';
}

/// generated route for
/// [_i13.Erdung_5]
class Erdung_5Route extends _i14.PageRouteInfo<void> {
  const Erdung_5Route() : super(Erdung_5Route.name, path: '/Erdung_5');

  static const String name = 'Erdung_5Route';
}
