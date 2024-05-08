import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:list_app/ui/router/branches/branch_type.dart';
import 'package:list_app/ui/router/utils/route_path_name.dart';

const notificationBranch = TypedStatefulShellBranch<NotificationBranch>(
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute(
      path: '/${RoutePathName.notification}',
    ),
  ],
);

final GlobalKey<NavigatorState> _notificationNavigatorKey =
    GlobalKey<NavigatorState>();

class NotificationBranch extends StatefulShellBranchData {
  const NotificationBranch();

  static final GlobalKey<NavigatorState> $navigatorKey =
      _notificationNavigatorKey;
}

class NotificationRoute extends GoRouteData {
  const NotificationRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              BranchType.notification.label,
            )
          ]),
        ),
      );
}
