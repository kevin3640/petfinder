// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../ui/app.view.dart';
import '../ui/auth/auth.view.dart';

class Routes {
  static const String appView = '/';
  static const String signUpView = '/sign-up-view';
  static const all = <String>{
    appView,
    signUpView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.appView, page: AppView),
    RouteDef(Routes.signUpView, page: SignUpView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    AppView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AppView(),
        settings: data,
      );
    },
    SignUpView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignUpView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushAppView() => push<dynamic>(Routes.appView);

  Future<dynamic> pushSignUpView() => push<dynamic>(Routes.signUpView);
}