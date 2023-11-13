import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/presentaion/pages/DeletValue.dart';
import 'package:untitled1/presentaion/pages/EditValue.dart';
import 'package:untitled1/presentaion/pages/ShowValue.dart';



final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

GoRouter buildRouter(BuildContext context) {
  return GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: rootNavigatorKey,
    initialLocation: ShowValue.route.path,
    routes: _routes,
  );
}

final _normalRoutes = <RouteBase>[
  ShowValue.route,
  EditValue.route,
  DeleteValue.route,

];



final _routes = [..._normalRoutes];
